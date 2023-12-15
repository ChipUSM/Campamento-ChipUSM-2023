`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2023 20:14:47
// Design Name: 
// Module Name: FSM_byte
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


module FSM_byte(
    input clk, input [7:0] byte_in, input w_flag, input [2:0] mode,
    output reg [15:0] z = 0, output reg flag = 0
    );
    
    reg [1:0] y = 0, Y = 0;
    
    parameter IDLE = 2'b00;             // Cada uno de los estados que se muestran acá, describe lo que
    parameter RECEIVE_LSB = 2'b01;      // está haciendo esta FSM. Solo se reciben bits en RECEIVE_LSB y RECEIVE_MSB
    parameter RECEIVE_MSB = 2'b11;
    parameter NEXT = 2'b10;
    
    reg [7:0] byte_a;
    
    reg w;
    always @(posedge clk)
        if (mode == 3'b010)
            byte_a <= byte_in;
            
    always @(posedge clk)
        case(byte_a)
            8'b01000001: w <= w;
            8'b01000010: w <= w;
            default: w <= w_flag;
        endcase
        
    always @(w, y)
        case(y)
            IDLE: if (w)
                begin
                Y <= RECEIVE_LSB;
                end
               else
               begin
               Y <= IDLE;             // En este estado se espera la flag del módulo
               end                    // uart para comenzar a guardar los primeros 8bits
            RECEIVE_LSB: if (!w)
                begin
                    Y <= NEXT;
                end
               else
               begin
                   Y <= RECEIVE_LSB;   // Se pasa al estado de recibir los 8 LSB
               end
            
            NEXT: if (w)
                begin
                Y <= RECEIVE_MSB;
                end
               else
               begin
               Y <= NEXT;                   // Se espera que uart reciba 8 bits más
               end
            RECEIVE_MSB: if (!w)
                begin                       // Se pasa al estado de recibir los 8 MSB
                    Y <= IDLE;
                end
               else
               begin
                   Y <= RECEIVE_MSB;
               end
            default: Y <= IDLE;
        endcase     
    
    always @(posedge clk)
        y <= Y;
        
    always @(posedge clk)
        case(y)      // Lógica combinacional para guardar los bits.
            RECEIVE_MSB: begin
                         z[7:0] <= w ? z[7:0] : byte_a;
                         end
            RECEIVE_LSB:
                        begin
                        z[15:8] <= w ? z[15:8] : byte_a;
                        end
            default: flag = 1'b0;
        endcase
        /*
    always @(*)
        case(y)      // Lógica combinacional para guardar los bits.
            RECEIVE_MSB: begin
                         if (!w)
                         z[7:0] = byte_a;
                         end
            RECEIVE_LSB: if (!w)
                        begin
                        z[15:8] = byte_a;
                        flag = 1'b1;
                        end
            default: flag = 1'b0;
        endcase*/
endmodule
