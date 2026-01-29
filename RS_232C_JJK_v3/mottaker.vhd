library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity mottaker is
	generic(
		max_data_size : INTEGER range 5 to 8 := 8
	);
	port(
		clk			: in	std_logic;
		rst_n 			: in	std_logic;
		data_in 		: in	std_logic;
		baud_rate_divider	: in	std_logic_vector(15 downto 0);
		setting_bits		: IN	STD_LOGIC_VECTOR(4 downto 0);
		error			: out	std_logic;
		data_valid_out		: out	std_logic;
		data_out		: out	std_logic_vector(7 downto 0)
	);
end entity mottaker;

architecture RTL of mottaker is
	TYPE state_type is (waiting, start_recieve, start_bit, shift_in, parity, stop_bit, load_out, fault);
	SIGNAL state : state_type;

	SIGNAL baud_en : STD_LOGIC := '0';
	SIGNAL rst_baud_en : STD_LOGIC;

	SIGNAL shift_register : STD_LOGIC_VECTOR(max_data_size-1 DOWNTO 0);
	SIGNAL sync_data_in : STD_LOGIC;
	SIGNAL falling_edge_detected : STD_LOGIC;

	SIGNAL parity_bit : STD_LOGIC;

	SIGNAL msg_bit_size : INTEGER;
	SIGNAL parity_mode : STD_LOGIC_VECTOR(1 downto 0);
	SIGNAL clock_mode : STD_LOGIC;
	SIGNAL stop_bit_amnt : INTEGER;
	SIGNAL on_off : STD_LOGIC;

	
	component baud_gen is
		generic(
			sender : STD_LOGIC := '1'
		);
		port(
			CLOCK_50 		: in STD_LOGIC;
			rst			: in STD_LOGIC;
			baud_rate_divider	: in STD_LOGIC_VECTOR(15 downto 0);
			baud_en			: out STD_LOGIC
		);
	end component baud_gen;

	component negativ_flankedetektor is
		port(
			CLOCK_50	: in	std_logic;
			rst_n		: in	std_logic;
			sig_in		: in	std_logic;
			sig_out		: out	std_logic
		    );
	end component negativ_flankedetektor;

	component dff_synk is
		port(
			data_in, clk	: in	std_logic;
			data_out	: out	std_logic
		);
	end component;
begin
	p_mottaker : process(clk)
		variable count : INTEGER range 0 to max_data_size;
		variable count_stop_bit : integer range 0 to 2;
	begin
		if rising_edge(clk) then
			if rst_n = '0' then
				data_out <= (others => 'Z');
				data_valid_out <= '0';
				error <= '0';
				state <= waiting;
			else
				case state is
					when waiting =>
						shift_register <= (others => '0');
						count := 0;
						count_stop_bit := 0;
						rst_baud_en <= '0';
						parity_bit <= '0';
						if falling_edge_detected = '1' then
							state <= start_recieve;
							-- Setting bits
							msg_bit_size <= TO_INTEGER(UNSIGNED(not setting_bits(1 downto 0)));
							parity_mode <= setting_bits(3 downto 2);
							stop_bit_amnt <= to_integer(UNSIGNED'('0' & setting_bits(4))) + 1;
						end if;
	
					when start_recieve =>
						data_valid_out <= '0';
						error <= '0';
						rst_baud_en <= rst_n;
						if baud_en = '1' then
							state <= start_bit;
						end if;
					when start_bit =>
						if sync_data_in = '0' then
							state <= shift_in;
						else 
							state <= fault;
						end if;

					when shift_in =>
						if baud_en = '1' then
							shift_register(count) <= sync_data_in;
							parity_bit <= sync_data_in XOR parity_bit;
							count := count + 1;
							if count >= (max_data_size - msg_bit_size) then
								if parity_mode(1) = '1' then
									state <= parity;
								else
									state <= stop_bit;
								end if;
							end if;
						end if;

					when parity =>
						if baud_en = '1' then
							if parity_mode(0) = '1' then
								-- odd
								if parity_bit /= sync_data_in then
									state <= stop_bit;
								else
									state <= fault;
								end if;
							else
								-- even
								if parity_bit = sync_data_in then
									state <= stop_bit;
								else
									state <= fault;
								end if;
							end if;
						end if;

					when stop_bit => 
						if baud_en = '1' then
							if sync_data_in = '1' then
								count_stop_bit := count_stop_bit + 1;
								if stop_bit_amnt = count_stop_bit then
									state <= load_out;
								end if;
							else
								state <= fault;
							end if;
						end if;

					when load_out =>
						data_valid_out <= '1';
						data_out <= shift_register;
						state <= waiting;

					when fault =>
						data_valid_out <= '0';
						error <= '1';
						state <= waiting;
				end case;
			end if;
		end if;
	end process;
	dff_synk_inst: dff_synk
	 port map(
	    data_in => data_in,
	    clk => clk,
	    data_out => sync_data_in
	);

	baud_gen_inst: baud_gen
		generic map(
			sender => '0'
		)
		port map(
			CLOCK_50 => clk,
			rst => rst_baud_en,
			baud_rate_divider => baud_rate_divider,
			baud_en => baud_en
		);

	negativ_flankedetektor_inst: negativ_flankedetektor
		port map(
			CLOCK_50 => clk,
			rst_n => rst_n,
			sig_in => data_in,
			sig_out => falling_edge_detected
		);
end architecture RTL;
