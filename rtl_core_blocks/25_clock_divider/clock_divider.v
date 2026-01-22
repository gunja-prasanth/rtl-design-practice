`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.01.2026 21:54:48
// Design Name: 
// Module Name: clock_divider
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


module clock_divider #(
    parameter DIVIDE_BY = 4   // must be even
)(
    input  wire clk_in,
    input  wire rst,
    output reg  clk_out
);

    integer count;

    always @(posedge clk_in or posedge rst) begin
        if (rst) begin
            count   <= 0;
            clk_out <= 1'b0;
        end else begin
            if (count == (DIVIDE_BY/2 - 1)) begin
                clk_out <= ~clk_out;
                count   <= 0;
            end else begin
                count <= count + 1;
            end
        end
    end

endmodule

