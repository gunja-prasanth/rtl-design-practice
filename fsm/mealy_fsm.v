module mealy_fsm (
    input  clk,
    input  rst,
    input  x,
    output reg y
);

    
    parameter S0 = 1'b0;
    parameter S1 = 1'b1;

    reg state;
    reg next_state;

    
    always @(posedge clk or posedge rst) begin
        if (rst)
            state <= S0;
        else
            state <= next_state;
    end

    
    always @(*) begin
        y = 0;
        next_state = state;

        case (state)
            S0: begin
                if (x)
                    next_state = S1;
            end

            S1: begin
                if (x)
                    next_state = S1;
                else begin
                    next_state = S0;
                    y = 1;   
                end
            end
        endcase
    end

endmodule
