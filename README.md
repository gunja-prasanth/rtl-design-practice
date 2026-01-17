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

----

# 🗓️ Day-9: Flip-Flops

This module covers **edge-triggered storage elements (Flip-Flops)**, which are the backbone of synchronous digital systems.

All flip-flops are implemented in **Verilog HDL** and verified using **separate testbenches**.

---

## 🔹 D Flip-Flop (D FF)

### Description
- Stores 1-bit data on the active clock edge
- Input: **D (Data)**, **Clock**
- On clock edge → Output captures D
- Eliminates transparency issue seen in latches

### Files
- RTL: `d_ff.v`
- Testbench: `tb_d_ff.v`

---

## 🔹 JK Flip-Flop (JK FF)

### Description
- Improvement over SR flip-flop
- Inputs: **J**, **K**, **Clock**
- Behavior:
  - J = 0, K = 0 → No change
  - J = 1, K = 0 → Set
  - J = 0, K = 1 → Reset
  - J = 1, K = 1 → Toggle

### Files
- RTL: `jk_ff.v`
- Testbench: `tb_jk_ff.v`

---

## 🔹 T Flip-Flop (T FF)

### Description
- Derived from JK flip-flop
- Input: **T (Toggle)**, **Clock**
- T = 1 → Output toggles
- T = 0 → Output holds state
- Commonly used in counters

### Files
- RTL: `t_ff.v`
- Testbench: `tb_t_ff.v`

---

## ✅ Status
✔ D Flip-Flop implemented and verified  
✔ JK Flip-Flop implemented and verified  
✔ T Flip-Flop implemented and verified  
✔ Separate RTL and testbench folders maintained  

---

## 🧠 Key Learnings
- Flip-flops are **edge-triggered**
- Used in registers, counters, and FSMs
- More stable than latches in synchronous designs

----

# Day-10: Registers (4-bit Register with Enable & Reset)

## 📘 Overview
This module implements a **4-bit synchronous register** with **enable** and **reset** control.
Registers are used to store data and update only on clock edges.

---

## 🧠 Concept (Simple Explanation)
- Register stores **4 bits of data**
- Data updates on **positive clock edge**
- **Reset** clears the register to `0000`
- **Enable** controls whether new data is loaded

---

## ⚙️ Inputs and Outputs

| Signal | Direction | Description |
|------|----------|-------------|
| clk | Input | Clock signal |
| reset | Input | Clears register |
| enable | Input | Allows data loading |
| d[3:0] | Input | Data input |
| q[3:0] | Output | Stored data |

---

## 🔁 Working Logic

| Reset | Enable | Operation |
|-----|--------|-----------|
| 1 | X | Clear register |
| 0 | 1 | Load new data |
| 0 | 0 | Hold previous value |

---

## 🧪 Verification
- Testbench applies reset, enable, and data patterns
- Output updates only on clock edge
- Reset correctly clears output

---

# Day-11: Counters

## Designs Implemented
- Up Counter
- Down Counter

## Description
This day focuses on synchronous counter designs implemented using
clock-driven sequential logic.

## Key Concepts
- Clocked always blocks
- Reset logic
- Count increment and decrement
- Synchronous design methodology

## Related RTL Location
- sequential/11_counters/

## Commit Message
Implement synchronous counters

----

# Day-12: Mod-N Counters

## Designs Implemented
- Mod-10 Counter
- Mod-8 Counter

## Description
This day covers modulo-N counters that automatically reset after
reaching a predefined terminal count.

## Key Concepts
- Counter rollover logic
- Modulo arithmetic
- Controlled reset conditions

## Related RTL Location
- sequential/12_mod_n_counters/

## Commit Message
Add mod-N counters

----

# Day-13: Shift Registers

## Designs Implemented
- SISO
- SIPO
- PISO
- PIPO

## Description
This day focuses on various shift register architectures used for
serial and parallel data transfer.

## Key Concepts
- Serial vs parallel data flow
- Register-based storage
- Data shifting mechanisms

## Related RTL Location
- sequential/13_shift_registers/

## Commit Message
Add shift register designs

----

# Day-14: Moore FSM

