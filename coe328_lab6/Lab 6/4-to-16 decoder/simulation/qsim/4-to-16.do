onerror {quit -f}
vlib work
vlog -work work 4-to-16.vo
vlog -work work 4-to-16.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.decoModified_vlg_vec_tst
vcd file -direction 4-to-16.msim.vcd
vcd add -internal decoModified_vlg_vec_tst/*
vcd add -internal decoModified_vlg_vec_tst/i1/*
add wave /*
run -all
