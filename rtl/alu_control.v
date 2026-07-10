//==============================================================
// ALU Control Unit
//==============================================================

module alu_control(

    input [1:0] alu_op,
    input [2:0] funct3,
    input [6:0] funct7,

    output reg [3:0] alu_ctrl

);

always @(*) begin

    case(alu_op)

        2'b00:
            alu_ctrl = 4'b0010;     // ADD

        2'b01:
            alu_ctrl = 4'b0110;     // SUB

        2'b10:
        begin

            case({funct7,funct3})

                10'b0000000000: alu_ctrl = 4'b0010; // ADD
                10'b0100000000: alu_ctrl = 4'b0110; // SUB
                10'b0000000111: alu_ctrl = 4'b0000; // AND
                10'b0000000110: alu_ctrl = 4'b0001; // OR
                10'b0000000100: alu_ctrl = 4'b0011; // XOR
                10'b0000000010: alu_ctrl = 4'b0111; // SLT

                default:
                    alu_ctrl = 4'b0010;

            endcase

        end

        default:
            alu_ctrl = 4'b0010;

    endcase

end

endmodule
