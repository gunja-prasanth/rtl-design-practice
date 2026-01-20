`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2026 17:44:38
// Design Name: 
// Module Name: tb_parity_generator
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


module tb_parity_generator;

reg  [7:0] data;
wire even_parity;
wire odd_parity;

parity_generator uut (
    .data(data),
    .even_parity(even_parity),
    .odd_parity(odd_parity)
);

initial begin
    data = 8'b00000000;
    #10 data = 8'b00000001;
    #10 data = 8'b10101010;
    #10 data = 8'b11111111;
    #10 $finish;
end

endmodule
