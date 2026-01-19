`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2026 19:35:38
// Design Name: 
// Module Name: tb_comparator_8bit
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


module tb_comparator_8bit;

    reg  [7:0] a;
    reg  [7:0] b;
    wire a_gt_b;
    wire a_eq_b;
    wire a_lt_b;

    comparator_8bit uut (
        .a(a),
        .b(b),
        .a_gt_b(a_gt_b),
        .a_eq_b(a_eq_b),
        .a_lt_b(a_lt_b)
    );

    initial begin
        a = 8'd50;  b = 8'd20;  #10; // A > B
        a = 8'd100; b = 8'd100; #10; // A == B
        a = 8'd15;  b = 8'd200; #10; // A < B
        a = 8'd255; b = 8'd1;   #10;
        a = 8'd0;   b = 8'd0;   #10;

        $stop;
    end

endmodule
