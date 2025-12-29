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
