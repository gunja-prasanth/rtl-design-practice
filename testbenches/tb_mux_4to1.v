`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.12.2025 17:42:15
// Design Name: 
// Module Name: tb_mux_4to1
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


module tb_mux_4to1;
    reg d0, d1, d2, d3;
    reg [1:0] sel;
    wire y;

    mux_4to1 uut (.d0(d0), .d1(d1), .d2(d2), .d3(d3), .sel(sel), .y(y));

    initial begin
        d0=0; d1=1; d2=0; d3=1;

        sel=2'b00; #10;
        sel=2'b01; #10;
        sel=2'b10; #10;
        sel=2'b11; #10;
    end
endmodule
