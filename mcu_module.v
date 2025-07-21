module mcu_module;
    reg clk = 0;
    reg reset = 1;

    MicroController uut (
        .clk(clk),
        .reset(reset)
    );

    always #5 clk = ~clk;

    initial begin
        #10 reset = 0;
        #1000 $finish;
    end
endmodule
