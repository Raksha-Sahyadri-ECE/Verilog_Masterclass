module DMem (
    input clk,
    input [7:0] E,
    input WE,
    input [3:0] Addr,
    output reg [7:0] Out
);
    reg [7:0] memory [0:15];

    always @(posedge clk) begin
        if (WE)
            memory[Addr] <= E;
        Out <= memory[Addr];
    end
endmodule
