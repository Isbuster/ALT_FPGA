LIBRARY IEEE;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY RS_232C_JJK IS
	PORT(
		CLOCK_50		: IN	STD_LOGIC;
		SW			: IN	STD_LOGIC_VECTOR(17 DOWNTO 0);
		KEY			: IN	STD_LOGIC_VECTOR(3 DOWNTO 0);
		LEDR			: OUT	STD_LOGIC_VECTOR(17 DOWNTO 0);
		LEDG			: OUT	STD_LOGIC_VECTOR(8 downto 0);
		HEX0, HEX1, HEX2, HEX3,
		HEX4, HEX5, HEX6, HEX7	: OUT	STD_LOGIC_VECTOR(6 DOWNTO 0);
		EX_IO			: inout	std_logic_vector(6 downto 0);
		LCD_RS, LCD_EN		: OUT	STD_LOGIC;
		LCD_RW			: OUT   STD_LOGIC;
		LCD_DATA		: INOUT	STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE RTL OF RS_232C_JJK IS
	--	Signaler for baud_rate_divider 
	type baud_rate is array (0 to 7) of integer range 0 to 1_000_000;
	Constant baud_rate_array : baud_rate := 
		(
			50_000_000/4_800, 
			50_000_000/9_600, 
			50_000_000/19_200, 
			50_000_000/34_800, 
			50_000_000/57_600, 
			50_000_000/74_880, 
			50_000_000/115_200, 
			50_000_000/1_000_000
		); 
	Signal baud_rate_int : integer range 0 to 1_000_000;
	signal baud_rate_divider : STD_LOGIC_VECTOR(15 downto 0);

	--	Signaler for switches
	signal data_in_sw : STD_LOGIC_VECTOR(7 downto 0);
	signal baud_rate_sw : STD_LOGIC_VECTOR(2 downto 0);
	signal setting_bits_sw : STD_LOGIC_VECTOR(4 downto 0);
	signal setting_bits : STD_LOGIC_VECTOR(4 downto 0);
	signal mode_sw : STD_LOGIC_VECTOR(1 downto 0);
	signal mode_antiprell : STD_LOGIC_VECTOR(1 downto 0);

	--	Signaler for sender 
	signal data_in : std_logic_vector(7 downto 0);
	signal tx_ready : STD_LOGIC;
	signal start_pulse : STD_LOGIC := '1';
	signal start_pulse_antiprell : STD_LOGIC := '1';
	signal data_out_ex : STD_LOGIC;

	--	Signaler for mottaker
	signal error : STD_LOGIC;
	signal data_valid_out : STD_LOGIC;
	signal data_rec : STD_LOGIC_VECTOR(7 downto 0);
	signal data_in_ex : STD_LOGIC;

	--	Signaler for rst_synchronizer
	signal rst_n_sync : STD_LOGIC;	


	--	Signaler for Hex-display
	SIGNAL hex_0_1, hex_2_3, hex_4_5 : STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL rec_hex : STD_LOGIC_VECTOR(11 downto 0);
	SIGNAL msg_size_hex : STD_LOGIC_VECTOR(11 downto 0);

	--	Signaler for klokken
	signal sek_std_send, min_std_send, tim_std_send : STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL sek_std_rec, min_std_rec, tim_std_rec: STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL sek_std_hex, min_std_hex, tim_std_hex: STD_LOGIC_VECTOR(11 downto 0);
	SIGNAL pause : STD_LOGIC;

	--	Signaler for LCD-Display
	signal hex_display_data : STD_LOGIC_VECTOR(127 downto 0);
	signal Hex_Display_Data_rec  : STD_LOGIC_VECTOR(127 downto 0);
	signal hex_display_data_temp : STD_LOGIC_VECTOR(127 downto 0);

	--	Signaler for sending av flere bytes til LCD-Display
	type byte_array_16 is array (0 to 15) of STD_LOGIC_VECTOR(7 downto 0);
	SIGNAL HDD : byte_array_16 := (others => "00100000");
	SIGNAL HDD_send : byte_array_16 := (others => "00100000");
	SIGNAL HDD_rec : byte_array_16;
	SIGNAL space, backspace : STD_LOGIC;
	SIGNAL msg_size : STD_LOGIC_VECTOR(7 downto 0);

	SIGNAL data_valid_out_rising_edge : STD_LOGIC;
	SIGNAL tx_ready_rising_edge : STD_LOGIC;

	--	Komponenter brukt
	component sender IS
		GENERIC(
			max_data_size : INTEGER range 5 to 8 := 8
		);
		PORT(
			clk			: IN	STD_LOGIC;
			rst_n			: IN	STD_LOGIC;
			start_pulse		: IN	STD_LOGIC;
			baud_rate_divider	: IN	STD_LOGIC_VECTOR(15 DOWNTO 0);
			data_in			: IN	STD_LOGIC_VECTOR(max_data_size-1 DOWNTO 0);
			setting_bits		: IN	STD_LOGIC_VECTOR(4 downto 0);
			tx_ready		: OUT	STD_LOGIC;
			data_out		: OUT	STD_LOGIC 
		);
	END component;

	component mottaker is
		generic(
			max_data_size : integer range 5 to 8 := 8
		);
		port(
			clk			: in	std_logic;
			rst_n 			: in	std_logic;
			data_in 		: in	std_logic;
			baud_rate_divider	: in	std_logic_vector(15 downto 0);
			setting_bits		: IN	STD_LOGIC_VECTOR(4 downto 0);
			error			: out	std_logic;
			data_valid_out		: out	std_logic;
			data_out		: out	std_logic_vector(max_data_size-1 downto 0)
		);
	end component mottaker;

	component antiprell is
		port(
			clk : in std_logic;
			reset_clk : in std_logic;
			input : in std_logic;
			passering : out std_logic
		);
	end component antiprell;

	component antiprell_sw is
		port(
			clk : in std_logic;
			reset_clk : in std_logic;
			input : in std_logic;
			passering : out std_logic
		);
	end component antiprell_sw;

	component reset_synchronizer is
		port(
			clk, reset_key3 : in std_logic;
			reset_clk : out std_logic
		    );
	end component reset_synchronizer;

	component clock is
		port(
			clk				: in std_logic;
			rst_n				: in std_logic;
			pause				: in STD_LOGIC;
			rate_up, rate_down		: in STD_LOGIC;
			sek_std, min_std, tim_std	: out STD_LOGIC_VECTOR(7 downto 0)
		);
	end component clock;

	COMPONENT ROM_7_seg IS
		PORT(
			adresse   : IN  std_logic_vector(3 downto 0);
			HEX : OUT std_logic_vector(6 downto 0)); -- gfedcba
	END COMPONENT;

	COMPONENT bin3bcd IS
		port(
			bin_in  : in  std_logic_vector(7 downto 0);
			bcd_out : out std_logic_vector(11 downto 0)
		);
	END COMPONENT;

	component LCD_Display IS
	PORT(
		reset, clk_48Mhz	: IN	STD_LOGIC;
		mode			: IN	STD_LOGIC_VECTOR(1 downto 0);
		Hex_Display_Data	: IN    STD_LOGIC_VECTOR(127 DOWNTO 0);
		Hex_Display_Data_rec	: IN    STD_LOGIC_VECTOR(127 DOWNTO 0);
		msg_size		: IN	STD_LOGIC_VECTOR(7 downto 0);
		LCD_RS, LCD_E		: OUT	STD_LOGIC;
		LCD_RW			: OUT   STD_LOGIC;
		DATA_BUS		: INOUT	STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
	END COMPONENT LCD_Display;

	component positiv_flankedetektor is
		port(
			CLOCK_50	: in	std_logic;
			rst_n		: in	std_logic;
			sig_in		: in	std_logic;
			sig_out		: out	std_logic
		    );
	end component positiv_flankedetektor;

	--	Alle komponentene
	
BEGIN
	setting_bits_sw <= SW(12 downto 8);
	setting_bits <= setting_bits_sw(4 downto 2) & "11" when mode_antiprell /= "00" else setting_bits_sw;
	data_in_sw <= SW(7 downto 0);
	mode_sw <= SW(17 downto 16);

	baud_rate_sw <= SW(15 downto 13);
	baud_rate_int <= baud_rate_array(TO_INTEGER(UNSIGNED(baud_rate_sw)));
	baud_rate_divider <= STD_LOGIC_VECTOR(TO_UNSIGNED(baud_rate_int, baud_rate_divider'length));
	
	LEDG(7 downto 0) <= data_rec;
	LEDR(17) <= error;
	LEDR(16) <= data_valid_out;
	LEDR(15) <= tx_ready;
	LEDG(8) <= not tx_ready;
	LEDR(14) <= rst_n_sync;

	hex_display_data <= 
			hex_display_data(127 downto 24) &
			rec_hex & "0000" & data_rec
		when mode_antiprell = "00" else
			hex_display_data(127 downto 24) &
			tim_std_hex(7 downto 0) & min_std_hex(7 downto 0) & sek_std_hex(7 downto 0)
		when mode_antiprell = "01" else
			HDD(15) & HDD(14) & HDD(13) & HDD(12) & 
			HDD(11) & HDD(10) & HDD(9) & HDD(8) & 
			HDD(7) & HDD(6) & HDD(5) & HDD(4) & 
			HDD(3) & HDD(2) & HDD(1) & HDD(0)
		when mode_antiprell = "10" else
			(others => '1');
	
	Hex_Display_Data_rec <= 
			HDD_rec(15) & HDD_rec(14) & HDD_rec(13) & HDD_rec(12) & 
			HDD_rec(11) & HDD_rec(10) & HDD_rec(9) & HDD_rec(8) & 
			HDD_rec(7) & HDD_rec(6) & HDD_rec(5) & HDD_rec(4) & 
			HDD_rec(3) & HDD_rec(2) & HDD_rec(1) & HDD_rec(0);
	

	EX_IO(6) <= 'Z';

	pause <= '1' when mode_antiprell /= "01" else '0';

	p_sender : process(CLOCK_50)
		variable count_tx_ready : integer := 0;
		variable count_tx_ready_lcd_rec : integer := -1;
		variable count_HDD : INTEGER := 0;
		variable next_byte : STD_LOGIC_VECTOR(7 downto 0);
		variable prev_mode : STD_LOGIC_VECTOR(1 downto 0);
	begin
		if rising_edge(CLOCK_50) then
			if rst_n_sync = '0' then
				count_tx_ready := 0;
				count_HDD := 0;
				HDD_send <= (others => ("00100000"));
				HDD <= (others => ("00100000"));
			else
				case mode_antiprell is
					when "00" =>
						-- normal send
						data_in <= data_in_sw;
						start_pulse <= start_pulse_antiprell;
	
						count_tx_ready_lcd_rec := -1;

					when "01" =>
						-- clock send
						start_pulse <= '0';

						if tx_ready = '1' then
							case count_tx_ready is
								when 0 =>
									data_in <= "01" & sek_std_send(5 downto 0);
									count_tx_ready := count_tx_ready + 1;

								when 1 =>
									data_in <= "10" & min_std_send(5 downto 0);
									count_tx_ready := count_tx_ready + 1;

								when 2 =>
									data_in <= "11" & tim_std_send(5 downto 0);
									count_tx_ready := 0;
								when others =>
									count_tx_ready := 0;

							end case;
						end if;

						count_tx_ready_lcd_rec := -1;
		
					when "10" =>
						-- send multiple bytes to LCD-Display
						count_tx_ready_lcd_rec := -1;

						-- bruker start_pulse_antiprell siden knapp KEY(0) er allerede koblet til den
						if start_pulse_antiprell = '0' and count_HDD /= 16 then
							HDD_send(count_HDD) <= data_in_sw;
							count_HDD := count_HDD + 1;

						elsif space <= '0' and count_HDD /= 16 then
							count_HDD := count_HDD + 1;
							HDD_send(count_HDD-1) <= X"20";
							HDD(count_HDD) <= X"20";
						
						elsif backspace <= '0' and count_HDD /= 0 then
							HDD_send(count_HDD) <= X"20";
							HDD(count_HDD) <= X"20";
							count_HDD := count_HDD - 1;

						elsif count_HDD /= 16 then
							HDD(count_HDD) <= data_in_sw;

						end if;

					when "11" =>

						if prev_mode = "01" then
							start_pulse <= '1';

						elsif tx_ready = '1' then
							if count_tx_ready_lcd_rec = -1 then
								start_pulse <= '0';
								data_in <= std_logic_vector(to_unsigned(count_HDD, data_in'length)); 
								count_tx_ready_lcd_rec := count_tx_ready_lcd_rec + 1;
							else
								if count_tx_ready_lcd_rec <= count_HDD then
									data_in <= HDD_send(count_tx_ready_lcd_rec);
								elsif count_tx_ready_lcd_rec = count_HDD + 1 then
									data_in <= std_logic_vector(to_unsigned(count_HDD, data_in'length)); 
								end if;
							end if;
						elsif tx_ready_rising_edge = '1' then

							if count_tx_ready_lcd_rec <= count_HDD then
								count_tx_ready_lcd_rec := count_tx_ready_lcd_rec + 1;
							elsif count_tx_ready_lcd_rec = count_HDD + 1 then
								count_tx_ready_lcd_rec := count_tx_ready_lcd_rec + 1;
							else
								start_pulse <= '1';
							end if;
						end if;
				end case;
				prev_mode := mode_antiprell;
			end if;
		end if;
	end process;

	p_mottaker : process(CLOCK_50)
		variable HDD_size : integer;
		variable HDD_rec_amnt : integer;
		variable prev_mode : STD_LOGIC_VECTOR(1 downto 0);
		variable from_clock : BOOLEAN;
	begin
		if rising_edge(CLOCK_50) then
			if rst_n_sync = '0' then
				hex_0_1 <= "00000000";
				hex_2_3 <= "00000000";
				hex_4_5 <= "00000000";
				sek_std_rec <= "00000000";
				min_std_rec <= "00000000";
				tim_std_rec <= "00000000";
			else
				case mode_antiprell is
						when "00" =>
							-- normal rec
							hex_0_1 <= rec_hex(7 downto 0);
							hex_2_3 <= "0000" & rec_hex(11 downto 8);
							hex_4_5 <= data_rec;
							HDD_rec_amnt := -1;
		
						when "01" =>
							-- clock rec
							case data_rec(7 downto 6) is
								when "01" =>
									sek_std_rec <= "00" & data_rec(5 downto 0);

								when "10" =>
									min_std_rec <= "00" & data_rec(5 downto 0);

								when "11" =>
									tim_std_rec <= "00" & data_rec(5 downto 0);
								when others =>
							end case;
							hex_0_1 <= sek_std_hex(7 downto 0);
							hex_2_3 <= min_std_hex(7 downto 0);
							hex_4_5 <= tim_std_hex(7 downto 0);
							HDD_rec_amnt := -1;

						when "10" =>
							-- rec multiple bytes display on LCD-Display
							-- Absolutt ingenting skjer...
							HDD_rec_amnt := -1;

						when "11" =>
							-- Siden klokken sender kontinuerlig ødelegger den for motakker.
							-- Venter derfor til siste klokke_data er over.
							if prev_mode = "01" then 
								from_clock := true;
							elsif from_clock and data_valid_out_rising_edge = '1' then
								from_clock := false;
							elsif data_valid_out_rising_edge = '1' then
								if HDD_rec_amnt = -1 then
									HDD_rec <= (others => (X"20"));
									HDD_size := to_integer(unsigned(data_rec));
									msg_size <= data_rec;
									HDD_rec_amnt := HDD_rec_amnt + 1;

								elsif HDD_rec_amnt < HDD_size then
									HDD_rec(HDD_rec_amnt) <= data_rec;
									HDD_rec_amnt := HDD_rec_amnt + 1;
								end if;
							end if;
					end case;
				prev_mode := mode_antiprell;
			end if;
		end if;
	end process;
	
	sender_inst: sender
		port map(
			clk => CLOCK_50,
			rst_n => rst_n_sync,
			start_pulse => start_pulse, 
			baud_rate_divider => baud_rate_divider,
			data_in => data_in,
			setting_bits => setting_bits,
			tx_ready => tx_ready,
			data_out => EX_IO(0)
		);
	
	mottaker_inst: mottaker
		port map(
			clk => CLOCK_50,
			rst_n => rst_n_sync,
			data_in => EX_IO(6),
			baud_rate_divider => baud_rate_divider,
			setting_bits => setting_bits,
			error => error,
			data_valid_out => data_valid_out,
			data_out => data_rec
		);
	
	c_start_pulse_antiprell : antiprell
		port map(
			clk => CLOCK_50,
			reset_clk => rst_n_sync,
			input => KEY(0),
			passering => start_pulse_antiprell
		);

	c_space : antiprell
		port map(
			clk => CLOCK_50,
			reset_clk => rst_n_sync,
			input => KEY(1),
			passering => space
		);


	c_backspace : antiprell
		port map(
			clk => CLOCK_50,
			reset_clk => rst_n_sync,
			input => KEY(2),
			passering => backspace
		);
	
	antiprell_mode_bit_0: antiprell_sw
	 port map(
	    clk => CLOCK_50,
	    reset_clk => rst_n_sync,
	    input => mode_sw(0),
	    passering => mode_antiprell(0)
	);
	
	antiprell_mode_bit_1: antiprell_sw
	 port map(
	    clk => CLOCK_50,
	    reset_clk => rst_n_sync,
	    input => mode_sw(1),
	    passering => mode_antiprell(1)
	);


	reset_synchronizer_inst: reset_synchronizer
	 port map(
	    clk => CLOCK_50,
	    reset_key3 => KEY(3),
	    reset_clk => rst_n_sync
	);

	clock_inst: clock
		port map(
			clk => CLOCK_50,
			rst_n => rst_n_sync,
			pause => pause,
			rate_up => KEY(2),
			rate_down => KEY(1),
			sek_std => sek_std_send,
			min_std => min_std_send,
			tim_std => tim_std_send
		);

	bcd_rec : bin3bcd PORT MAP(bin_in => data_rec(7 downto 0), bcd_out => rec_hex);

	bcd_sek : bin3bcd PORT MAP(bin_in => sek_std_rec, bcd_out => sek_std_hex);
	bcd_min : bin3bcd PORT MAP(bin_in => min_std_rec, bcd_out => min_std_hex);
	bcd_tim : bin3bcd PORT MAP(bin_in => tim_std_rec, bcd_out => tim_std_hex);

	bcd_msg_size : bin3bcd PORT MAP(bin_in => msg_size, bcd_out => msg_size_hex);

	tall0 : ROM_7_seg PORT MAP(adresse => hex_0_1(3 downto 0),	HEX => HEX0);
	tall1 : ROM_7_seg PORT MAP(adresse => hex_0_1(7 downto 4),	HEX => HEX1);
	tall2 : ROM_7_seg PORT MAP(adresse => hex_2_3(3 downto 0),	HEX => HEX2);
	tall3 : ROM_7_seg PORT MAP(adresse => hex_2_3(7 downto 4),	HEX => HEX3);
	tall4 : ROM_7_seg PORT MAP(adresse => hex_4_5(3 downto 0),	HEX => HEX4);
	tall5 : ROM_7_seg PORT MAP(adresse => hex_4_5(7 downto 4),	HEX => HEX5);
	tall6 : ROM_7_seg PORT MAP(adresse => data_in_sw(3 downto 0),	HEX => HEX6);
	tall7 : ROM_7_seg PORT MAP(adresse => data_in_sw(7 downto 4),	HEX => HEX7);


	LCD_Display_inst: LCD_Display
		port map(
			reset => rst_n_sync,
			clk_48Mhz => CLOCK_50,
			mode => mode_antiprell,
			Hex_Display_Data => Hex_Display_Data,
			Hex_Display_Data_rec => Hex_Display_Data_rec,
			msg_size => msg_size_hex(7 downto 0),
			LCD_RS => LCD_RS,
			LCD_E => LCD_EN,
			LCD_RW => LCD_RW,
			DATA_BUS => LCD_DATA
		);
	
	data_valid_out_positiv_flankedetektor_inst: positiv_flankedetektor
		port map(
			CLOCK_50 => CLOCK_50,
			rst_n => rst_n_sync,
			sig_in => data_valid_out,
			sig_out => data_valid_out_rising_edge
		);
		
	tx_ready_positiv_flankedetektor_inst: positiv_flankedetektor
		port map(
			CLOCK_50 => CLOCK_50,
			rst_n => rst_n_sync,
			sig_in => tx_ready,
			sig_out => tx_ready_rising_edge
		);

END ARCHITECTURE RTL;
