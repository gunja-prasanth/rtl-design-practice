`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.01.2026 20:35:21
// Design Name: 
// Module Name: tb_d_latch
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


module tb_d_latch;
    reg D, EN;
    wire Q;

    d_latch uut (.D(D), .EN(EN), .Q(Q));

    initial begin
        D=0; EN=0;
        #10 D=1; EN=1;
        #10 D=0; EN=0;
        #10 D=1; EN=1;
    end
endmodule

