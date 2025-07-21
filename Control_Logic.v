module Control_Logic (
    input [3:0] opcode,
    output reg MUX2_Sel,
    output reg DMem_WE,
    output reg [3:0] ALU_Mode
);
    always @(*) begin
        MUX2_Sel = 0;
        DMem_WE = 0;
        ALU_Mode = opcode;

        case (opcode)
            4'b1011: MUX2_Sel = 1;         // LOAD immediate
            4'b0010: DMem_WE = 1;          // STORE
            default: ;
        endcase
    end
endmodule
