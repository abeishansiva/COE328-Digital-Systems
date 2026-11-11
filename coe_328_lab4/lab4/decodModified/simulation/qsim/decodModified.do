onerror {quit -f}
vlib work
vlog -work work decodModified.vo
vlog -work work decodModified.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.decodModified_vlg_vec_tst
vcd file -direction decodModified.msim.vcd
vcd add -internal decodModified_vlg_vec_tst/*
vcd add -internal decodModified_vlg_vec_tst/i1/*
add wave /*
run -all
