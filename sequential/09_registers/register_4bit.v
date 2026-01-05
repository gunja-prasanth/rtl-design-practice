`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.01.2026 22:44:42
// Design Name: 
// Module Name: register_4bit
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


module register_4bit (
    input clk,
    input reset,
    input enable,
    input [3:0] d,
    output reg [3:0] q
);

always @(posedge clk) begin
    if (reset)
        q <= 4'b0000;      
    else if (enable)
        q <= d;           
    else
        q <= q;            
end

endmodule

