`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.01.2026 22:07:31
// Design Name: 
// Module Name: tb_up_counter
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


module tb_up_counter;

reg clk, reset, enable;
wire [3:0] count;

up_counter uut (
    .clk(clk),
    .reset(reset),
    .enable(enable),
    .count(count)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;
    enable = 0;

    #10 reset = 0;
    enable = 1;

    #100 $finish;
end

endmodule

