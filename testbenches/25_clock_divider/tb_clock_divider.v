`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2026 21:56:15
// Design Name: 
// Module Name: tb_clock_divider
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


module tb_clock_divider;

    reg clk_in;
    reg rst;
    wire clk_out;

    clock_divider #(.DIVIDE_BY(4)) uut (
        .clk_in(clk_in),
        .rst(rst),
        .clk_out(clk_out)
    );

    // Input clock: 10 ns period
    always #5 clk_in = ~clk_in;

    initial begin
        clk_in = 0;
        rst    = 1;

        #15 rst = 0;

        #200 $stop;
    end

endmodule
