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
- **XOR** outputs `1` when the inputs are different.
- **XNOR** outputs `1` when the inputs are the same.

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
Subtractors are the fundamental arithmetic blocks used in ALUs and processors.

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

# 🟩 Day-20: 8-bit ALU Design

## 📌 Objective
Design, implement, and verify an **8-bit Arithmetic Logic Unit (ALU)** using Verilog HDL.  
The ALU supports basic arithmetic and logical operations and is fully verified using simulation.

---

## 🧠 Concept Overview

### What is an ALU?
An **Arithmetic Logic Unit (ALU)** is a core digital block used in processors to perform:
- Arithmetic operations
- Logical operations

This 8-bit ALU is a **combinational circuit**, meaning the output depends only on the current inputs.

---

## 🔢 Supported Operations

| Select (sel) | Operation | Description |
|-------------|----------|-------------|
| `00` | ADD | `a + b` |
| `01` | SUB | `a - b` |
| `10` | AND | Bitwise AND |
| `11` | OR  | Bitwise OR |

---

## 🧱 RTL Design

- **File**: `alu_8bit.v`
- **Language**: Verilog HDL
- **Inputs**:
  - `a` : 8-bit operand
  - `b` : 8-bit operand
  - `sel` : 2-bit operation selector
- **Output**:
  - `y` : 8-bit ALU result
- **Design Type**: Purely combinational (`always @(*)`)

---

## 🧪 Testbench

- **File**: `tb_alu_8bit.v`
- Multiple test cases applied
- Verifies:
  - Addition
  - Subtraction
  - AND
  - OR
- Different input values are tested to ensure correctness

---

## 📸 Simulation & Elaboration Proof

### ✅ Simulation
Waveforms confirm correct ALU behavior for all operations.

📁 `images/alu_8bit_simulation.png`

### ✅ Elaboration
RTL schematic confirms proper combinational logic implementation.

📁 `images/alu_8bit_elaboration.png`

---

## ✅ Outcome
- Successfully designed an **8-bit ALU**
- Verified all operations using simulation
- Maintained clean, professional GitHub structure
- Added visual proof for validation

---

🔒 **Day-20 Complete**

----

# 🟩 Day-21: 4-bit Magnitude Comparator

## 📌 Objective
Design and verify a **4-bit magnitude comparator** using Verilog HDL.  
The comparator compares two 4-bit numbers and indicates whether:

- A > B  
- A == B  
- A < B  

Only **one output is asserted at a time**, ensuring correct magnitude comparison.

---

## 🧠 Concept Overview

A **magnitude comparator** is a fundamental combinational circuit used in:
- CPUs
- ALUs
- Control logic
- Digital decision-making circuits

This design compares two unsigned 4-bit inputs using relational operators.

---

## 🔢 Inputs & Outputs

### Inputs
- `a` : 4-bit input number  
- `b` : 4-bit input number  

### Outputs
- `a_gt_b` : High when `a > b`  
- `a_eq_b` : High when `a == b`  
- `a_lt_b` : High when `a < b`  

✔ Outputs are **mutually exclusive**

---

## 🧱 RTL Design

- **File**: `comparator_4bit.v`
- **Language**: Verilog HDL
- **Design Type**: Combinational logic
- **Method**:
  - Uses `if–else` comparison
  - Fully synthesizable
  - Simple and readable logic

---

## 🧪 Testbench

- **File**: `tb_comparator_4bit.v`
- Test cases include:
  - A > B
  - A == B
  - A < B
  - Boundary conditions (0 and maximum values)
- Confirms:
  - Correct output assertion
  - Only one comparison output is HIGH at a time

---

## 📸 Simulation & Elaboration Proof

### ✅ Simulation
Waveforms confirm correct comparator behavior for all test cases.

📁 `images/comparator_4bit_simulation.png`

### ✅ Elaboration
Elaborated RTL schematic verifies clean combinational implementation.

📁 `images/comparator_4bit_elaboration.png`

---

