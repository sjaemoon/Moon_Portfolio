transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/sjaem/Desktop/EE271/lab6 {C:/Users/sjaem/Desktop/EE271/lab6/startRowFrog.sv}
vlog -sv -work work +incdir+C:/Users/sjaem/Desktop/EE271/lab6 {C:/Users/sjaem/Desktop/EE271/lab6/userInput.sv}
vlog -sv -work work +incdir+C:/Users/sjaem/Desktop/EE271/lab6 {C:/Users/sjaem/Desktop/EE271/lab6/metastabilityFree.sv}
vlog -sv -work work +incdir+C:/Users/sjaem/Desktop/EE271/lab6 {C:/Users/sjaem/Desktop/EE271/lab6/led_matrix_driver.sv}
vlog -sv -work work +incdir+C:/Users/sjaem/Desktop/EE271/lab6 {C:/Users/sjaem/Desktop/EE271/lab6/cars.sv}
vlog -sv -work work +incdir+C:/Users/sjaem/Desktop/EE271/lab6 {C:/Users/sjaem/Desktop/EE271/lab6/startFrog.sv}
vlog -sv -work work +incdir+C:/Users/sjaem/Desktop/EE271/lab6 {C:/Users/sjaem/Desktop/EE271/lab6/frog.sv}
vlog -sv -work work +incdir+C:/Users/sjaem/Desktop/EE271/lab6 {C:/Users/sjaem/Desktop/EE271/lab6/checkFrog.sv}
vlog -sv -work work +incdir+C:/Users/sjaem/Desktop/EE271/lab6 {C:/Users/sjaem/Desktop/EE271/lab6/seg7.sv}
vlog -sv -work work +incdir+C:/Users/sjaem/Desktop/EE271/lab6 {C:/Users/sjaem/Desktop/EE271/lab6/scoreCalculator.sv}
vlog -sv -work work +incdir+C:/Users/sjaem/Desktop/EE271/lab6 {C:/Users/sjaem/Desktop/EE271/lab6/DE1_SoC.sv}

