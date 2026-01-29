library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity positiv_flankedetektor is
	port(
		CLOCK_50	: in	std_logic;
		rst_n		: in	std_logic;
		sig_in		: in	std_logic;
		sig_out		: out	std_logic
	    );
end entity positiv_flankedetektor;

architecture RTL of positiv_flankedetektor is
	signal q1 : std_logic;
begin
	p_positiv_flankedetektor : process(CLOCK_50)
	begin
		if rising_edge(CLOCK_50) then
			if rst_n = '0' then
				sig_out <= '0';
				q1 <= '0';
			else
				sig_out <= '0';
				if sig_in = '0' then
					q1 <= sig_in;
				elsif q1 = '0' then
					sig_out <= '1';
				end if;
				q1 <= sig_in;
			end if;
		end if;
	end process;
end architecture RTL;
