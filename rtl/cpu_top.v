module cpu_top(
    input clk,
    input reset
);

wire [31:0] pc_out;
wire [31:0] instruction;

wire regwrite;

wire [31:0] rd1;
wire [31:0] rd2;
wire [31:0] alu_result;

//====================
// Program Counter
//====================
pc PC(
    .clk(clk),
    .reset(reset),
    .pc_out(pc_out)
);

//====================
// Instruction Memory
//====================
instruction_memory IMEM(
    .addr(pc_out),
    .instruction(instruction)
);

//====================
// Control Unit
//====================
control_unit CU(
    .opcode(instruction[6:0]),
    .regwrite(regwrite)
);

//====================
// Register File
//====================
regfile RF(
    .clk(clk),
    .we(regwrite),
    .rs1(instruction[19:15]),
    .rs2(instruction[24:20]),
    .rd(instruction[11:7]),
    .wd(alu_result),
    .rd1(rd1),
    .rd2(rd2)
);

//====================
// ALU
//====================
alu ALU(
    .a(rd1),
    .b(rd2),
    .alu_ctrl(2'b00),   // ADD operation
    .result(alu_result)
);

endmodule
