# 8-bit Arithmetic Logic Unit (ALU) Design using Verilog HDL

## 📌 Project Title
Design and Implementation of an 8-bit ALU using Verilog HDL and Xilinx Vivado

---

## 🧾 Abstract
This project presents the design and simulation of an 8-bit Arithmetic Logic Unit (ALU) using Verilog Hardware Description Language (HDL). The ALU is a fundamental combinational circuit used in digital systems and processors to perform arithmetic and logical operations. The design is implemented and verified using Xilinx Vivado simulation tools.

---

## 🎯 Objective
The objective of this project is to:
- Design an efficient 8-bit ALU using Verilog HDL
- Implement multiple arithmetic and logical operations
- Verify functionality using simulation in Vivado
- Gain practical understanding of digital design and FPGA-based development flow

---

## ⚙️ Functional Description

The ALU operates on two 8-bit inputs (A and B) and a 3-bit control signal (Opcode). Based on the opcode, the ALU performs the corresponding operation.

### Operations Supported:

| Opcode | Operation        | Description          |
|--------|-----------------|----------------------|
| 000    | ADD             | A + B                |
| 001    | SUB             | A - B                |
| 010    | AND             | Bitwise AND         |
| 011    | OR              | Bitwise OR          |
| 100    | XOR             | Bitwise XOR         |
| 101    | NOT             | Bitwise NOT (A)     |
| 110    | SHL             | Logical Shift Left   |
| 111    | SHR             | Logical Shift Right  |

---

## 🧠 Design Methodology

The ALU is designed using **behavioral modeling in Verilog HDL**. A `case` statement is used to select operations based on opcode. The design follows combinational logic principles and does not include clock dependency.

---

## 🧪 Simulation Environment
- Xilinx Vivado Design Suite

---

## 📁 Project Directory Structure
8bit-alu-project/
├── src/ (Verilog RTL design files)
├── tb/ (Testbench files)
├── docs/ (Simulation results & report)
└── README.md


---

## ▶️ Implementation Flow
1. Create Vivado RTL project  
2. Add design source files in `src/`  
3. Add testbench in `tb/`  
4. Run behavioral simulation  
5. Verify waveform outputs  

---

## 📊 Expected Result
The ALU correctly performs all operations based on opcode selection and produces valid simulation outputs in Vivado.

---

## 📚 Key Learnings
- Verilog HDL design methodology  
- Combinational circuit design  
- ALU architecture and operations  
- Vivado simulation flow  
- FPGA development basics  

---

## 👨‍💻 Author
Name: AAYUSH JHANWAR   
---

## 📌 Tools Used
- Xilinx Vivado  
- Verilog HDL  
- GitHub
