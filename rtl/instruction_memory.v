module instruction_memory(
    input [31:0] addr,
    output [31:0] instruction
);

reg [31:0] memory [0:255];

// Sample Program
initial begin
    memory[0] = 32'h00500093; // ADDI x1,x0,5
    memory[1] = 32'h00A00113; // ADDI x2,x0,10
    memory[2] = 32'h002081B3; // ADD x3,x1,x2
    memory[3] = 32'h00302023; // SW x3,0(x0)
    memory[4] = 32'h00002203; // LW x4,0(x0)
end

assign instruction = memory[addr[9:2]];

endmodule
