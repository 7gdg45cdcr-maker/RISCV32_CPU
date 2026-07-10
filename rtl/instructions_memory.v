//==============================================================
// Instruction Memory
//==============================================================

module instruction_memory(
    input [31:0] addr,
    output [31:0] instruction
);

reg [31:0] memory [0:255];

initial begin

    // add x1,x0,x0
    memory[0] = 32'h000000B3;

    // add x2,x0,x0
    memory[1] = 32'h00000133;

    // add x3,x1,x2
    memory[2] = 32'h002081B3;

    // sub x4,x3,x1
    memory[3] = 32'h40118233;

    // and x5,x3,x2
    memory[4] = 32'h0021F2B3;

    // or x6,x3,x2
    memory[5] = 32'h0021E333;

end

assign instruction = memory[addr[9:2]];

endmodule
