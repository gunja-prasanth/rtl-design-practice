# RTL Design Practice

This repository contains RTL designs and verification testbenches for fundamental digital logic blocks.
All designs are written in **Verilog** and verified using **Vivado simulation**.

The work is organized day-wise to show structured learning and progressive complexity.

---

## 📘 Day 1 – Basic Logic Gates

### Implemented Modules
- AND gate
- OR gate
- NOT gate

### Verification
- One combined testbench to verify all basic gates  
- Testbench file: `tb_basic_gates.v`
- Simulation tool: Vivado

### Files
**combinational/**
- `and_gate.v`
- `or_gate.v`
- `not_gate.v`

**testbenches/**
- `tb_basic_gates.v`

---

## 📗 Day 2 – Universal & Exclusive Gates

### Implemented Modules
- NAND gate
- NOR gate
- XOR gate
- XNOR gate

### Verification
- One combined testbench to verify all four gates  
- Testbench file: `tb_universal_gates.v`
- Simulation tool: Vivado

### Files
**combinational/**
- `nand_gate.v`
- `nor_gate.v`
- `xor_gate.v`
- `xnor_gate.v`

**testbenches/**
- `tb_universal_gates.v`

---

## 🔢 Day 2 Truth Table (Verified in Simulation)

| A | B | NAND | NOR | XOR | XNOR |
|---|---|------|-----|-----|------|
| 0 | 0 |  1   |  1  |  0  |  1   |
| 0 | 1 |  1   |  0  |  1  |  0   |
| 1 | 0 |  1   |  0  |  1  |  0   |
| 1 | 1 |  0   |  0  |  0  |  1   |

---

## 🧠 Concept Notes

- **NAND and NOR** are called *universal gates* because any logic function can be built using them.
- **XOR** outputs `1` when inputs are different.
- **XNOR** outputs `1` when inputs are the same.

---

## 🔢 Day 3 – Adders (Half Adder & Full Adder)

### Implemented Modules
- Half Adder
- Full Adder

### Verification
- Separate testbenches for each adder  
- Simulation tool: Vivado

### Files
**combinational/**
- `half_adder.v`
- `full_adder.v`

**testbenches/**
- `tb_half_adder.v`
- `tb_full_adder.v`

---

## 🧮 Day 3 Truth Tables (Verified in Simulation)

### Half Adder

| A | B | Sum | Carry |
|---|---|-----|-------|
| 0 | 0 |  0  |   0   |
| 0 | 1 |  1  |   0   |
| 1 | 0 |  1  |   0   |
| 1 | 1 |  0  |   1   |

### Full Adder

| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
| 0 | 0 |  0  |  0  |  0   |
| 0 | 0 |  1  |  1  |  0   |
| 0 | 1 |  0  |  1  |  0   |
| 0 | 1 |  1  |  0  |  1   |
| 1 | 0 |  0  |  1  |  0   |
| 1 | 0 |  1  |  0  |  1   |
| 1 | 1 |  0  |  0  |  1   |
| 1 | 1 |  1  |  1  |  1   |

---

## 🧠 Concept Notes
- Half Adder adds two 1-bit inputs and produces Sum and Carry.
- Full Adder adds three 1-bit inputs (A, B, Cin).
- Full Adders are used as building blocks for multi-bit adders.
- Carry propagation is a key factor in adder performance.

## 🔹 Day-4: Subtractors (Combinational Circuits)

This section covers the design and verification of subtractor circuits using Verilog HDL.  
Subtractors are fundamental arithmetic blocks used in ALUs and processors.

### 📁 RTL Modules
Location: `combinational/subtractors/`

- `half_subtractor.v`
  - Performs subtraction of two 1-bit inputs (a − b)
  - Outputs:
    - Difference
    - Borrow

- `full_subtractor.v`
  - Performs subtraction with borrow input (a − b − bin)
  - Outputs:
    - Difference
    - Borrow out

### 📁 Testbenches
Location: `testbenches/subtractors/`

- `tb_half_subtractor.v`
- `tb_full_subtractor.v`

Each testbench verifies all possible input combinations to ensure correct borrow and difference logic.

### 🧠 Concepts Covered
- Half Subtractor logic
- Full Subtractor logic
- Borrow generation
- XOR-based difference calculation
- Structured RTL and testbench organization

✔️ All designs are simulated and verified using Vivado  
✔️ Clean folder structure maintained for easy readability and review

## Day-5: Multiplexers

This section contains RTL implementations of multiplexers using Verilog.

### Implemented Modules
- 2:1 Multiplexer
- 4:1 Multiplexer (Hierarchical design using 2:1 multiplexers)

### Folder Structure
combinational/multiplexers/
- mux_2to1.v
- mux_4to1.v

testbenches/multiplexers/
- tb_mux_2to1.v
- tb_mux_4to1.v

### Key Concept
A 4:1 multiplexer is implemented using three 2:1 multiplexers to demonstrate hierarchical and modular RTL design.

### Day-6: Demultiplexers

This section contains RTL implementations of demultiplexers using Verilog.

### Implemented Modules
1:2 Demultiplexer  
1:4 Demultiplexer  

### Folder Structure

combinational/demultiplexers/  
├── demux_1x2.v  
├── demux_1x4.v  

testbenches/demultiplexers/  
├── tb_demux_1x2.v  
├── tb_demux_1x4.v  

### Key Concept  
A demultiplexer routes a single input signal to one of multiple outputs based on select lines, ensuring that only one output is active at a time.
