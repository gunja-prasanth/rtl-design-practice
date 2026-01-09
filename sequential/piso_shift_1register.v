`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2026 09:41:22
// Design Name: 
// Module Name: piso_shift_1register
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


module piso_shift_register (
    input clk,
    input rst,
    input load,
    input [3:0] din,
    output reg dout
);
    reg [3:0] shift;

    always @(posedge clk or posedge rst) begin
        if (rst)
            shift <= 4'b0000;
        else if (load)
            shift <= din;
        else begin
            dout <= shift[3];
            shift <= shift << 1;
        end
    end
endmodule

