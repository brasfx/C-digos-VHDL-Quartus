transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/foxpc/Documents/Disciplinas falcudade/2020/Sistemas Digitais/Quartus/Porta OR 3x1/porta_OR_3X1.vhd}

