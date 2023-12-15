`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2023 14:16:09
// Design Name: 
// Module Name: mode_select
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


module mode_select(
        input flag,
        input [7:0] selec,
        output reg [2:0] mode = 3'b001
    );
    
    always @(posedge flag)
        case(selec)
            8'b01000001: mode <= 3'b001;
            8'b01000010: mode <= 3'b010;
        endcase
endmodule
