module cpu_top(
    input clk,
    input reset
);

wire [31:0] pc_out;

pc PC(
    .clk(clk),
    .reset(reset),
    .pc_out(pc_out)
);

endmodule