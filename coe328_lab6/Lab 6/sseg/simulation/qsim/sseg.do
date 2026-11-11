onerror {quit -f}
vlib work
vlog -work work sseg.vo
vlog -work work sseg.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.sseg_vlg_vec_tst
vcd file -direction sseg.msim.vcd
vcd add -internal sseg_vlg_vec_tst/*
vcd add -internal sseg_vlg_vec_tst/i1/*
add wave /*
run -all
