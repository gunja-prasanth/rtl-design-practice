`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.01.2026 11:17:33
// Design Name: 
// Module Name: moore_fsm
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


module moore_fsm (
    input clk,
    input rst,
    input in,
    output reg out
);

    // State encoding
    parameter S0 = 1'b0;
    parameter S1 = 1'b1;

    reg state, next_state;

    // State register (sequential logic)
    always @(posedge clk) begin
        if (rst)
            state <= S0;
        else
            state <= next_state;
    end

    // Next state logic (combinational)
    always @(*) begin
        case (state)
            S0: begin
                if (in)
                    next_state = S1;
                else
                    next_state = S0;
            end
            S1: begin
                if (in)
                    next_state = S1;
                else
                    next_state = S0;
            end
            default: next_state = S0;
        endcase
    end

    // Output logic (Moore FSM: depends ONLY on state)
    always @(*) begin
        case (state)
            S0: out = 1'b0;
            S1: out = 1'b1;
            default: out = 1'b0;
        endcase
    end

endmodule


