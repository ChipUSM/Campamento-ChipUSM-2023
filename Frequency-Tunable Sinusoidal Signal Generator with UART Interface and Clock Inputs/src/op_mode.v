`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2023 16:45:55
// Design Name: 
// Module Name: op_mode
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


module sine_mode(
    input flag,
    input clk,
    input [2:0] mode,
    input [15:0] factor,
    output reg [9:0] counter = 0,
    output clk_out
    );
    
    reg [15:0] factor_in = 2;
    
    
    always @(posedge flag)
        if (mode == 3'b010)
            begin
            if (factor != 0)
                factor_in <= factor;
            end
    
    clk_divider clk_div1(
    .clk(clk),
    .factor(factor_in),
    .clk_out(clk_out)
    );
    
    always @(posedge clk_out)
        if (mode == 3'b010)
            counter <= counter + 1;
endmodule


module timer555_mode(
    input pwm,
    input [2:0] mode,
    output reg [9:0] counter = 0,
    output clk_out
    );
    
    assign clk_out = pwm;
    always @(posedge pwm)
        if (mode == 3'b001)
            counter <= counter + 1;
            
endmodule
