vlib work
vmap work work

vlog ALU.v
vlog adder.v
vlog DMem.v
vlog MUX2.v
vlog Control_Logic.v
vlog PMem.v
vlog MicroController.v
vlog mcu_module.v

vsim mcu_module
add wave -r *
run -all
