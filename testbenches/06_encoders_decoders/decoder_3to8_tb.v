`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.01.2026 20:54:39
// Design Name: 
// Module Name: decoder_3to8_tb
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


module decoder_3to8_tb;
reg [2:0] a;
wire [7:0] y;

decoder_3to8 dut(a, y);

initial begin
    a=0; #10;
    a=1; #10;
    a=2; #10;
    a=3; #10;
    a=4; #10;
    a=5; #10;
    a=6; #10;
    a=7; #10;
    $finish;
end
endmodule
