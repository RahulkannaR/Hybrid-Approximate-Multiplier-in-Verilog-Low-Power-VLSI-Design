## Hybrid Approximate Multiplier (Verilog + Vivado)

This project implements a **hybrid approximate multiplier** in Verilog that switches between exact and approximate modes based on operand size. It offers an energy-efficient solution for **error-tolerant applications** like image processing and embedded ML.

---

### 📌 Features

* Hybrid control logic: dynamic switching based on input size
* Exact mode for high accuracy (A, B < 100)
* Approximate mode for power-saving (A, B ≥ 100)
* Testbench-driven simulation in **Vivado**

---

### 🧰 Tools Used

* **Vivado 2024.2**
* **Verilog HDL**
* **XSIM Simulation**

---

### 💡 Concepts Covered

* Approximate computing
* RTL design & modular Verilog
* Area-delay-power tradeoff

---

### 📈 Synthesis Summary (Vivado)

| Metric      | Value |
| ----------- | ----- |
| LUTs Used   | 81    |
| DSP Blocks  | 0     |
| Slice Usage | 0.2%  |
| Registers   | 0     |

---

### 📊 Output Examples

| A   | B   | Mode   | Output (P) |
| --- | --- | ------ | ---------- |
| 10  | 20  | Exact  | 200        |
| 255 | 255 | Approx | \~57600    |

---

### 🧪 How to Simulate

1. Clone the repo
2. Open Vivado > Create RTL Project
3. Add `hybrid_multiplier.v` and `tb_hybrid_multiplier.v`
4. Run **Behavioral Simulation**
5. Observe outputs in waveform or console

---

### 🚀 Future Improvements

* Add partial lower-bit correction
* Implement pipelined version
* Target real FPGA board (Basys 3, Zedboard)
