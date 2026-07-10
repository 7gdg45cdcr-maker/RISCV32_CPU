//==============================================================
// Project      : 32-bit Single-Cycle RISC-V Processor (RV32I)
// File Name    : mux2x1.v
// Description  : 2-to-1 Multiplexer
//==============================================================

module mux2x1 #(parameter WIDTH = 32)
(
    input  [WIDTH-1:0] in0,
    input  [WIDTH-1:0] in1,
    input              sel,

    output [WIDTH-1:0] out
);

assign out = (sel) ? in1 : in0;

endmodule