## ✅ Outcome
- Successfully designed a **4-bit magnitude comparator**
- Verified using simulation
- Clean, organized GitHub structure
- Includes visual proof for validation
- Interview- and professor-ready design

---

🔒 **Day-21 Complete**

----

# 🟩 Day-22: 8-bit Magnitude Comparator

## 📌 Objective
Design and verify an **8-bit magnitude comparator** using Verilog HDL.

The comparator evaluates two 8-bit inputs and indicates whether:
- **A > B**
- **A == B**
- **A < B**

At any time, **only one output is asserted**, ensuring correct and unambiguous comparison.

---

## 🧠 Concept Overview

A **magnitude comparator** is a fundamental combinational circuit widely used in:
- ALUs
- CPUs
- Control logic
- Digital decision-making systems

This design compares two **unsigned 8-bit numbers** using relational operators and produces mutually exclusive outputs.

---

## 🔢 Inputs & Outputs

### Inputs
- `a` : 8-bit input operand  
- `b` : 8-bit input operand  

### Outputs
- `a_gt_b` : High when `a > b`  
- `a_eq_b` : High when `a == b`  
- `a_lt_b` : High when `a < b`  

✔ Exactly **one output is HIGH** for any input combination.

---

## 🧱 RTL Design

- **File**: `comparator_8bit.v`
- **Language**: Verilog HDL
- **Design Type**: Combinational logic
- **Implementation Details**:
  - Uses `if–else` conditional comparisons
  - Fully synthesizable
  - Clear and readable RTL structure

---

## 🧪 Testbench

- **File**: `tb_comparator_8bit.v`
- Test cases cover:
  - A > B
  - A == B
  - A < B
  - Boundary cases (0 and maximum 8-bit values)
- Confirms:
  - Correct comparator functionality
  - Mutual exclusivity of outputs

---

## 📸 Simulation & Elaboration Proof

### ✅ Simulation
Waveform results validate correct comparator behavior for all test cases.

📁 `images/comparator_8bit_simulation.png`

### ✅ Elaboration
Elaborated RTL schematic confirms a clean combinational implementation.

📁 `images/comparator_8bit_elaboration.png`

---

## ✅ Outcome
- Successfully designed an **8-bit magnitude comparator**
- Verified functionality using simulation
- Maintained clean, professional GitHub structure
- Added visual proof for validation
- Interview- and professor-ready implementation

---

🔒 **Day-22 Complete**

----

🟩 Day-23: Parity Generator & Checker

📌 Objective  
Design and verify Even and Odd Parity Generator and Parity Checker circuits using Verilog HDL.  
This task focuses on understanding error detection basics used in digital communication and processors.

---

🧠 Concept Overview  

🔹 What is Parity?  
Parity is a simple error-detection technique where an extra bit is added to data to make the total number of 1s either:
- Even (Even Parity)
- Odd (Odd Parity)

🔹 Why Parity is Important?  
- Used in memory systems  
- Serial communication  
- Data integrity checking  
- Fundamental concept for ECC and reliability systems  

---

🔢 Types Implemented  

1️⃣ Even Parity  
- Parity bit is set so total number of 1s is **even**

2️⃣ Odd Parity  
- Parity bit is set so total number of 1s is **odd**

---

🧱 RTL Design  

📁 Folder: `combinational/24_parity_generator_checker/`

Implemented Modules:
- `parity_generator.v`
- `parity_checker.v`

Design Details:
- Pure combinational logic
- Parameterized for data width (if applicable)
- Clean, synthesizable Verilog
- No latches, no clock dependency

---

🧪 Testbench  

📁 Folder: `testbenches/24_parity_generator_checker/`

Testbenches:
- `tb_parity_generator.v`
- `tb_parity_checker.v`

Test Coverage:
- Random data patterns
- Both even and odd parity cases
- Error detection verified
- Self-checking waveform observation

---

📊 Verification Proof  

📁 Folder: `combinational/24_parity_generator_checker/images/`

