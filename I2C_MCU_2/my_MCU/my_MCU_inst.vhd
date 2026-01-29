	component my_MCU is
		port (
			clk_clk            : in    std_logic                     := 'X';             -- clk
			i2c_scl            : out   std_logic;                                        -- scl
			i2c_sda            : inout std_logic                     := 'X';             -- sda
			pio_in_ext_export  : in    std_logic_vector(15 downto 0) := (others => 'X'); -- export
			pio_out_ext_export : out   std_logic_vector(15 downto 0);                    -- export
			reset_reset_n      : in    std_logic                     := 'X'              -- reset_n
		);
	end component my_MCU;

	u0 : component my_MCU
		port map (
			clk_clk            => CONNECTED_TO_clk_clk,            --         clk.clk
			i2c_scl            => CONNECTED_TO_i2c_scl,            --         i2c.scl
			i2c_sda            => CONNECTED_TO_i2c_sda,            --            .sda
			pio_in_ext_export  => CONNECTED_TO_pio_in_ext_export,  --  pio_in_ext.export
			pio_out_ext_export => CONNECTED_TO_pio_out_ext_export, -- pio_out_ext.export
			reset_reset_n      => CONNECTED_TO_reset_reset_n       --       reset.reset_n
		);

