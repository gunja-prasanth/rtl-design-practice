`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2026 19:33:58
// Design Name: 
// Module Name: comparator_8bit
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


module comparator_8bit (
    input  [7:0] a,
    input  [7:0] b,
    output reg a_gt_b,
    output reg a_eq_b,
    output reg a_lt_b
);

    always @(*) begin
        if (a > b) begin
            a_gt_b = 1'b1;
            a_eq_b = 1'b0;
            a_lt_b = 1'b0;
        end
        else if (a == b) begin
            a_gt_b = 1'b0;
            a_eq_b = 1'b1;
            a_lt_b = 1'b0;
        end
        else begin
            a_gt_b = 1'b0;
            a_eq_b = 1'b0;
            a_lt_b = 1'b1;
        end
    end

endmodule

