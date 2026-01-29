LIBRARY IEEE;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY sender IS
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
END ENTITY;

ARCHITECTURE struct OF sender IS
	TYPE state_type is (waiting, start_baud, start_bit, shift_out, parity, stop_bit);
	SIGNAL state : state_type;

	SIGNAL baud_en : STD_LOGIC := '0';
	SIGNAL rst_baud_en : STD_LOGIC := '0';

	SIGNAL shift_register : STD_LOGIC_VECTOR(max_data_size-1 DOWNTO 0);
	SIGNAL parity_bit : STD_LOGIC;

	SIGNAL msg_bit_size : INTEGER;
	SIGNAL parity_mode : STD_LOGIC_VECTOR(1 downto 0);
	SIGNAL clock_mode : STD_LOGIC;
	SIGNAL stop_bit_amnt : INTEGER;
	SIGNAL on_off : STD_LOGIC;

	component baud_gen is
		generic(
			sender : STD_LOGIC 
		);
		port(
			CLOCK_50 : in STD_LOGIC;
			rst : in STD_LOGIC;
			baud_rate_divider : in STD_LOGIC_VECTOR(15 downto 0);
			baud_en : out STD_LOGIC
		);
	end component baud_gen;


BEGIN

	p_sender : process(clk)
		variable count : integer range 0 to max_data_size;
		variable count_stop_bit : integer range 0 to 2;
	begin
		if rising_edge(clk) then
			if rst_n = '0' then
				state <= waiting;
			else
				case state is
					when waiting =>
						count := 0;
						count_stop_bit := 0;
						data_out <= '1';
						tx_ready <= '1';
						rst_baud_en <= '0';
						parity_bit <= '0';

						if start_pulse = '0' then
							-- Fast setter data_in og setting_bits så de ikke kan endres mens meldingen sender.
							-- Setting bits
							msg_bit_size <= TO_INTEGER(UNSIGNED(not setting_bits(1 downto 0)));
							parity_mode <= setting_bits(3 downto 2);
							stop_bit_amnt <= to_integer(UNSIGNED'('0' & setting_bits(4))) + 1;
							-- Loader shift register med data
							shift_register <= data_in;

							state <= start_baud;
						end if;

					when start_baud =>
						rst_baud_en <= rst_n;
						tx_ready <= '0';
						if baud_en = '1' then
							state <= start_bit;
						end if;
					when start_bit =>
						data_out <= '0';

						if baud_en = '1' then
							state <= shift_out;
						end if;

					when shift_out =>
						data_out <= shift_register(count);

						if (baud_en = '1') then
							parity_bit <= parity_bit XOR shift_register(count);
							count := count + 1;
							if count >= (max_data_size - msg_bit_size) then
								count := 0;
								if parity_mode(1) = '1' then
									state <= parity;
								else
									state <= stop_bit;
								end if;
							end if;
						end if;

					when parity=>
						if parity_mode(0) = '1' then
							-- odd parity
							data_out <= not parity_bit;
						else
							-- even parity
							data_out <= parity_bit;
						end if;
						if baud_en = '1' then
							state <= stop_bit;
						end if;
						

					when stop_bit =>

						data_out <= '1';
						
						if baud_en = '1' then
							count_stop_bit := count_stop_bit + 1;
							if stop_bit_amnt = count_stop_bit then
								state <= waiting;
							end if;
						end if;
				end case;-- case
			end if;-- rst_n or process
		end if;-- rising_edge
	end process;

	baud_gen_inst: baud_gen
		generic map(
			sender => '1'
		)
		port map(
			CLOCK_50 => clk,
			rst => rst_baud_en,
			baud_rate_divider => baud_rate_divider,
			baud_en => baud_en
		);
	
END ARCHITECTURE;
