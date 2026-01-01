`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2026 19:54:02
// Design Name: 
// Module Name: demux_1x2
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


module demux_1x2(
    input d,
    input s,
    output y0,
    output y1
);
    assign y0 = d & ~s;
    assign y1 = d &  s;
endmodule
