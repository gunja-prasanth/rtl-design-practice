`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2026 19:59:45
// Design Name: 
// Module Name: tb_demux_1x4
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


module tb_demux_1x4;
    reg d, s0, s1;
    wire y0, y1, y2, y3;

    demux_1x4 uut (
        .d(d), .s0(s0), .s1(s1),
        .y0(y0), .y1(y1), .y2(y2), .y3(y3)
    );

    initial begin
        d=1;
        s1=0; s0=0; #10;
        s1=0; s0=1; #10;
        s1=1; s0=0; #10;
        s1=1; s0=1; #10;
    end
endmodule
