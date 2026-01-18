`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.01.2026 17:27:59
// Design Name: 
// Module Name: comparator_4bit
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


module comparator_4bit (
    input  [3:0] a,
    input  [3:0] b,
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
