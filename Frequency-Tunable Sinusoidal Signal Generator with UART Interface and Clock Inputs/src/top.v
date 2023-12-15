`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2023 15:06:05
// Design Name: 
// Module Name: top
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


module top(
        input pwm,
        input clk,
        input serial,
        output [7:0] sine_wave
    );
    
    reg [9:0] counter = 0;
    reg clk_sine;
    
    wire flag, flag2;
    wire [7:0] uart_out;
    wire [2:0] mode;
    wire clk_out2;
    wire clk_debounce;
    wire [7:0] key; 
    wire clk_k;
    wire clk_t;
    wire clk_f;
    
    wire [15:0] factor;
    
    
    wire [9:0] counter_t, counter_k, counter_f;
    
    uart_rx  urx(
       .i_Clock(clk),
       .i_Rx_Serial(serial),
       .o_Rx_DV(flag),
       .o_Rx_Byte(uart_out)
    );
    
    
        
    mode_select mode_sel(
        .flag(flag),
        .selec(uart_out),
        .mode(mode)
    );
    
    FSM_byte fsm1(
        .clk(clk),
        .byte_in(uart_out),
        .w_flag(flag),
        .mode(mode),
        .z(factor),
        .flag(flag2)
    );
    
    timer555_mode t_mode(
        .pwm(pwm),
        .mode(mode),
        .counter(counter_t),
        .clk_out(clk_t)
    );
    
    sine_mode f_mode(
        .flag(flag2),
        .clk(clk),
        .mode(mode),
        .factor(factor),
        .counter(counter_f),
        .clk_out(clk_f)
    );
    
    
    always @(posedge clk)
        case(mode)
            3'b010: begin
                    clk_sine <= clk_f;
                    counter <= counter_f;
                    end
                    
            3'b001: begin
                    clk_sine <= clk_t;
                    counter <= counter_t;
                    end
        endcase
        
    sinusoide_reg sreg(
        .clk(clk_sine),
        .address(counter),
        .value(sine_wave)
    );
    
endmodule


