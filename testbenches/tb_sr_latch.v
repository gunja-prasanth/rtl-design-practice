`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.01.2026 20:30:25
// Design Name: 
// Module Name: tb_sr_latch
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


module tb_sr_latch;
    reg S, R;
    wire Q;

    sr_latch uut (.S(S), .R(R), .Q(Q));

    initial begin
        S=0; R=0;
        #10 S=1; R=0;
        #10 S=0; R=1;
        #10 S=0; R=0;
        #10 S=1; R=1;
    end
endmodule

