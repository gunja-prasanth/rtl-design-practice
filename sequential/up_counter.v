`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.01.2026 22:02:24
// Design Name: 
// Module Name: up_counter
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


module up_counter (
    input clk,
    input reset,
    input enable,
    output reg [3:0] count
);

always @(posedge clk) begin
    if (reset)
        count <= 4'b0000;
    else if (enable)
        count <= count + 1;
end

endmodule

