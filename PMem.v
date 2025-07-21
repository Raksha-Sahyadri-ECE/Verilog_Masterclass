module PMem (
    input [3:0] addr,
    output reg [11:0] instr
);
    reg [11:0] program_mem [0:15];

    initial begin
        $readmemb("program_mem.dat", program_mem, 0, 9);
    end

    always @(*) begin
        instr = program_mem[addr];
    end
endmodule
