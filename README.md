# 🚀 32-bit RISC-V (RV32I) Processor using Verilog HDL

A single-cycle **32-bit RISC-V (RV32I)** processor designed and implemented using **Verilog HDL**, simulated using **Xilinx Vivado**, and targeted for **Artix-7 FPGA** implementation. This project demonstrates the design and verification of a basic RISC-V CPU capable of executing fundamental arithmetic, logical, memory, and control instructions.

---

## 📖 Project Overview

The RISC-V architecture is an open-source Instruction Set Architecture (ISA) widely adopted in modern embedded systems and processor design. This project implements a single-cycle 32-bit RISC-V processor, where each instruction is executed in one clock cycle.

The processor integrates essential hardware modules such as the Program Counter, Control Unit, Register File, ALU, Instruction Memory, and Data Memory to execute the RV32I instruction set.

---

## 🎯 Objectives

- Design a 32-bit single-cycle RISC-V processor.
- Implement the processor using Verilog HDL.
- Simulate and verify processor functionality using Xilinx Vivado.
- Demonstrate execution of fundamental RV32I instructions.
- Understand processor architecture and RTL design concepts.

---

## ✨ Features

- 32-bit RISC-V (RV32I) Architecture
- Single-Cycle Processor Design
- Modular Verilog Implementation
- Arithmetic Logic Unit (ALU)
- Register File
- Program Counter (PC)
- Control Unit
- Instruction Execution
- Vivado Simulation Support
- FPGA Compatible Design

---

## 🛠 Technologies Used

- Verilog HDL
- Xilinx Vivado
- RISC-V RV32I ISA
- FPGA (Artix-7)
- GitHub

---

## 📂 Repository Structure

```
RISCV32_CPU/
│
├── rtl/
│   ├── alu.v
│   ├── control_unit.v
│   ├── cpu_top.v
│   ├── pc.v
│   └── regfile.v
│
├── docs/
├── screenshots/
├── Presentation/
├── README.md
├── LICENSE
└── .gitignore
```

---

## 🏗 Processor Architecture

The processor consists of the following major modules:

- Program Counter (PC)
- Instruction Memory
- Control Unit
- Register File
- Arithmetic Logic Unit (ALU)
- Data Memory
- CPU Top Module

Each module is designed independently and integrated to form a complete single-cycle processor.

---

## 🔄 Processor Workflow

1. Fetch instruction from Instruction Memory.
2. Decode instruction using the Control Unit.
3. Read operands from Register File.
4. Execute operation in the ALU.
5. Access Data Memory (Load/Store instructions).
6. Write result back to Register File.
7. Update Program Counter.

---

## 📋 Supported Instruction Categories

- Arithmetic Instructions
- Logical Instructions
- Immediate Instructions
- Load Instructions
- Store Instructions
- Branch Instructions
- Jump Instructions

---

## ▶️ Simulation

The processor is verified using **Xilinx Vivado** through behavioral simulation.

Simulation verifies:

- Program Counter Update
- Register Write Operation
- ALU Operations
- Instruction Execution
- Control Signal Generation

---

## 📊 Expected Results

- Correct execution of RV32I instructions
- Accurate ALU outputs
- Proper register updates
- Successful instruction decoding
- Functional processor datapath

---

## 💡 Applications

- Processor Architecture Education
- Embedded Systems
- FPGA Prototyping
- Digital Design Learning
- Computer Architecture Research

---

## 🚀 Future Enhancements

- Pipeline Architecture
- Cache Memory
- Hazard Detection Unit
- Branch Prediction
- Interrupt Handling
- UART Interface
- Multi-Cycle Processor Design

---

## 📚 Learning Outcomes

Through this project, the following concepts were explored:

- RISC-V ISA
- Verilog HDL Programming
- RTL Design
- Processor Datapath
- Control Unit Design
- FPGA Design Flow
- Vivado Simulation
- Digital System Verification

---

## 📄 License

This project is released under the **MIT License**.

---

## 👨‍💻 Author

**Abitha Kishore Chokka**

B.Tech Engineering Student

Passionate about:
- VLSI Design
- Digital Electronics
- Embedded Systems
- FPGA Design
- Machine Learning

---

## ⭐ Support

If you found this project useful, consider giving this repository a ⭐ on GitHub.