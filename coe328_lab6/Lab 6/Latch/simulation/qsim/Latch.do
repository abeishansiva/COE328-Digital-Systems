onerror {quit -f}
vlib work
vlog -work work Latch.vo
vlog -work work Latch.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.latch1_vlg_vec_tst
vcd file -direction Latch.msim.vcd
vcd add -internal latch1_vlg_vec_tst/*
vcd add -internal latch1_vlg_vec_tst/i1/*
add wave /*
run -all
