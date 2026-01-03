`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.01.2026 20:28:59
// Design Name: 
// Module Name: sr_latch
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


module sr_latch(
    input S,
    input R,
    output reg Q
);

always @(*) begin
    if (S == 1'b1 && R == 1'b0)
        Q = 1'b1;
    else if (S == 1'b0 && R == 1'b1)
        Q = 1'b0;
    else
        Q = Q;   
end

endmodule
