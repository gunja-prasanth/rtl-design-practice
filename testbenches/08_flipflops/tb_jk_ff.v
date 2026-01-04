`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.01.2026 12:24:48
// Design Name: 
// Module Name: tb_jk_ff
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


module tb_jk_ff;
    reg clk, rst, j, k;
    wire q;

    jk_ff uut (.clk(clk), .rst(rst), .j(j), .k(k), .q(q));

    always #5 clk = ~clk;

    initial begin
        clk=0; rst=1; j=0; k=0;
        #10 rst=0;
        #10 j=1; k=0;
        #10 j=0; k=1;
        #10 j=1; k=1;
        #20 $finish;
    end
endmodule

