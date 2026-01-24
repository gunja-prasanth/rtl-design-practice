`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2026 11:50:09
// Design Name: 
// Module Name: fifo_advanced
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


module fifo_advanced #(
    parameter DATA_WIDTH = 8,
    parameter DEPTH = 16,
    parameter AFULL_LEVEL  = DEPTH-2,
    parameter AEMPTY_LEVEL = 2
)(
    input  wire                  clk,
    input  wire                  rst,     
    input  wire                  wr_en,
    input  wire                  rd_en,
    input  wire [DATA_WIDTH-1:0] din,
    output reg  [DATA_WIDTH-1:0] dout,
    output wire                  full,
    output wire                  empty,
    output wire                  almost_full,
    output wire                  almost_empty
);

    localparam PTR_WIDTH = $clog2(DEPTH);

    reg [DATA_WIDTH-1:0] mem [0:DEPTH-1];
    reg [PTR_WIDTH-1:0] wr_ptr, rd_ptr;
    reg [PTR_WIDTH:0]   count;

  
    assign full         = (count == DEPTH);
    assign empty        = (count == 0);
    assign almost_full  = (count >= AFULL_LEVEL);
    assign almost_empty = (count <= AEMPTY_LEVEL);

    always @(posedge clk) begin
        if (rst) begin
            wr_ptr <= 0;
            rd_ptr <= 0;
            count  <= 0;
            dout   <= 0;
        end else begin
            case ({wr_en && !full, rd_en && !empty})
                2'b10: begin 
                    mem[wr_ptr] <= din;
                    wr_ptr <= wr_ptr + 1;
                    count  <= count + 1;
                end

                2'b01: begin 
                    dout <= mem[rd_ptr];
                    rd_ptr <= rd_ptr + 1;
                    count  <= count - 1;
                end

                2'b11: begin 
                    mem[wr_ptr] <= din;
                    dout <= mem[rd_ptr];
                    wr_ptr <= wr_ptr + 1;
                    rd_ptr <= rd_ptr + 1;
                end

                default: ; 
            endcase
        end
    end

endmodule

