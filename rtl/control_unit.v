module control_unit(
    input [6:0] opcode,
    output reg regwrite
);

always @(*) begin
    case(opcode)
        7'b0110011: regwrite = 1'b1;
        default:    regwrite = 1'b0;
    endcase
end

endmodule