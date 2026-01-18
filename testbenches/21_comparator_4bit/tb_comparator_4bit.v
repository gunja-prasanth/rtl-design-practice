`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2026 17:29:10
// Design Name: 
// Module Name: tb_comparator_4bit
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


module tb_comparator_4bit;

    reg  [3:0] a;
    reg  [3:0] b;
    wire a_gt_b;
    wire a_eq_b;
    wire a_lt_b;

    comparator_4bit uut (
        .a(a),
        .b(b),
        .a_gt_b(a_gt_b),
        .a_eq_b(a_eq_b),
        .a_lt_b(a_lt_b)
    );

    initial begin
        a = 4'd5;  b = 4'd3;  #10; // A > B
        a = 4'd7;  b = 4'd7;  #10; // A == B
        a = 4'd2;  b = 4'd9;  #10; // A < B
        a = 4'd15; b = 4'd1;  #10;
        a = 4'd0;  b = 4'd0;  #10;

        $stop;
    end

endmodule

