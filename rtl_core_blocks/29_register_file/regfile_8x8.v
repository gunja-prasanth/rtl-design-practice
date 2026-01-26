`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2026 20:14:30
// Design Name: 
// Module Name: regfile_8x8
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


module regfile_8x8 (
    input  wire        clk,
    input  wire        rst,
    input  wire        we,            
    input  wire [2:0]  waddr,          
    input  wire [7:0]  wdata,          
    input  wire [2:0]  raddr1,        
    input  wire [2:0]  raddr2,         
    output wire [7:0]  rdata1,         
    output wire [7:0]  rdata2          
);

    reg [7:0] regfile [0:7];
    integer i;

    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < 8; i = i + 1)
                regfile[i] <= 8'b0;
        end else if (we) begin
            regfile[waddr] <= wdata;
        end
    end

   
    assign rdata1 = regfile[raddr1];
    assign rdata2 = regfile[raddr2];

endmodule

