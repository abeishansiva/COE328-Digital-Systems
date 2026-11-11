# COE 328 Lab 4 – Combinational and Sequential Building Blocks

Intel/Altera Quartus II (13.0sp1), Cyclone II `EP2C35F672C6` (DE2 board).

## Contents
| Folder | Description |
|---|---|
| `decod/` | 2-to-4 decoder (`dec2to4.vhd`) |
| `encod/` | Encoder (`encoder.vhd`) |
| `mux/` | Multiplexer (`mux.vhd`) |
| `johns/` | Johnson counter (`johns.vhd`) |
| `lab4/` | Modified/block-diagram versions: `decodModified`, `muxModified`, `johnson` |

## Opening the projects
Open the `.qpf` project file for a part in Quartus II, compile (Processing → Start Compilation), and use the `.vwf` waveform files for functional simulation. Quartus build output (`db/`, `incremental_db/`) is excluded via `.gitignore`.
