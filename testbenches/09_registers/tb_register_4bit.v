`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.01.2026 22:46:19
// Design Name: 
// Module Name: tb_register_4bit
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


module tb_register_4bit;

reg clk;
reg reset;
reg enable;
reg [3:0] d;
wire [3:0] q;

register_4bit uut (
    .clk(clk),
    .reset(reset),
    .enable(enable),
    .d(d),
    .q(q)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1; enable = 0; d = 4'b0000;

    #10 reset = 0;
    #10 enable = 1; d = 4'b1010;
    #10 d = 4'b0101;
    #10 enable = 0; d = 4'b1111;
    #10 reset = 1;
    #10 $finish;
end

endmodule
