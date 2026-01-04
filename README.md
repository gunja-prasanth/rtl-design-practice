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
----
🗓️ Day-7: Encoders & Decoders (Combinational Logic)

This task focuses on the design and verification of encoders and decoders, which are fundamental building blocks in combinational digital logic.
All designs are written in Verilog HDL and verified using separate testbenches following proper RTL design practices.

🔹 Modules Implemented
1️⃣ 3:8 Decoder
- Converts 3-bit binary input into 8 unique output lines
- Only one output is HIGH for any valid input
- Used in memory selection, instruction decoding, and address decoding

2️⃣ 8:3 Encoder
- Converts one-hot 8-bit input into a 3-bit binary output
- Assumes only one input is active at a time
- Used in data compression and digital systems

3️⃣ 8:3 Priority Encoder
- Handles multiple active inputs
- Assigns priority to the highest-order input
- Produces a valid encoded output even if multiple inputs are HIGH

### Description
- Implemented standard combinational encoder and decoder circuits using Verilog.
- Priority encoder resolves multiple active inputs by assigning priority.
- Separate folders maintained for RTL design and testbenches.
- All modules verified using self-checking testbenches.
----

# Day-8: Latches

This module covers basic **level-sensitive storage elements (Latches)**.
Latches are used to temporarily store data and are controlled by an enable signal.

---

## 🔹 SR Latch

### Description
- SR (Set-Reset) latch stores 1-bit data.
- Inputs: **S (Set)** and **R (Reset)**.
- When enabled:
  - S = 1 → Output is set to 1
  - R = 1 → Output is reset to 0
  - S = R = 0 → Output holds previous value
- S = R = 1 is an **invalid condition**.

### Files
- RTL: `sr_latch.v`
- Testbench: `tb_sr_latch.v`

---

## 🔹 D Latch

### Description
- D latch removes the invalid condition of SR latch.
- Input: **D (Data)** and **Enable**.
- When Enable = 1 → Output follows D.
- When Enable = 0 → Output holds previous value.
- It is **level-sensitive**, not edge-triggered.

### Files
- RTL: `d_latch.v`
- Testbench: `tb_d_latch.v`

---



## ✅ Status

✔ SR Latch implemented and verified  
✔ D Latch implemented and verified  
✔ Separate RTL and testbench folders maintained  

---

## 🧠 Key Learning

- Latches are **level-sensitive**
- Flip-flops are **edge-triggered**
- Latches are simple but risky in synchronous designs
- Used carefully in low-power and gated designs