Included Proofs:
- ✅ Simulation waveform screenshots  
- ✅ Elaborated design screenshots  

These confirm correct functional behavior and proper RTL structure.

---

✅ Results  

- Even parity generation works correctly  
- Odd parity generation works correctly  
- Parity checker accurately detects errors  
- Design verified through simulation and elaboration  

----

# 🟩 Day-24: Barrel Shifter (Logical)

## 📌 Objective
Design and implement an **8-bit Barrel Shifter** using Verilog HDL that supports:
- **Logical Left Shift**
- **Logical Right Shift**

The design performs variable shifts in **a single cycle** using combinational logic.

---

## 🧠 Concept Overview

### What is a Barrel Shifter?
A **barrel shifter** is a combinational circuit that shifts data by an arbitrary number of positions in **one operation**, unlike serial shifters that shift one bit per cycle.

Barrel shifters are widely used in:
- ALUs
- CPUs
- DSPs
- Data path designs

---

## 🔢 Supported Operations

| Direction (`dir`) | Operation |
|------------------|-----------|
| `0` | Logical Left Shift |
| `1` | Logical Right Shift |

- Shift amount is controlled by a **3-bit shift value**
- Vacated bit positions are filled with **zeros** (logical shift)

---

## 🧱 RTL Design

- **File**: `barrel_shifter.v`
- **Language**: Verilog HDL
- **Design Type**: Combinational
- **Inputs**:
  - `data_in [7:0]` : Input data
  - `shift_amt [2:0]` : Number of positions to shift
  - `dir` : Shift direction control
- **Output**:
  - `data_out [7:0]` : Shifted result

### Implementation Details
- Uses Verilog shift operators (`<<`, `>>`)
- Fully synthesizable
- No clock or reset required
- Clean and readable RTL

---

## 🧪 Testbench

- **File**: `tb_barrel_shifter.v`
- Test cases include:
  - Multiple left shifts
  - Multiple right shifts
  - Different shift amounts
- Verifies correct shifting behavior for all combinations

---

## ✅ Outcome
- Successfully implemented an **8-bit logical barrel shifter**
- Verified correct left and right shift behavior
- Maintained clean and modular GitHub organization
- Design is synthesis- and interview-ready



🔒 **Day-24 Complete**

----

# 🟩 Day-25: Clock Divider (Frequency Divider)

## 📌 Objective
Design and verify a **clock divider (frequency divider)** using Verilog HDL.

The goal is to generate a **lower-frequency clock** from a higher-frequency input clock using **sequential logic**.

---

## 🧠 Concept Overview

### What is a Clock Divider?
A **clock divider** is a digital circuit that reduces the frequency of an input clock by a fixed factor.

Clock dividers are commonly used in:
- Digital systems for timing control
- Processors and microcontrollers
- Communication interfaces
- Power optimization and clock management

---

## 🔢 Design Description

- The divider uses a **counter-based approach**
- The output clock toggles after a fixed number of input clock cycles
- Reset initializes the divider to a known state

This implementation divides the input clock by **2 × N**, where `N` is configurable.

---

## 🧱 RTL Design

- **File**: `clock_divider.v`
- **Language**: Verilog HDL
- **Design Type**: Sequential logic
- **Inputs**:
  - `clk_in` : Input clock
  - `rst` : Asynchronous active-high reset
- **Output**:
  - `clk_out` : Divided clock output
- **Key Features**:
  - Parameterized division factor
  - Counter-based implementation
  - Fully synthesizable

---

## 🧪 Testbench

- **File**: `tb_clock_divider.v`
- Generates a periodic input clock
- Applies reset
- Verifies that:
  - Output clock frequency is lower than input clock
  - Output toggles correctly after the expected number of cycles

---


## ✅ Outcome
- Successfully implemented a **clock divider**
- Verified frequency division through simulation
- Reinforced understanding of:
  - Counters
  - Sequential logic
  - Clock management
- Maintained clean, professional GitHub structure

---

