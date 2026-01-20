`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2026 17:47:29
// Design Name: 
// Module Name: parity_checker
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


module parity_checker (
    input  [7:0] data,
    input        parity_bit,
    input        even_odd,   // 0 = even, 1 = odd
    output       error
);

wire computed_parity;

assign computed_parity = ^data;
assign error = (even_odd == 1'b0) ? 
               (computed_parity != parity_bit) :
               (computed_parity == parity_bit);

endmodule