## Design Implemented
- Basic Moore Finite State Machine

## Description
This design demonstrates a Moore FSM where the output depends
only on the current state and not directly on the input.

## Key Concepts
- State encoding
- State register
- Next-state logic
- Moore vs Mealy FSM

## Related RTL Location
- fsm/13_moore_fsm/
- testbenches/13_moore_fsm/

## Commit Message
Add Moore FSM example

----

# Day-15: Mealy FSM

## Objective
To design and verify a Mealy Finite State Machine (FSM) using pure Verilog.

## Description
This project implements a simple Mealy FSM that detects the input sequence **"10"**.
The output depends on both the **current state** and the **current input**, which is the defining property of a Mealy machine.

## FSM Behavior
- Input  : x
- Output : y
- Output `y` becomes HIGH for one clock cycle when the sequence **1 followed by 0** is detected.

## State Definition
- S0 : Waiting for input '1'
- S1 : Detected input '1'

| Current State | Input (x) | Next State | Output (y) |
|--------------|-----------|------------|------------|
| S0 | 0 | S0 | 0 |
| S0 | 1 | S1 | 0 |
| S1 | 1 | S1 | 0 |
| S1 | 0 | S0 | 1 |

## Files
- RTL Design: `fsm/14_mealy_fsm/mealy_fsm.v`
- Testbench: `testbenches/14_mealy_fsm/tb_mealy_fsm.v`

## Tools Used
- Vivado 2018.2
- Verilog HDL (no SystemVerilog features)

## Notes
- Designed using pure Verilog for maximum tool compatibility.
- Verified using behavioral simulation.

----

🟩 Day-16: Sequence Detector (1011 – Overlapping)

📌 Objective

Design and verify a **1011 overlapping sequence detector** using a **Mealy Finite State Machine (FSM)**.

The detector asserts output **z = 1** immediately when the input sequence **1011** is detected, and supports **overlapping sequences**.

---

🧠 Concept Overview

- **FSM Type:** Mealy FSM  

- **Why Mealy?**  
  Output depends on **current state + current input**, allowing **faster detection**.

- **Overlapping:**  
  After detecting **1011**, the FSM continues from a valid intermediate state instead of resetting completely.

---

🔄 State Explanation

| State | Meaning |
|------|--------|
| S0 | No match |
| S1 | Detected `1` |
| S2 | Detected `10` |
| S3 | Detected `101` |

### Overlapping Logic

When in **S3** and input **x = 1**:

- Sequence **1011** is detected → **z = 1**
- FSM transitions to **S1**, allowing overlap

---

🧱 RTL Design

- **File:** `seq_1011.v`  
- **Language:** Verilog  
- **Reset:** Asynchronous active-high  
- **Output:** `z` asserted for **one clock cycle**

---

🧪 Testbench

- **File:** `tb_seq_1011.v`

- **Input stream tested:**

- **Expected behavior:**
- `z = 1` at the **4th** and **9th** bits
- Confirms **overlapping detection**

----

# Day-17: Traffic Light Controller FSM 🚦

## 📌 Objective
Design and verify a simple Traffic Light Controller using a Finite State Machine (FSM).

The controller cycles through:
RED → GREEN → YELLOW → RED

This design focuses on FSM fundamentals without timing counters.

---

## 🧠 Concept Overview

- FSM Type: Moore FSM  
- State changes occur on the positive edge of the clock  
- Outputs depend only on the current state  

---

## 🧩 State Description

| State  | Red | Yellow | Green |
|------|-----|--------|-------|
| RED    | 1 | 0 | 0 |
| GREEN  | 0 | 0 | 1 |
| YELLOW | 0 | 1 | 0 |

---

## 🏗️ RTL Design

- File: `traffic_light_fsm.v`
- States encoded using parameters
- Separate always blocks for:
  - State register
  - Next-state logic
  - Output logic

---

## 🧪 Verification

- Testbench: `tb_traffic_light_fsm.v`
- Clock-driven simulation
- Reset initializes FSM to RED
- Verified state sequence in waveform

----

# Day-18: Vending Machine FSM (RTL)

## Objective
Design a coin-based vending machine using a Finite State Machine (FSM).

