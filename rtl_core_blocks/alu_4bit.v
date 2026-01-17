`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2026 15:37:09
// Design Name: 
// Module Name: alu_4bit
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


module alu_4bit (
    input  [3:0] a,
    input  [3:0] b,
    input  [1:0] sel,
    output reg [3:0] result,
    output reg carry
);

    always @(*) begin
        carry  = 1'b0;
        result = 4'b0000;

        case (sel)
            2'b00: begin               
                {carry, result} = a + b;
            end

            2'b01: begin               
                {carry, result} = a - b;
            end

            2'b10: begin               
                result = a & b;
            end

            2'b11: begin               
                result = a | b;
            end

            default: result = 4'b0000;
        endcase
    end

endmodule
