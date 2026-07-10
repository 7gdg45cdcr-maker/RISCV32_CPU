//==============================================================
// 3-to-1 Multiplexer
//==============================================================

module mux3x1 #(parameter WIDTH = 32)
(
    input [WIDTH-1:0] in0,
    input [WIDTH-1:0] in1,
    input [WIDTH-1:0] in2,

    input [1:0] sel,

    output reg [WIDTH-1:0] out
);

always @(*)
begin

    case(sel)

        2'b00:
            out = in0;

        2'b01:
            out = in1;

        2'b10:
            out = in2;

        default:
            out = in0;

    endcase

end

endmodule
