`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2026 09:42:23
// Design Name: 
// Module Name: tb_piso_shift_1register
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


module tb_piso_shift_register;
    reg clk, rst, load;
    reg [3:0] din;
    wire dout;

    piso_shift_register uut (.clk(clk), .rst(rst), .load(load), .din(din), .dout(dout));

    always #5 clk = ~clk;

    initial begin
        clk=0; rst=1; load=0; din=4'b1011;
        #10 rst=0; load=1;
        #10 load=0;
        #50 $finish;
    end
endmodule

