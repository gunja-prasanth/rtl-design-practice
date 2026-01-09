`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.01.2026 09:24:24
// Design Name: 
// Module Name: sipo_shift_register
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


module sipo_shift_register (
    input clk,
    input rst,
    input din,
    output reg [3:0] dout
);
    always @(posedge clk or posedge rst) begin
        if (rst)
            dout <= 4'b0000;
        else
            dout <= {dout[2:0], din};
    end
endmodule

