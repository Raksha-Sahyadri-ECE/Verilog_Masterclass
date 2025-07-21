module MUX2 (
    input [7:0] In1,
    input [7:0] In2,
    input Sel,
    output [7:0] Out
);
    assign Out = Sel ? In2 : In1;
endmodule
