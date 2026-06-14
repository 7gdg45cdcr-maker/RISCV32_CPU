# 32-bit RISC-V Processor Design & Implementation (RV32I)

A single-cycle 32-bit RISC-V processor core implemented in Verilog HDL, verified via RTL simulation, and deployed on a physical Xilinx Artix-7 FPGA configuration.

## 🛠️ Microarchitecture & Module Breakdown

The processor is built from scratch using a modular hardware philosophy, structurally wired together in a top-level core datapath:

* **Program Counter (`rtl/pc.v`):** Tracks and updates the instruction pointer logic on every positive clock edge, supporting sequential execution jumps ($PC + 4$) and conditional execution branches. Includes synchronous hardware initialization reset logic.
* **Arithmetic Logic Unit (`rtl/alu.v`):** The combinational computational execution engine. Decodes operations to perform arithmetic (add, subtract), logic operations (AND, OR, XOR), precise bitwise shifts (logical and arithmetic operations), and comparison checks (set less than instructions) utilizing optimization techniques for shared carry-lookahead structures.
* **Register File (`rtl/regfile.v`):** A high-speed $32 \times 32$-bit internal storage matrix featuring dual concurrent read ports and a single dedicated write port. Incorporates a hardwired, constant-zero hardware structure for the $x0$ register architecture.
* **Control Unit (`rtl/control_unit.v`):** Formulates the processor instruction decoding engine. Parses instruction opcode fields, `funct3`, and `funct7` parameters to establish exact multiplexer datapath routings, register write updates, ALU execution flags, and memory read/write cycles.
* **Top-Level Wrapper (`rtl/cpu_top.v`):** The final structural integration interconnect linking the control pathways, datapath components, and custom interfaces.

## 🚀 Performance & Synthesis Summary (Vivado)

* **Target Hardware:** Digilent Nexys A7 development platform (Artix-7 FPGA fabric).
* **Clock Domain:** Successfully synthesized to operate at a stable target frequency of **100 MHz** ($T_{clk} = 10\text{ ns}$) with zero negative slack margins.
* **Memory Architecture:** Uses discrete instruction and data blocks (Harvard layout configurations) optimized inside efficient block RAM (BRAM) segments.

## 📂 Repository Structure
```text
RISCV32_CPU/
├── rtl/
│   ├── alu.v
│   ├── control_unit.v
│   ├── regfile.v
│   ├── pc.v
│   └── cpu_top.v
├── LICENSE (MIT License)
└── README.md
