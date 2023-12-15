`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2023 10:23:10
// Design Name: 
// Module Name: clk_divider
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


module clk_divider
    // El caso base es crear un clk de 1Hz, ya que freq_out = freq_in/factor.
    (
    input clk,
    input [15:0] factor,
    output reg clk_out
    );
    
initial begin
    clk_out = 0;
end

reg [27:0] count = 28'd0;

always @(posedge clk)
    begin
    count <= count + 1;
    if (count >= factor/2)
        begin
        clk_out <= ~clk_out;
        count <= 1;
        end
    end

endmodule