## 🎯 Interview One-Liner
> “A clock divider reduces the frequency of an input clock using counter-based sequential logic and is widely used for timing control in digital systems.”

---

🔒 **Day-25 Complete**

----

# 🟩 Day-26: FIFO (Basic)

## 📌 Objective
Design and verify a **basic synchronous FIFO (First-In First-Out)** buffer using Verilog HDL.

The FIFO stores data in the order it is written and outputs data in the same order it was received.

---

## 🧠 Concept Overview

### What is a FIFO?
A **FIFO (First-In First-Out)** is a memory structure where:
- The **first data written** is the **first data read**
- Data ordering is preserved

FIFOs are widely used in:
- Data buffering
- Communication interfaces
- Producer–consumer systems
- Pipeline and data-flow designs

---

## 🔢 Design Description

- **FIFO Type**: Synchronous FIFO  
- **Depth**: Configurable (default 8 entries)  
- **Data Width**: Configurable (default 8 bits)

The design uses:
- Write pointer
- Read pointer
- Counter to track stored elements

---

## 🧱 RTL Design

- **File**: `fifo_basic.v`
- **Language**: Verilog HDL
- **Design Type**: Sequential logic
- **Inputs**:
  - `clk` : Clock input
  - `rst` : Asynchronous active-high reset
  - `wr_en` : Write enable
  - `rd_en` : Read enable
  - `din` : Input data
- **Outputs**:
  - `dout` : Output data
  - `full` : FIFO full flag
  - `empty` : FIFO empty flag

---

## 🧪 Testbench

- **File**: `tb_fifo_basic.v`
- Testbench operations:
  - Write multiple data values into FIFO
  - Read data out of FIFO
  - Verify FIFO order is preserved
  - Check `full` and `empty` flag behavior

---

## PROOFS ARE AVAILABLE 

---

## ✅ Outcome
- Successfully implemented a **basic FIFO**
- Verified correct FIFO behavior through simulation
- Strengthened understanding of:
  - Read/write pointers
  - Buffering mechanisms
  - Sequential logic design
- Maintained clean and professional GitHub organization

---

## 🎯 Interview One-Liner
> “A FIFO ensures first-in-first-out data ordering using separate read and write pointers and is commonly used for buffering and flow control.”

---

🔒 **Day-26 Complete**

----

🟩 Day-27: FIFO (Advanced / Robust FIFO)

━━━━━━━━━━━━━━━━━━━━━━━
📌 OBJECTIVE
━━━━━━━━━━━━━━━━━━━━━━━
Design and verify an **Advanced / Robust FIFO** using Verilog HDL.

This FIFO goes beyond a basic implementation by adding **parameterization, safety, and status flags**, making it suitable for **real-world designs and interviews**.

━━━━━━━━━━━━━━━━━━━━━━━
🧠 WHY THIS FIFO MATTERS
━━━━━━━━━━━━━━━━━━━━━━━
✔ Interviewers LOVE FIFO questions  
✔ Shows design maturity beyond basics  
✔ Demonstrates safe pointer & control logic  
✔ Used in processors, SoCs, buses, and pipelines  

This FIFO is **industry-aligned**, not just academic.

━━━━━━━━━━━━━━━━━━━━━━━
✨ FEATURES ADDED (LEVEL-UP)
━━━━━━━━━━━━━━━━━━━━━━━
✅ Parameterized **DATA WIDTH**  
✅ Parameterized **DEPTH**  
✅ `full` flag  
✅ `empty` flag  
✅ `almost_full` flag  
✅ `almost_empty` flag  
✅ Safe read/write pointer logic  
✅ Simultaneous read & write support  
✅ Synchronous reset  

━━━━━━━━━━━━━━━━━━━━━━━
🧱 RTL DESIGN
━━━━━━━━━━━━━━━━━━━━━━━
📄 File: `fifo_advanced.v`  
🛠 Language: Verilog HDL  
🧩 Design Type: Sequential (Single Clock FIFO)

