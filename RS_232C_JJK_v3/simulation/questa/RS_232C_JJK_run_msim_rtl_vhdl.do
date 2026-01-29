transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Quartus/ELE111 H2024/Prosjektoppgave/RS_232C_JJK_v3/sender.vhd}
vcom -93 -work work {C:/Quartus/ELE111 H2024/Prosjektoppgave/RS_232C_JJK_v3/RS_232C_JJK.vhd}
vcom -93 -work work {C:/Quartus/ELE111 H2024/Prosjektoppgave/RS_232C_JJK_v3/ROM_7_seg.vhd}
vcom -93 -work work {C:/Quartus/ELE111 H2024/Prosjektoppgave/RS_232C_JJK_v3/reset_synchronizer.vhd}
vcom -93 -work work {C:/Quartus/ELE111 H2024/Prosjektoppgave/RS_232C_JJK_v3/negativ_flankedetektor.vhd}
vcom -93 -work work {C:/Quartus/ELE111 H2024/Prosjektoppgave/RS_232C_JJK_v3/mottaker.vhd}
vcom -93 -work work {C:/Quartus/ELE111 H2024/Prosjektoppgave/RS_232C_JJK_v3/LCD_Display.vhd}
vcom -93 -work work {C:/Quartus/ELE111 H2024/Prosjektoppgave/RS_232C_JJK_v3/Enable_gen.vhd}
vcom -93 -work work {C:/Quartus/ELE111 H2024/Prosjektoppgave/RS_232C_JJK_v3/dff_synk.vhd}
vcom -93 -work work {C:/Quartus/ELE111 H2024/Prosjektoppgave/RS_232C_JJK_v3/clock.vhd}
vcom -93 -work work {C:/Quartus/ELE111 H2024/Prosjektoppgave/RS_232C_JJK_v3/bin3bcd.vhd}
vcom -93 -work work {C:/Quartus/ELE111 H2024/Prosjektoppgave/RS_232C_JJK_v3/baud_gen.vhd}
vcom -93 -work work {C:/Quartus/ELE111 H2024/Prosjektoppgave/RS_232C_JJK_v3/antiprell.vhd}
vcom -93 -work work {C:/Quartus/ELE111 H2024/Prosjektoppgave/RS_232C_JJK_v3/positiv_flankedetektor.vhd}

