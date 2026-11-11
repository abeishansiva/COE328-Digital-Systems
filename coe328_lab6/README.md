# COE 328 Lab 6 – Decoder, Latch, ALU and FSM Designs

Intel/Altera Quartus II (13.0sp1), Cyclone II `EP2C35F672C6` (DE2 board).

## Contents (`Lab 6/`)
| Folder | Description |
|---|---|
| `4-to-16 decoder/`, `Working 4-to-16 decoder/` | 4-to-16 decoder with enable |
| `Latch/` | 8-bit register / latch with active-low reset (`latch1.vhd`) |
| `ALU/` | ALU design (`ALU.vhd`) |
| `FSM/` | Finite state machine (`fsm1.vhd`) |
| `sseg/` | 7-segment display decoders |
| `problem1/`, `problem3/` | Lab problems combining the ALU, FSM and display blocks |

## Opening the projects
Open the `.qpf` project file for a part in Quartus II, compile (Processing → Start Compilation), and use the `.vwf` waveform files for functional simulation. Quartus build output (`db/`, `incremental_db/`) is excluded via `.gitignore`.
