`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.01.2026 20:58:42
// Design Name: 
// Module Name: encoder_8to3_tb
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


module encoder_8to3_tb;
reg [7:0] d;
wire [2:0] y;

encoder_8to3 dut(d, y);

initial begin
    d=8'b00000001; #10;
    d=8'b00000010; #10;
    d=8'b00000100; #10;
    d=8'b00001000; #10;
    d=8'b00010000; #10;
    d=8'b00100000; #10;
    d=8'b01000000; #10;
    d=8'b10000000; #10;
    $finish;
end
endmodule

