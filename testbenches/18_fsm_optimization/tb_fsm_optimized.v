`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2026 18:15:51
// Design Name: 
// Module Name: tb_fsm_optimized
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


module tb_fsm_optimized;

    reg clk;
    reg reset;
    reg x;
    wire y;

    fsm_optimized uut (
        .clk(clk),
        .reset(reset),
        .x(x),
        .y(y)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset = 1;
        x = 0;

        #10 reset = 0;

        #10 x = 1;
        #20 x = 0;
        #20 x = 1;
        #20 x = 0;

        #40 $finish;
    end

endmodule

