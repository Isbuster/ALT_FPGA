	my_MCU u0 (
		.clk_clk            (<connected-to-clk_clk>),            //         clk.clk
		.pio_in_ext_export  (<connected-to-pio_in_ext_export>),  //  pio_in_ext.export
		.pio_out_ext_export (<connected-to-pio_out_ext_export>), // pio_out_ext.export
		.reset_reset_n      (<connected-to-reset_reset_n>),      //       reset.reset_n
		.i2c_scl            (<connected-to-i2c_scl>),            //         i2c.scl
		.i2c_sda            (<connected-to-i2c_sda>)             //            .sda
	);

