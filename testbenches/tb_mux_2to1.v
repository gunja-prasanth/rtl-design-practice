`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.12.2025 17:37:59
// Design Name: 
// Module Name: tb_mux_2to1
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


module tb_mux_2to1;
    reg d0, d1, sel;
    wire y;

    mux_2to1 uut (.d0(d0), .d1(d1), .sel(sel), .y(y));

    initial begin
        d0=0; d1=0; sel=0; #10;
        d0=0; d1=1; sel=0; #10;
        d0=1; d1=0; sel=1; #10;
        d0=1; d1=1; sel=1; #10;
    end
endmodule

