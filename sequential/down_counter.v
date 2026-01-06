`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.01.2026 22:10:12
// Design Name: 
// Module Name: down_counter
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


module down_counter (
    input clk,
    input reset,
    input enable,
    output reg [3:0] count
);

always @(posedge clk) begin
    if (reset)
        count <= 4'b1111;
    else if (enable)
        count <= count - 1;
end

endmodule

