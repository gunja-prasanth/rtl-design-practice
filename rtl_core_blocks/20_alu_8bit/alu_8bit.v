`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2026 21:02:33
// Design Name: 
// Module Name: alu_8bit
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


module alu_8bit (
    input  [7:0] a,
    input  [7:0] b,
    input  [2:0] alu_ctrl,
    output reg [7:0] result,
    output zero
);

    always @(*) begin
        case (alu_ctrl)
            3'b000: result = a + b;        // ADD
            3'b001: result = a - b;        // SUB
            3'b010: result = a & b;        // AND
            3'b011: result = a | b;        // OR
            3'b100: result = a ^ b;        // XOR
            3'b101: result = a << 1;       // Shift Left
            3'b110: result = a >> 1;       // Shift Right
            3'b111: result = (a < b) ? 8'b1 : 8'b0; // SLT
            default: result = 8'b0;
        endcase
    end

    assign zero = (result == 8'b0);

endmodule
