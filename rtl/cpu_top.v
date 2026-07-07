module cpu_top(
    input clk,
    input reset
);

//=========================
// Internal Wires
//=========================
wire [31:0] pc_out;
wire [31:0] instruction;
wire [31:0] readData1;
wire [31:0] readData2;
wire [31:0] aluResult;
wire [31:0] memoryData;

wire regWrite;
wire memRead;
wire memWrite;
wire aluSrc;
wire memToReg;
wire branch;
wire [2:0] aluOp;

//=========================
// Program Counter
//=========================
pc PC(
    .clk(clk),
    .reset(reset),
    .pc_out(pc_out)
);

//=========================
// Instruction Memory
//=========================
instruction_memory IMEM(
    .addr(pc_out),
    .instruction(instruction)
);

//=========================
// Control Unit
//=========================
control_unit CU(
    .instruction(instruction),
    .regWrite(regWrite),
    .memRead(memRead),
    .memWrite(memWrite),
    .aluSrc(aluSrc),
    .memToReg(memToReg),
    .branch(branch),
    .aluOp(aluOp)
);

//=========================
// Register File
//=========================
regfile RF(
    .clk(clk),
    .regWrite(regWrite),
    .readReg1(instruction[19:15]),
    .readReg2(instruction[24:20]),
    .writeReg(instruction[11:7]),
    .writeData(memoryData),
    .readData1(readData1),
    .readData2(readData2)
);

//=========================
// ALU
//=========================
alu ALU(
    .A(readData1),
    .B(readData2),
    .ALUControl(aluOp),
    .Result(aluResult)
);

//=========================
// Data Memory
//=========================
data_memory DMEM(
    .clk(clk),
    .memWrite(memWrite),
    .memRead(memRead),
    .address(aluResult),
    .writeData(readData2),
    .readData(memoryData)
);

endmodule
