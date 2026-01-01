`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2026 19:55:13
// Design Name: 
// Module Name: tb_demux_1x2
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


module tb_demux_1x2;
    reg d, s;
    wire y0, y1;

    demux_1x2 uut (.d(d), .s(s), .y0(y0), .y1(y1));

    initial begin
        #10 d=0; s=0;
        #10 d=1; s=0;
        #10 d=1; s=1;
        #10 d=0; s=1;
    end
endmodule

