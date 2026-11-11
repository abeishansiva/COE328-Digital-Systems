# COE 328 Lab 2 – Schematic Design and Simulation

COE 328 – Digital Systems lab project. Built with Intel/Altera Quartus II (13.0sp1) for the Cyclone II `EP2C35F672C6` (DE2 board), simulated with ModelSim / Quartus waveform simulation.

## Contents
- `Simulation.bdf` – top-level schematic (top-level entity `Simulation`)
- `coe328_lab2.bdf`, `Block1.bdf` – supporting block diagram files
- `Waveform.vwf` – simulation waveform

## Opening the project
Open the `.qpf` project file in Quartus II, compile (Processing → Start Compilation), and use the `.vwf` waveform files for functional simulation.

## Notes
Quartus build artifacts (`db/`, `incremental_db/`, backups) are excluded via `.gitignore`; they are regenerated on compile.
