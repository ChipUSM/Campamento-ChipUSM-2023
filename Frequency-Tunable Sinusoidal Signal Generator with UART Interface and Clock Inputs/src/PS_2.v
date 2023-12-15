`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2023 16:16:33
// Design Name: 
// Module Name: PS_2
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


module PS_2(
    input clk,
    input kclk,
    input kdata,
    output reg [7:0] keycode=0,
    output reg oflag
    );
    
    reg [7:0]datacur=0;
    reg [7:0]dataprev=0;
    reg [3:0]cnt=0;
    reg flag=0;
    
    
    
    always@(negedge(kclk))begin
        case(cnt)
        0:;//Bit de inicio
        1:datacur[0]<=kdata;
        2:datacur[1]<=kdata;
        3:datacur[2]<=kdata;
        4:datacur[3]<=kdata;
        5:datacur[4]<=kdata;
        6:datacur[5]<=kdata;
        7:datacur[6]<=kdata;
        8:datacur[7]<=kdata;
        9:flag<=1'b1;
        10:flag<=1'b0;
        
        endcase
            // En cada flanco de reloj se cambia de estado
            if(cnt<=9) cnt<=cnt+1;
            else if(cnt==10) cnt<=0;
    end
    
    reg pflag;
    always@(posedge clk) begin
        // Una vez terminada la recepción de datos se envían a los Pmod de la basys.
        // Para esto, también se utiliza el registro pflag, que indica la flag previa
        if (flag == 1'b1 && pflag == 1'b0) begin
            // Si el dato previo es f0, entonces se dejó de presionar una tecla
            // y se deja de enviar los datos a los puertos de la basys.
            if (dataprev != 8'hf0)
                keycode <= {datacur};
            oflag <= 1'b1;      // Flag de salida, no es utilizada, pero venía en el código citado :p
            dataprev <= datacur;
        end else
            oflag <= 'b0;
        
        pflag <= flag;
    
    end

endmodule
