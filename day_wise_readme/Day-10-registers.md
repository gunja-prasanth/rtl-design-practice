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
