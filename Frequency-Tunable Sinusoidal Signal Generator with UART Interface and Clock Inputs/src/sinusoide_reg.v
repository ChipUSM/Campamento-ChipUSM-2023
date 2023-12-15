`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2023 09:51:49
// Design Name: 
// Module Name: sinusoide_reg
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


module sinusoide_reg(
        input clk,
        input [9:0] address,
        output reg [7:0] value = 8'b1000_0000
    );
    
    
    reg [7:0] sine [0:2**(10)-1];
    
    // En esta línea se cargan las instrucciones a partir de un archivo .txt
    initial begin
        $readmemb("sine_wave.txt", sine);
    end
    
    always @(posedge clk)
        value <= sine[address];
    
endmodule
