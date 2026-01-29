library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity negativ_flankedetektor is
	port(
		CLOCK_50	: in	std_logic;
		rst_n		: in	std_logic;
		sig_in		: in	std_logic;
		sig_out		: out	std_logic
	    );
end entity negativ_flankedetektor;

architecture RTL of negativ_flankedetektor is
	signal q : std_logic;
begin
	p_negativ_flankedetektor : process(CLOCK_50)
	begin
		if rising_edge(CLOCK_50) then
			if rst_n = '0' then
				sig_out <= '0';
				q <= '0';
			else
				sig_out <= '0';
				if sig_in = '1' then
					q <= sig_in;
				elsif q = '1' then
					sig_out <= '1';
				end if;
				q <= sig_in;
			end if;
		end if;
	end process;
end architecture RTL;
