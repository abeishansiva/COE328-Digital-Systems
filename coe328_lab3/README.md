# COE 328 Lab 3 – Adder/Subtractor Unit and 7-Segment Display

COE 328 – Digital Systems lab project. Built with Intel/Altera Quartus II (13.0sp1) for the Cyclone II `EP2C35F672C6` (DE2 board), simulated with ModelSim / Quartus waveform simulation.

## Contents
- `ASU.vhd` – 4-bit adder/subtractor (`Cin` selects add/subtract, outputs sum, carry-out and a negative/overflow flag)
- `C.vhd` – combinational 4-bit converter logic (top-level entity)
- `sseg.vhd` – hex-to-7-segment decoder with a separate sign (minus) display
- `CombinedASU1.bdf`, `CombineASU1.bdf`, `PARTB.bdf` – top-level schematics tying the blocks together
- `Waveform*.vwf` – simulation waveforms

## Opening the project
Open the `.qpf` project file in Quartus II, compile (Processing → Start Compilation), and use the `.vwf` waveform files for functional simulation.

## Notes
Quartus build artifacts (`db/`, `incremental_db/`, backups) are excluded via `.gitignore`; they are regenerated on compile.
