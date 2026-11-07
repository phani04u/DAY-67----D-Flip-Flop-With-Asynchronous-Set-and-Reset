# Day 67: D Flip-Flop With Asynchronous Set and Reset

## Introduction

A D Flip-Flop is a sequential circuit used to store one bit of data. It transfers the input D to the output Q at the rising edge of the clock.

Asynchronous Set and Reset are additional control inputs that can change the output immediately without waiting for the clock signal.

In this project, three types of D Flip-Flops are designed using Verilog HDL and simulated using Xilinx Vivado.

---

# D Flip-Flop With Asynchronous Set

## Design

Implemented a positive-edge-triggered D Flip-Flop with an asynchronous Set input. When SET is HIGH, the output Q immediately becomes 1. Otherwise, the input D is stored at the rising edge of the clock.

## Testbench

Created a Verilog testbench to verify the asynchronous Set operation and normal data storage.

## Waveform

The simulation waveform shows that Q becomes HIGH immediately when SET is activated, without waiting for the clock signal.

## Schematic

Generated the RTL schematic in Xilinx Vivado to understand the internal structure of the asynchronous Set D Flip-Flop.

---

# D Flip-Flop With Asynchronous Reset

## Design

Implemented a positive-edge-triggered D Flip-Flop with an asynchronous Reset input. When RESET is HIGH, the output Q immediately becomes 0. Otherwise, the input D is stored at the rising edge of the clock.

## Testbench

Created a Verilog testbench to verify the asynchronous Reset operation and normal data storage.

## Waveform

The simulation waveform shows that Q becomes LOW immediately when RESET is activated, without waiting for the clock signal.

## Schematic

Generated the RTL schematic in Xilinx Vivado to understand the internal structure of the asynchronous Reset D Flip-Flop.

---

# D Flip-Flop With Asynchronous Set and Reset

## Design

Implemented a positive-edge-triggered D Flip-Flop with both asynchronous Set and Reset inputs. The Set input makes Q HIGH, while the Reset input makes Q LOW immediately without waiting for the clock signal.

## Testbench

Created a Verilog testbench to verify the asynchronous Set, asynchronous Reset, and normal data storage operations.

## Waveform

The simulation waveform shows the output response when Set and Reset are activated individually and during normal clock operation.

## Schematic

Generated the RTL schematic in Xilinx Vivado to understand the internal structure and connections of the combined design.

---

## Comparison

| Feature | Asynchronous Set | Asynchronous Reset | Both |
|---|---|---|---|
| Control input | SET | RESET | SET and RESET |
| Active operation | Q = 1 | Q = 0 | Depends on active input |
| Clock required for control | No | No | No |
| Normal operation | D captured at rising edge | D captured at rising edge | D captured at rising edge |

## Applications

- Used in digital sequential circuits.
- Used for initializing flip-flop outputs.
- Used in control circuits and digital systems.
- Used in processor and register design.
- Used in reset and initialization circuits in VLSI systems.

## Tools Used

- Verilog HDL
- Xilinx Vivado

## Learning Outcome

Learned how asynchronous Set and Reset operations work in D Flip-Flops. Understood how control inputs can change the output independently of the clock signal. Verified all three designs using Verilog testbenches, simulation waveforms, and RTL schematics.

## Project Status

Completed – Day 67 of 100 Days of RTL Design Challenge.
