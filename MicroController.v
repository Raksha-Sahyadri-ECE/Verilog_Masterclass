module MicroController (
    input clk,
    input reset
);
    reg [3:0] PC;
    wire [11:0] IR;
    wire [7:0] DR;
    reg [7:0] Acc;
    wire [7:0] ALU_Oper2;
    wire [7:0] ALU_Out;
    wire [7:0] SR;
    wire Flags_updated;

    // Control Signals
    wire MUX2_Sel;
    wire DMem_WE;
    wire [3:0] ALU_Mode;

    // Instruction Fields
    wire [3:0] opcode = IR[11:8];

    // Program Memory
    PMem pmem (
        .addr(PC),
        .instr(IR)
    );

    // Control Logic
    Control_Logic ctrl (
        .opcode(opcode),
        .MUX2_Sel(MUX2_Sel),
        .DMem_WE(DMem_WE),
        .ALU_Mode(ALU_Mode)
    );

    // Data Memory
    DMem dmem (
        .clk(clk),
        .E(ALU_Out),
        .WE(DMem_WE),
        .Addr(IR[3:0]),
        .Out(DR)
    );

    // MUX2
    MUX2 mux2 (
        .In1(DR),
        .In2(IR[7:0]),
        .Sel(MUX2_Sel),
        .Out(ALU_Oper2)
    );

    // ALU
    ALU alu (
        .Operand1(Acc),
        .Operand2(ALU_Oper2),
        .Mode(ALU_Mode),
        .Out(ALU_Out),
        .Flags(SR),
        .Flags_updated(Flags_updated)
    );

    // Sequential Logic
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            PC <= 0;
            Acc <= 0;
        end else begin
            Acc <= ALU_Out;
            PC <= PC + 1;
        end
    end
endmodule
