LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY variable_test IS
  PORT(
    CLOCK_50  : IN STD_LOGIC;
    LEDG      : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END ENTITY;

ARCHITECTURE RTL OF variable_test IS
BEGIN
  process(CLOCK_50) is
    variable test_var : INTEGER range 0 to 6;
  begin
    if (rising_edge(CLOCK_50)) then
      test_var := test_var + 1;
      if (test_var > 6) then
        LEDG <= (others => '1');
      else
        LEDG <= (others => '0');
      end if;
    end if;
  end process;
END RTL;
