transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/foxpc/Documents/Disciplinas falcudade/2020/Sistemas Digitais/Quartus/Circuito C10/porta_AND.vhd}
vcom -93 -work work {C:/Users/foxpc/Documents/Disciplinas falcudade/2020/Sistemas Digitais/Quartus/Circuito C10/porta_NAND.vhd}
vcom -93 -work work {C:/Users/foxpc/Documents/Disciplinas falcudade/2020/Sistemas Digitais/Quartus/Circuito C10/porta_OR.vhd}
vcom -93 -work work {C:/Users/foxpc/Documents/Disciplinas falcudade/2020/Sistemas Digitais/Quartus/Circuito C10/porta_NOT.vhd}
vcom -93 -work work {C:/Users/foxpc/Documents/Disciplinas falcudade/2020/Sistemas Digitais/Quartus/Circuito C10/circuito_C10.vhd}

