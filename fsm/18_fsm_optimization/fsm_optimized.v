`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2026 18:14:52
// Design Name: 
// Module Name: fsm_optimized
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


module fsm_optimized (
    input clk,
    input reset,
    input x,
    output reg y
);

    // Optimized state encoding (reduced states)
    parameter S0 = 1'b0;
    parameter S1 = 1'b1;

    reg state, next_state;

    // State register
    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= S0;
        else
            state <= next_state;
    end

    // Next-state and output logic
    always @(*) begin
        next_state = state;
        y = 1'b0;

        case (state)
            S0: begin
                if (x)
                    next_state = S1;
            end

            S1: begin
                if (!x)
                    next_state = S0;
                y = 1'b1;
            end
        endcase
    end

endmodule

