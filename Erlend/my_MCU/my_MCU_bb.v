
module my_MCU (
	clk_clk,
	pio_in_ext_export,
	pio_out_ext_export,
	reset_reset_n,
	i2c_scl,
	i2c_sda);	

	input		clk_clk;
	input	[15:0]	pio_in_ext_export;
	output	[15:0]	pio_out_ext_export;
	input		reset_reset_n;
	output		i2c_scl;
	inout		i2c_sda;
endmodule