🔹 Core Components:
- Memory array
- Write pointer
- Read pointer
- Element count register

🔹 Flag Generation:
- `full`         → FIFO completely filled  
- `empty`        → FIFO empty  
- `almost_full`  → Near full threshold  
- `almost_empty` → Near empty threshold  

All flags are **derived safely from the count value**.

━━━━━━━━━━━━━━━━━━━━━━━
🧪 TESTBENCH
━━━━━━━━━━━━━━━━━━━━━━━
📄 File: `tb_fifo_advanced.v`

✔ Writes multiple values into FIFO  
✔ Reads values out in correct order  
✔ Verifies:
- FIFO ordering (First-In First-Out)
- Correct assertion of `almost_full`
- Correct assertion of `almost_empty`
- No overflow or underflow  

━━━━━━━━━━━━━━━━━━━━━━━
📸 VERIFICATION STATUS
━━━━━━━━━━━━━━━━━━━━━━━
✅ Simulation waveform verified  
✅ FIFO order preserved  
✅ Flags behave as expected  
✅ Elaborated design confirms clean RTL structure  

━━━━━━━━━━━━━━━━━━━━━━━
✅ OUTCOME
━━━━━━━━━━━━━━━━━━━━━━━
✔ Implemented an **advanced, parameterized FIFO**  
✔ Verified safe data flow and control logic  
✔ Demonstrated real RTL design practices  
✔ Achieved interview-ready FIFO implementation  

━━━━━━━━━━━━━━━━━━━━━━━
🎯 INTERVIEW ONE-LINER
━━━━━━━━━━━━━━━━━━━━━━━
“A FIFO buffers data using read/write pointers and count-based control logic, ensuring safe and ordered data transfer.”

━━━━━━━━━━━━━━━━━━━━━━━
🔒 DAY-27 COMPLETE
━━━━━━━━━━━━━━━━━━━━━━━

🟩 Day-28: Arbiter (Round-Robin)

━━━━━━━━━━━━━━━━━━━━━━━
📌 OBJECTIVE
━━━━━━━━━━━━━━━━━━━━━━━
Design and verify a **Round-Robin Arbiter** using Verilog HDL.

The arbiter selects **one request at a time** from multiple requesters while ensuring **fairness** and preventing starvation.

This block is a **core interconnect component** used in buses, NoCs, DMA engines, and SoC fabrics.

━━━━━━━━━━━━━━━━━━━━━━━
🧠 WHY THIS MATTERS
━━━━━━━━━━━━━━━━━━━━━━━
✔ Widely used in SoC interconnects  
✔ Frequently asked in RTL interviews  
✔ Tests both combinational & sequential logic  
✔ Demonstrates fairness handling  

Understanding arbiters is essential for **system-level RTL design**.

━━━━━━━━━━━━━━━━━━━━━━━
✨ FEATURES IMPLEMENTED
━━━━━━━━━━━━━━━━━━━━━━━
✅ 4 request inputs  
✅ One-hot grant output  
✅ Round-robin fairness policy  
✅ No starvation  
✅ Sequential memory of last grant  
✅ Synthesizable & tool-safe RTL  

━━━━━━━━━━━━━━━━━━━━━━━
🧱 RTL DESIGN
━━━━━━━━━━━━━━━━━━━━━━━
📄 File: `arbiter_rr.v`  
🛠 Language: Verilog HDL  
🧩 Design Type: Sequential + Combinational

🔹 Key Components:
- `last_grant` register to track previous winner  
- Rotating priority logic using case statement  
- One-hot grant generation  

The arbiter checks requests **starting after the last granted requester**, ensuring fair rotation.

━━━━━━━━━━━━━━━━━━━━━━━
🧪 TESTBENCH
━━━━━━━━━━━━━━━━━━━━━━━
📄 File: `tb_arbiter_rr.v`

✔ All requesters active (fair rotation)  
✔ Partial request patterns  
✔ Single requester scenario  
✔ No-request idle condition  

Waveforms confirm **correct grant rotation** and **one-hot behavior**.

