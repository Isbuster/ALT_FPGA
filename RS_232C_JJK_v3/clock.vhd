library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clock is
	port(
		clk				: in std_logic;
		rst_n				: in std_logic;
		pause				: in std_logic;
		rate_up, rate_down		: in STD_LOGIC;
		sek_std, min_std, tim_std	: out STD_LOGIC_VECTOR(7 downto 0)
	);
end entity clock;

architecture RTL of clock is
	
	SIGNAL Enable		: STD_LOGIC;
	SIGNAL gen_rst_n	: STD_LOGIC;
	SIGNAL sekund, minutter	: INTEGER RANGE 0 TO 59; 
	SIGNAL timer		: INTEGER RANGE 0 TO 23;
	SIGNAL rate_up_sync, rate_down_sync : STD_LOGIC;
	SIGNAL rate : std_logic_vector(2 downto 0);

	COMPONENT Enable_gen IS
		PORT(
			clock_50 : in std_logic;
			resetn : in std_logic;
			velg_enable:in std_logic_vector(2 downto 0);
			Enable: out std_logic
		);
	END COMPONENT;	

	component negativ_flankedetektor is
		port(
			CLOCK_50	: in	std_logic;
			rst_n		: in	std_logic;
			sig_in		: in	std_logic;
			sig_out		: out	std_logic
		    );
	end component negativ_flankedetektor;

	component antiprell is
		port(
			clk : in std_logic;
			reset_clk : in std_logic;
			input : in std_logic;
			passering : out std_logic
		);
	end component antiprell;


begin
	sek_std <= STD_LOGIC_VECTOR(TO_UNSIGNED(sekund, 8));
	min_std <= STD_LOGIC_VECTOR(TO_UNSIGNED(minutter, 8));
	tim_std <= STD_LOGIC_VECTOR(TO_UNSIGNED(timer, 8));

	p_velg_enable : process(clk)
		variable rate_int : integer range 0 to 7 := 0;
	begin
		if rising_edge(clk) then
			if rst_n = '0' then
				rate_int := 0;
			else
				if pause = '1' then
					gen_rst_n <= '0';
				else
					gen_rst_n <= rst_n;
					if rate_up_sync = '0' and rate_int /= 7 then
						rate_int := rate_int + 1;
					end if;
					if rate_down_sync = '0' and rate_int /= 0 then
						rate_int := rate_int - 1;
					end if;
					rate <= STD_LOGIC_VECTOR(TO_UNSIGNED(rate_int, rate'length));
				end if;		
			end if;
		end if;
	end process;

	p_klokke : PROCESS(Enable)
	BEGIN
		if rst_n = '0' then
			sekund <= 0;
			minutter <= 0;
			timer <= 0;
		else
			if Enable = '1' then
				sekund <= sekund + 1;
				if sekund = 59 then
					sekund <= 0;
					minutter <= minutter + 1;
					if minutter = 59 then
						minutter <= 0;
						timer <= timer + 1;
						if timer = 23 then
							timer <= 0;
						end if;
					end if;
				end if;
			end if;
		end if;
	END PROCESS;

	gen : Enable_gen 
		PORT MAP(
			clock_50 => clk,
			resetn => gen_rst_n,
			velg_enable => rate,
			Enable => Enable 
		);
	
	rate_up_antiprell : antiprell
		port map(
			clk => clk,
			reset_clk => rst_n,
			input => rate_up,
			passering => rate_up_sync
		);

	rate_down_antiprell : antiprell
		port map(
			clk => clk,
			reset_clk => rst_n,
			input => rate_down,
			passering => rate_down_sync
		);
end architecture RTL;
