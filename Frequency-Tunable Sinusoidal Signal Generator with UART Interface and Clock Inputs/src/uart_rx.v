`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2023 14:06:22
// Design Name: 
// Module Name: uart_rx
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////////////////
// Rescatado de https://nandland.com/uart-serial-port-module/
//////////////////////////////////////////////////////////////////////

// CLKS_PER_BIT = (Frequencia i_Clock)/(Frecuencia de UART)
// Ejemplo: 100 MHz Clock, 9600 baud UART
// (100 000 000)/(9600) = 10416 

module uart_rx 
  (
   input        i_Clock,
   input        i_Rx_Serial,
   output       o_Rx_DV,
   output [7:0] o_Rx_Byte
   );
   
  parameter CLKS_PER_BIT   = 10416;
  parameter s_IDLE         = 3'b000;  // A continuación cada uno de los estados asociados a la
  parameter s_RX_START_BIT = 3'b001;  // FSM que permite la comunicación UART. IDLE es el estado
  parameter s_RX_DATA_BITS = 3'b010;  // en el que se espera recibir un bit de inicio. 
  parameter s_RX_STOP_BIT  = 3'b011;  // START es el estado en en el cual se espera que 
  parameter s_CLEANUP      = 3'b100;
   
  reg           r_Rx_Data_R = 1'b1;
  reg           r_Rx_Data   = 1'b1;
   
  reg [15:0]     r_Clock_Count = 0;
  reg [2:0]     r_Bit_Index   = 0; //8 bits total
  reg [7:0]     r_Rx_Byte     = 0;
  reg           r_Rx_DV       = 0; // Esta señal se utiliza para indicar si los datos estan disponibles para ser usado
  reg [2:0]     r_SM_Main     = 0;
   
  
  
  always @(posedge i_Clock)
    begin
      r_Rx_Data_R <= i_Rx_Serial;   // Utilizado para evitar problemas de metaestabilidad
      r_Rx_Data   <= r_Rx_Data_R;   // así, se sincroniza correctamente los bits que entran
    end                             // a la FSM
   
   
  // FSM del receptor serial
  always @(posedge i_Clock)
    begin
      case (r_SM_Main)
        s_IDLE :
                  begin
                    r_Rx_DV       <= 1'b0;    
                    r_Clock_Count <= 0;
                    r_Bit_Index   <= 0;
                     
                    if (r_Rx_Data == 1'b0)          // Se detecta el primer bit
                      r_SM_Main <= s_RX_START_BIT;
                    else
                      r_SM_Main <= s_IDLE;
                  end 
         
        // Se verifica que el bit de inicio sigue siendo 0
        s_RX_START_BIT :
                  begin
                    if (r_Clock_Count == (CLKS_PER_BIT-1)/2)
                      begin
                        if (r_Rx_Data == 1'b0)
                          begin
                            r_Clock_Count <= 0;  // Se resetea el contador, pues llegamos a la mitad
                            r_SM_Main     <= s_RX_DATA_BITS;
                          end
                        else
                          r_SM_Main <= s_IDLE;
                      end
                    else
                      begin
                        r_Clock_Count <= r_Clock_Count + 1;
                        r_SM_Main     <= s_RX_START_BIT;
                      end
                  end
                 
        // Esperamos un ciclo de CLKS_PER_BIT-1 para samplear el bit serial
        s_RX_DATA_BITS :
                  begin
                    if (r_Clock_Count < CLKS_PER_BIT-1)
                      begin
                        r_Clock_Count <= r_Clock_Count + 1;
                        r_SM_Main     <= s_RX_DATA_BITS;
                      end
                    else
                      begin
                        r_Clock_Count          <= 0;
                        r_Rx_Byte[r_Bit_Index] <= r_Rx_Data;
                         
                        // Checkeamos si se recibieron todos los bits
                        if (r_Bit_Index < 7)
                          begin
                            r_Bit_Index <= r_Bit_Index + 1;
                            r_SM_Main   <= s_RX_DATA_BITS;
                          end
                        else
                          begin
                            r_Bit_Index <= 0;
                            r_SM_Main   <= s_RX_STOP_BIT;
                          end
                      end
                  end
     
     
        // Se espera a recibir el bit de térmnino igual a 1'b1
        s_RX_STOP_BIT :
                  begin
                    // Esperamos CLKS_PER_BIT-1 de ciclos de clock para terminar 
                    // la recepción del bit de término
                    if (r_Clock_Count < CLKS_PER_BIT-1)
                      begin
                        r_Clock_Count <= r_Clock_Count + 1;
                        r_SM_Main     <= s_RX_STOP_BIT;
                      end
                    else
                      begin
                        r_Rx_DV       <= 1'b1;
                        r_Clock_Count <= 0;
                        r_SM_Main     <= s_CLEANUP;
                      end
                  end 
             
         
        // Un clk en este estado y se vuelve a IDLE
        s_CLEANUP :
                  begin
                    r_SM_Main <= s_IDLE;
                    r_Rx_DV   <= 1'b0;
                  end
         
         
        default :
                 r_SM_Main <= s_IDLE;
         
      endcase
    end   
   
  assign o_Rx_DV   = r_Rx_DV;
  assign o_Rx_Byte = r_Rx_Byte;
   
endmodule
