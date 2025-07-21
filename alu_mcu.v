module ALU (
    input [7:0] Operand1,
    input [7:0] Operand2,
    input [3:0] Mode,
    output reg [7:0] Out,
    output reg [7:0] Flags,
    output reg Flags_updated
);
    always @(*) begin
        Flags_updated = 0;
        Flags = 0;
        case (Mode)
            4'b0000: Out = Operand1 + Operand2;  // ADD
            4'b0001: Out = Operand1 - Operand2;  // SUB
            4'b0010: Out = Operand1 & Operand2;  // AND
            4'b0011: Out = Operand1 | Operand2;  // OR
            4'b0100: Out = ~Operand1;            // NOT
            default: Out = 8'b00000000;
        endcase
    end
endmodule
