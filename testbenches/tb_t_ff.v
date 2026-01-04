`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.01.2026 12:27:57
// Design Name: 
// Module Name: tb_t_ff
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


module tb_t_ff;
    reg clk, rst, t;
    wire q;

    t_ff uut (.clk(clk), .rst(rst), .t(t), .q(q));

    always #5 clk = ~clk;

    initial begin
        clk=0; rst=1; t=0;
        #10 rst=0;
        #10 t=1;
        #20 t=0;
        #20 $finish;
    end
endmodule

