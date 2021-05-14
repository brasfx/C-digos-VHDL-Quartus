transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/foxpc/Documents/Disciplinas falcudade/2020/Sistemas Digitais/Quartus/Flip_Flop_D/Flip_Flop_D.vhd}
vcom -93 -work work {C:/Users/foxpc/Documents/Disciplinas falcudade/2020/Sistemas Digitais/Quartus/Flip_Flop_D/Flip_Flop_Serie.vhd}

