library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity baud_gen is
	generic(
		sender : STD_LOGIC := '1'
	);
	port(
		CLOCK_50 : in STD_LOGIC;
		rst : in STD_LOGIC;
		baud_rate_divider : in STD_LOGIC_VECTOR(15 downto 0);
		baud_en : out STD_LOGIC
	);
end entity baud_gen;

architecture RTL of baud_gen is
	signal baud_period : INTEGER := TO_INTEGER(unsigned(baud_rate_divider));
begin
	p_baud_gen : process(CLOCK_50)
		variable count : INTEGER := -1;
	begin
		if RISING_EDGE(CLOCK_50) then
			if rst = '0' then
				count := -1;
				baud_en <= '0';
				baud_period <= TO_INTEGER(unsigned(baud_rate_divider));
			else
				count := count + 1;
				if sender = '1' then
					if count >= baud_period then
						baud_en <= '1';
						count := 0;
					else
						baud_en <= '0';
					end if;
				else
					if count = baud_period/2 then
						baud_en <= '1';
					else
						baud_en <= '0';
					end if;
					if count >= baud_period then
						count := 0;
					end if;
				end if;
			end if;
		end if;
	end process;
end architecture RTL;
