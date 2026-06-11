# 27-BCD-Adder

## Overview
This project implements a BCD (Binary Coded Decimal) Adder using Verilog HDL. The circuit adds two BCD digits along with an optional carry input and produces a valid BCD output. If the binary sum exceeds 9, a correction factor of 6 is added to generate the correct BCD result.

## Features
* Verilog HDL implementation
* BCD digit addition with carry input
* Automatic BCD correction logic
* Simulation and verification using a testbench
* FPGA compatible design
* Simple and modular code structure

## Theory
A BCD adder performs the addition of two decimal digits represented in Binary Coded Decimal format. After binary addition, if the result is greater than 9 (1001) or produces a carry, the value 6 (0110) is added to obtain a valid BCD digit.

## Tools Used
* Verilog HDL
* Xilinx Vivado
* ModelSim / Vivado Simulator

## Simulation Test Cases
| A | B | Cin | Sum | Cout |
| - | - | --- | --- | ---- |
| 3 | 4 | 0   | 7   | 0    |
| 5 | 5 | 0   | 0   | 1    |
| 8 | 7 | 0   | 5   | 1    |
| 9 | 9 | 0   | 8   | 1    |
| 6 | 2 | 1   | 9   | 0    |

## Applications
* Digital Calculators
* Digital Clocks
* Embedded Systems
* FPGA-Based Designs
* Arithmetic Processing Units