## FSM Type
Moore FSM

## Specifications
- Accepted coins: ₹5 and ₹10
- Item price: ₹15
- Dispense signal asserted when total reaches ₹15
- Machine resets automatically after dispensing

## State Description
- S0  : ₹0 collected
- S5  : ₹5 collected
- S10 : ₹10 collected

## Inputs
- clk     : System clock
- reset   : Asynchronous reset
- coin_5  : ₹5 coin input
- coin_10 : ₹10 coin input

## Output
- dispense : Goes HIGH for one clock cycle when item is dispensed

## RTL File
- vending_machine_fsm.v

----

# Day-19: FSM Optimization

## Objective
The objective of this task is to optimize a Finite State Machine (FSM) by
reducing unnecessary states and improving code readability, while preserving
the original functional behavior.

This task focuses on writing clean, efficient, and maintainable RTL code,
which is critical for real-world hardware design and interviews.

---

## What is FSM Optimization?
FSM optimization is the process of:
- Removing redundant or unreachable states
- Merging equivalent states
- Simplifying state transitions
- Improving readability without changing functionality

An optimized FSM uses fewer hardware resources and is easier to debug and
maintain.

---

## Optimization Performed
- Reduced the total number of states to the minimum required
- Eliminated redundant intermediate states
- Simplified next-state transition logic
- Used clear and consistent state encoding
- Maintained identical external behavior after optimization

---

## FSM Type
Moore FSM  
(Output depends only on the current state)

---

## Design Overview
- The FSM transitions between states based on input `x`
- Output `y` is asserted only in the valid active state
- Reset brings the FSM back to the initial state
- All transitions occur synchronously with the clock

---

## Inputs
- `clk`   : System clock
- `reset` : Asynchronous reset
- `x`     : Input signal controlling state transitions

## Output
- `y` : Output signal asserted in the active state

---

## Files
- `fsm_optimized.v` : Optimized FSM RTL implementation

---

## Key Learning Outcomes
- Understanding state reduction techniques
- Writing clean and synthesizable FSM code
- Designing efficient state machines
- Improving RTL readability for reviews and interviews

---

## Notes
This optimized FSM demonstrates that good design is not about adding more
states or complexity, but about achieving correct behavior with minimal and
clean logic.

----

# 🟩 Day-19: 4-bit ALU Design

## 📌 Objective

Design and verify a **4-bit Arithmetic Logic Unit (ALU)** using Verilog RTL.

The ALU supports basic arithmetic and logical operations and is fully verified using a testbench with simulation proof.

---

## 🧠 Concept Overview

An **ALU (Arithmetic Logic Unit)** is a core block of any processor.  
It performs arithmetic and logical operations on binary data.

### Supported Operations

| Select (sel) | Operation |
|-------------|----------|
| 00          | Addition (A + B) |
| 01          | Subtraction (A - B) |
| 10          | Bitwise AND |
| 11          | Bitwise OR |

- Width: **4-bit**
- Design Type: **Combinational**
- Output updates immediately based on inputs and select line

---

## 🧱 RTL Design

- **File:** `alu_4bit.v`
- **Language:** Verilog HDL
- **Inputs:**  
  - `A[3:0]`, `B[3:0]`  
  - `sel[1:0]`
- **Output:**  
  - `Y[3:0]`

The ALU uses a `case` statement to select the operation based on `sel`.

---

## 🧪 Testbench

- **File:** `tb_alu_4bit.v`
- All ALU operations are tested with different input combinations.
- Ensures correct functionality for:
  - Addition
  - Subtraction
  - AND
  - OR

---

## 📸 Verification Proof

### ✅ Simulation Result
Shows correct ALU output for all select operations.

![ALU Simulation](images/alu_4bit_simulation.png)

### ✅ Elaborated Design
Confirms correct RTL structure and logic connectivity.

![ALU Elaborated](images/alu_4bit_elaborated.png)

---

## 🧠 Key Learnings

- How to design a combinational ALU in RTL
- Using `case` statements for operation selection
- Writing a structured testbench
- Verifying design using waveform and elaboration
- Maintaining clean GitHub project structure

----







