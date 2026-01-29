library ieee;
use ieee.std_logic_1164.all;

entity antiprell is
	port(
		clk : in std_logic;
		reset_clk : in std_logic;
		input : in std_logic;
		passering : out std_logic := '1'
	);
end entity antiprell;

architecture RTL of antiprell is
	-- deklarer tilstander
	type tilstand_type is (start, vent, funnet_1, ligger_hoegt, til_null);
	signal tilstand : tilstand_type;
	signal teller : INTEGER range 0 to 5500 := 0;
begin
	-- process for tilstandsmaskin
	p_tilstandsmaskin : process(clk) is
	-- fyll ut
	begin
		if rising_edge(clk) then
			if reset_clk = '0' then
				tilstand <= start;
				teller <= 0;
			else
				teller <= teller + 1;
				case tilstand is
					--START
					when start =>
						teller <= 0;
						tilstand <= vent;
						passering <= '1';
					
					--VENT 
					when vent =>
						teller <= 0;
						passering <= '1';
						if input = '0' then
							tilstand <= funnet_1;
						elsif input = '1' then
							tilstand <= vent;
						end if;

					--FUNNET_1
					when funnet_1 =>
						if input = '0' and teller = 5000 then
							tilstand <= ligger_hoegt;
							teller <= 0;
						elsif input = '1' then
							tilstand <= vent;
						end if;

					--LIGGER_HOEGT
					when ligger_hoegt =>
						teller <= 0;
						if input = '1' then
							tilstand <= til_null;
						elsif input = '0' then
							tilstand <= ligger_hoegt;
						end if;

					--TIL_NULL
					when til_null =>
						teller <= teller + 1;
						if input = '1' and teller > 1000 then
							passering <= '0';
							tilstand <= vent;
						elsif input = '0' then
							tilstand <= ligger_hoegt;
						end if;
				end case;
			end if;
		end if;

	end process p_tilstandsmaskin;


end architecture RTL;