━━━━━━━━━━━━━━━━━━━━━━━
📸 VERIFICATION STATUS
━━━━━━━━━━━━━━━━━━━━━━━
✅ Simulation verified  
✅ One-hot grant ensured  
✅ Fairness observed  
✅ Elaborated design confirms clean RTL  

━━━━━━━━━━━━━━━━━━━━━━━
✅ OUTCOME
━━━━━━━━━━━━━━━━━━━━━━━
✔ Implemented a **round-robin arbiter**  
✔ Ensured fairness among requesters  
✔ Demonstrated real SoC control logic  
✔ Achieved interview-ready RTL quality  

━━━━━━━━━━━━━━━━━━━━━━━
🎯 INTERVIEW ONE-LINER
━━━━━━━━━━━━━━━━━━━━━━━
“A round-robin arbiter rotates priority after each grant to ensure fairness and prevent starvation.”

━━━━━━━━━━━━━━━━━━━━━━━
🔒 DAY-28 COMPLETE
━━━━━━━━━━━━━━━━━━━━━━━

----

🟩 Day-29: Register File (Multi-Port)

━━━━━━━━━━━━━━━━━━━━━━━
📌 OBJECTIVE
━━━━━━━━━━━━━━━━━━━━━━━
Design and verify a **multi-port register file** using Verilog HDL.

The register file supports:
- **2 read ports**
- **1 write port**
- **Synchronous write**
- **Combinational read**

This block directly maps to **CPU datapaths** and is a **must-have RTL core**.

━━━━━━━━━━━━━━━━━━━━━━━
🧠 WHY THIS MATTERS
━━━━━━━━━━━━━━━━━━━━━━━
✔ Core building block of processors  
✔ Frequently asked in **placements & GATE**  
✔ Tests sequential + combinational logic  
✔ Demonstrates multi-port memory handling  

Every CPU instruction relies on a register file.

━━━━━━━━━━━━━━━━━━━━━━━
✨ FEATURES IMPLEMENTED
━━━━━━━━━━━━━━━━━━━━━━━
✅ 8 registers × 8-bit width  
✅ Two independent read ports  
✅ One synchronous write port  
✅ Write enable control  
✅ Reset initializes all registers  
✅ Clean, synthesizable RTL  

━━━━━━━━━━━━━━━━━━━━━━━
🧱 RTL DESIGN
━━━━━━━━━━━━━━━━━━━━━━━
📄 File: `regfile_8x8.v`  
🛠 Language: Verilog HDL  
🧩 Design Type: Sequential write + Combinational read  

🔹 Ports:
- `clk` → clock  
- `rst` → reset  
- `we` → write enable  
- `waddr`, `wdata` → write address & data  
- `raddr1`, `raddr2` → read addresses  
- `rdata1`, `rdata2` → read outputs  

🔹 Design Characteristics:
- Write occurs on **clock edge**
- Reads reflect data **immediately**
- Supports parallel operand access

━━━━━━━━━━━━━━━━━━━━━━━
🧪 TESTBENCH
━━━━━━━━━━━━━━━━━━━━━━━
📄 File: `tb_regfile_8x8.v`

✔ Writes data to multiple registers  
✔ Reads from two registers simultaneously  
✔ Verifies correct write timing  
✔ Confirms combinational read behavior  

Waveforms validate proper register file operation.

━━━━━━━━━━━━━━━━━━━━━━━
✅ OUTCOME
━━━━━━━━━━━━━━━━━━━━━━━
✔ Implemented a **multi-port register file**  
✔ Verified read/write behavior through simulation  
✔ Strengthened CPU datapath understanding  
✔ Achieved placement & GATE aligned RTL  

━━━━━━━━━━━━━━━━━━━━━━━
🎯 INTERVIEW ONE-LINER
━━━━━━━━━━━━━━━━━━━━━━━
“A register file provides multiple combinational read ports and a synchronous write port to support parallel operand access in CPU datapaths.”

