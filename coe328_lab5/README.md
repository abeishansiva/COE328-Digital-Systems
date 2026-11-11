# COE 328 Lab 5 – Finite State Machine (Student ID Sequencer)

Intel/Altera Quartus II (13.0sp1), Cyclone II `EP2C35F672C6` (DE2 board).

## Contents
- `machine.vhd` – 9-state FSM (`s0`–`s8`) with clock, data-in and asynchronous reset that steps through the digits of a student ID
- `machine.bsf`, `sseg.bsf` – block symbols used by the top-level `lab5` design
- `Waveform.vwf` – simulation waveform

## Opening the projects
Open the `.qpf` project file for a part in Quartus II, compile (Processing → Start Compilation), and use the `.vwf` waveform files for functional simulation. Quartus build output (`db/`, `incremental_db/`) is excluded via `.gitignore`.
