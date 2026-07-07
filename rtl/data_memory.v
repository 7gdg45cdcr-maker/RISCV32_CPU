module data_memory(
    input clk,
    input memWrite,
    input memRead,
    input [31:0] address,
    input [31:0] writeData,
    output reg [31:0] readData
);

reg [31:0] memory [0:255];

always @(posedge clk)
begin
    if(memWrite)
        memory[address[9:2]] <= writeData;
end

always @(*)
begin
    if(memRead)
        readData = memory[address[9:2]];
    else
        readData = 32'b0;
end

endmodule