━━━━━━━━━━━━━━━━━━━━━━━
🔒 DAY-29 COMPLETE
━━━━━━━━━━━━━━━━━━━━━━━


🟩 Day-30: UART Transmitter (TX Only)
🏁 FINAL DAY — 30-DAY RTL CORE BLOCK CHALLENGE

━━━━━━━━━━━━━━━━━━━━━━━
🎯 OBJECTIVE
━━━━━━━━━━━━━━━━━━━━━━━
Design and verify a **UART Transmitter (TX-only)** using Verilog HDL.

This design implements a **real-world serial communication peripheral**, completing the 30-day RTL core blocks journey with an **industry-relevant module**.

━━━━━━━━━━━━━━━━━━━━━━━
🔥 WHY THIS IS A STRONG FINISH
━━━━━━━━━━━━━━━━━━━━━━━
✔ UART is used in SoCs, MCUs, FPGAs, debug ports  
✔ Tests FSM design, timing, counters, and control logic  
✔ Bridges theory → real hardware behavior  
✔ Frequently discussed in interviews and labs  

Ending with UART proves **practical RTL maturity**, not just academic knowledge.

━━━━━━━━━━━━━━━━━━━━━━━
✨ FEATURES IMPLEMENTED
━━━━━━━━━━━━━━━━━━━━━━━
✅ UART Transmitter (TX only)  
✅ FSM-based control logic  
✅ Baud-rate tick generation  
✅ Start bit, 8 data bits, stop bit  
✅ LSB-first transmission  
✅ Busy status signal  
✅ Parameterized clock & baud rate  

━━━━━━━━━━━━━━━━━━━━━━━
🧱 RTL DESIGN
━━━━━━━━━━━━━━━━━━━━━━━
📄 File: `uart_tx.v`  
🛠 Language: Verilog HDL  
🧩 Design Type: Sequential FSM + Timing Control  

🔹 FSM States:
- **IDLE**  → Waits for transmit request  
- **START** → Sends start bit (`0`)  
- **DATA**  → Sends 8 data bits (LSB first)  
- **STOP**  → Sends stop bit (`1`)  

🔹 Timing:
- Baud rate generated using a **counter**
- Each bit is held for one baud period
- UART idle line remains HIGH

━━━━━━━━━━━━━━━━━━━━━━━
🧪 TESTBENCH
━━━━━━━━━━━━━━━━━━━━━━━
📄 File: `tb_uart_tx.v`

✔ Drives `tx_start` with sample data  
✔ Observes correct serial bit sequence  
✔ Verifies busy flag behavior  
✔ Confirms start → data → stop timing  

Waveforms clearly show **UART frame structure**.

━━━━━━━━━━━━━━━━━━━━━━━
📂 FOLDER STRUCTURE
━━━━━━━━━━━━━━━━━━━━━━━
rtl_core_blocks/
└── 30_uart_tx/
    ├── uart_tx.v
    └── README.md

testbenches/
└── 30_uart_tx/
    └── tb_uart_tx.v

━━━━━━━━━━━━━━━━━━━━━━━
🏆 30-DAY CHALLENGE — FINAL OUTCOME
━━━━━━━━━━━━━━━━━━━━━━━
✔ Completed **30 RTL core blocks**  
✔ Covered combinational, sequential, FSM-based designs  
✔ Built CPU datapath components (ALU, FIFO, RF, Arbiter)  
✔ Implemented real peripherals (UART)  
✔ Maintained clean, professional GitHub structure  
✔ Followed strict build → copy → commit discipline  

This repository now represents **placement-ready RTL work**.

“I implemented a UART transmitter using an FSM with baud-rate timing, start/data/stop framing, and busy control — similar to real SoC peripherals.”

━━━━━━━━━━━━━━━━━━━━━━━
🔒 DAY-30 COMPLETE
🎉 30-DAY RTL CORE BLOCKS CHALLENGE COMPLETE
━━━━━━━━━━━━━━━━━━━━━━━

----















