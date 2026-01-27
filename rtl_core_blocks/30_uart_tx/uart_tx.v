`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2026 17:03:23
// Design Name: 
// Module Name: uart_tx
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


module uart_tx #(
    parameter CLK_FREQ = 50_000_000,
    parameter BAUD_RATE = 9600
)(
    input  wire clk,
    input  wire rst,
    input  wire tx_start,
    input  wire [7:0] tx_data,
    output reg  tx,
    output reg  tx_busy
);

    localparam integer BAUD_TICK = CLK_FREQ / BAUD_RATE;

   
    localparam IDLE  = 3'd0,
               START = 3'd1,
               DATA  = 3'd2,
               STOP  = 3'd3;

    reg [2:0] state;
    reg [12:0] baud_cnt;
    reg [2:0] bit_cnt;
    reg [7:0] shift_reg;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state     <= IDLE;
            tx        <= 1'b1; 
            tx_busy  <= 1'b0;
            baud_cnt <= 0;
            bit_cnt  <= 0;
        end else begin
            case (state)
                IDLE: begin
                    tx <= 1'b1;
                    tx_busy <= 1'b0;
                    if (tx_start) begin
                        shift_reg <= tx_data;
                        state <= START;
                        tx_busy <= 1'b1;
                        baud_cnt <= 0;
                    end
                end

                START: begin
                    tx <= 1'b0; 
                    if (baud_cnt == BAUD_TICK-1) begin
                        baud_cnt <= 0;
                        state <= DATA;
                        bit_cnt <= 0;
                    end else
                        baud_cnt <= baud_cnt + 1;
                end

                DATA: begin
                    tx <= shift_reg[0];
                    if (baud_cnt == BAUD_TICK-1) begin
                        baud_cnt <= 0;
                        shift_reg <= shift_reg >> 1;
                        if (bit_cnt == 3'd7)
                            state <= STOP;
                        else
                            bit_cnt <= bit_cnt + 1;
                    end else
                        baud_cnt <= baud_cnt + 1;
                end

                STOP: begin
                    tx <= 1'b1; 
                    if (baud_cnt == BAUD_TICK-1) begin
                        baud_cnt <= 0;
                        state <= IDLE;
                    end else
                        baud_cnt <= baud_cnt + 1;
                end
            endcase
        end
    end

endmodule

