`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2026 19:58:35
// Design Name: 
// Module Name: demux_1x4
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


module demux_1x4(
    input d,
    input s0,
    input s1,
    output y0,
    output y1,
    output y2,
    output y3
);
    assign y0 = d & ~s1 & ~s0;
    assign y1 = d & ~s1 &  s0;
    assign y2 = d &  s1 & ~s0;
    assign y3 = d &  s1 &  s0;
endmodule

