`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.01.2026 21:02:57
// Design Name: 
// Module Name: priority_encoder_8to3_tb
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


module priority_encoder_8to3_tb;
reg [7:0] d;
wire [2:0] y;

priority_encoder_8to3 dut(d, y);

initial begin
    d=8'b00000001; #10;
    d=8'b00010010; #10;
    d=8'b01001000; #10;
    d=8'b10000000; #10;
    d=8'b00000000; #10;
    $finish;
end
endmodule

