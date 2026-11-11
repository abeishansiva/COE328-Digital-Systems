onerror {quit -f}
vlib work
vlog -work work johnson.vo
vlog -work work johnson.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.johnson_vlg_vec_tst
vcd file -direction johnson.msim.vcd
vcd add -internal johnson_vlg_vec_tst/*
vcd add -internal johnson_vlg_vec_tst/i1/*
add wave /*
run -all
