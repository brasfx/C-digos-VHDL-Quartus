transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/foxpc/Documents/Disciplinas falcudade/2020/Sistemas Digitais/Quartus/Circuito D2 final/Circuito_D2.vhd}
vcom -93 -work work {C:/Users/foxpc/Documents/Disciplinas falcudade/2020/Sistemas Digitais/Quartus/Circuito D2 final/FF_D.vhd}
vcom -93 -work work {C:/Users/foxpc/Documents/Disciplinas falcudade/2020/Sistemas Digitais/Quartus/Circuito D2 final/FF_D_Serie.vhd}
vcom -93 -work work {C:/Users/foxpc/Documents/Disciplinas falcudade/2020/Sistemas Digitais/Quartus/Circuito D2 final/porta_NAND.vhd}
vcom -93 -work work {C:/Users/foxpc/Documents/Disciplinas falcudade/2020/Sistemas Digitais/Quartus/Circuito D2 final/porta_NOT.vhd}
vcom -93 -work work {C:/Users/foxpc/Documents/Disciplinas falcudade/2020/Sistemas Digitais/Quartus/Circuito D2 final/porta_OR.vhd}

