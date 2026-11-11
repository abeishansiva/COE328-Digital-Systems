# COE 328 Lab 1 – Intro to Quartus and VHDL

COE 328 – Digital Systems lab project. Built with Intel/Altera Quartus II (13.0sp1) for the Cyclone II `EP2C35F672C6` (DE2 board), simulated with ModelSim / Quartus waveform simulation.

## Contents
| Folder | Description |
|---|---|
| `Coe-328/` | Part 1 – schematic (`P1.bdf`) design with waveform simulation |
| `COe-328_2/` | Part 2 – VHDL design `lab1_vhdl1.vhd`: `f = (x1·x2) + (x2'·x3)` |
| `Coe-328#3/` | Part 3 – VHDL entities `lab1_vhdl1` and `lab1_vhdl2` (`g = w1·w2 + w3·w4`, `h = w1·w3 + w2·w4`) combined in `Part3.bdf` |

## Opening the project
Open the `.qpf` project file in Quartus II, compile (Processing → Start Compilation), and use the `.vwf` waveform files for functional simulation.

## Notes
Quartus build artifacts (`db/`, `incremental_db/`, backups) are excluded via `.gitignore`; they are regenerated on compile.
