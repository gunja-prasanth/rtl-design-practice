`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.12.2025 17:40:34
// Design Name: 
// Module Name: mux_4to1
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


module mux_4to1(
    input d0, d1, d2, d3,
    input [1:0] sel,
    output y
);
    wire y1, y2;

    mux_2to1 m0 (.d0(d0), .d1(d1), .sel(sel[0]), .y(y1));
    mux_2to1 m1 (.d0(d2), .d1(d3), .sel(sel[0]), .y(y2));
    mux_2to1 m2 (.d0(y1), .d1(y2), .sel(sel[1]), .y(y));
endmodule

