library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reset_synchronizer is
	port(
		clk, reset_key3 : in std_logic;
		reset_clk : out std_logic
	    );
end entity reset_synchronizer;

architecture RTL of reset_synchronizer is
	signal dff : std_logic;
begin
	p_reset_sync : process(clk, reset_key3)
	begin
		if reset_key3 = '0' then
			reset_clk <= '0';
			dff <= '0';
		elsif rising_edge(clk) then
			reset_clk <= dff;
			dff <= '1';
		end if;
	end process;
end architecture RTL;
