`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.01.2026 23:04:47
// Design Name: 
// Module Name: mod8_counter
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


module mod8_counter(
    input clk,
    input reset,
    output reg [2:0] count
);

always @(posedge clk or posedge reset) begin
    if (reset)
        count <= 3'd0;
    else if (count == 3'd7)
        count <= 3'd0;
    else
        count <= count + 1;
end

endmodule

