`timescale 1ns / 1ps

module cpu_tb;

reg clk;
reg reset;

// Instantiate CPU
cpu_top uut (
    .clk(clk),
    .reset(reset)
);

// Clock Generation (10 ns period)
always #5 clk = ~clk;

// Test Sequence
initial begin
    // Initialize signals
    clk = 0;
    reset = 1;

    // Hold reset for 20 ns
    #20;
    reset = 0;

    // Run simulation for 200 ns
    #200;

    // Finish simulation
    $finish;
end

// Monitor important signals
initial begin
    $monitor(
        "Time=%0t | Reset=%b | PC=%h",
        $time,
        reset,
        uut.pc_out
    );
end

endmodule
