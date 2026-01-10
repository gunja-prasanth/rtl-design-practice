`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2026 09:25:46
// Design Name: 
// Module Name: tb_sipo_shift_register
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


module tb_sipo_shift_register;
    reg clk, rst, din;
    wire [3:0] dout;

    sipo_shift_register uut (.clk(clk), .rst(rst), .din(din), .dout(dout));

    always #5 clk = ~clk;

    initial begin
        clk=0; rst=1; din=0;
        #10 rst=0;
        #10 din=1;
        #10 din=1;
        #10 din=0;
        #50 $finish;
    end
endmodule

