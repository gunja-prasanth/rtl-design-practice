module tb_seq_1011;

    reg clk;
    reg rst;
    reg x;
    wire z;

   
    seq_1011 dut (
        .clk(clk),
        .rst(rst),
        .x(x),
        .z(z)
    );

    
    always #5 clk = ~clk;

    initial begin
        
        clk = 0;
        rst = 1;
        x   = 0;

        
        #12 rst = 0;

 

        #10 x = 1;   
        #10 x = 0;   
        #10 x = 1;   
        #10 x = 1;   

        #10 x = 0;
        #10 x = 1;
        #10 x = 0;
        #10 x = 1;
        #10 x = 1;   

        #20 $stop;
    end

endmodule
