`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.12.2025 19:11:58
// Design Name: 
// Module Name: tb_full_subtractor
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


module tb_full_subtractor;
    reg a, b, bin;
    wire diff, bout;

    full_subtractor uut (
        .a(a),
        .b(b),
        .bin(bin),
        .diff(diff),
        .bout(bout)
    );

    initial begin
        a=0; b=0; bin=0;
        #10 a=0; b=0; bin=1;
        #10 a=0; b=1; bin=0;
        #10 a=0; b=1; bin=1;
        #10 a=1; b=0; bin=0;
        #10 a=1; b=0; bin=1;
        #10 a=1; b=1; bin=0;
        #10 a=1; b=1; bin=1;
        #10 $finish;
    end
endmodule
