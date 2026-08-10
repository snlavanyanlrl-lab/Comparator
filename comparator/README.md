# 2-Bit Magnitude Comparator using Verilog

## Overview

This project implements a **2-bit Magnitude Comparator** in Verilog HDL.

The comparator compares two 2-bit binary numbers (`A` and `B`) and generates one of three outputs:

- **A_greater** = 1 when A > B
- **A_equal** = 1 when A = B
- **A_less** = 1 when A < B

Only one output is HIGH at a time.

---

## Truth Table

| A | B | A > B | A = B | A < B |
|---|---|---------|---------|---------|
|00|00|0|1|0|
|01|10|0|0|1|
|10|01|1|0|0|
|11|11|0|1|0|
|00|11|0|0|1|
|11|01|1|0|0|

---

## Project Files

- comparator2bit.v – Verilog design
- comparator2bit_tb.v – Testbench
- comparator.vcd – Waveform file
- simulation.png – Waveform screenshot
- README.md – Documentation

---

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- ModelSim
- Xilinx Vivado

---

## How to Run

### Compile

```bash
iverilog -o comparator comparator2bit.v comparator2bit_tb.v
```

### Simulate

```bash
vvp comparator
```

### View Waveform

```bash
gtkwave comparator.vcd
```

---

## Expected Results

| A | B | GT | EQ | LT |
|---|---|----|----|----|
|00|00|0|1|0|
|01|10|0|0|1|
|10|01|1|0|0|
|11|11|0|1|0|
|00|11|0|0|1|
|10|10|0|1|0|
|11|01|1|0|0|
|01|00|1|0|0|

---

## Applications

- Arithmetic Logic Units (ALUs)
- Digital Decision-Making Circuits
- CPU Control Units
- Sorting and Comparison Circuits
- Embedded Systems

---

## Author

Your Name

## License

MIT License