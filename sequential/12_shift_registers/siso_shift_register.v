`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2026 09:19:33
// Design Name: 
// Module Name: siso_shift_register
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


module siso_shift_register (
    input clk,
    input rst,
    input din,
    output dout
);
    reg [3:0] shift;

    always @(posedge clk or posedge rst) begin
        if (rst)
            shift <= 4'b0000;
        else
            shift <= {shift[2:0], din};
    end

    assign dout = shift[3];
endmodule

