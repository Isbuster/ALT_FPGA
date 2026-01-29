library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity HEART IS
port(
   CLK:     in  std_logic;
   RST_N:     in  std_logic;
   HEART_BEAT: out std_logic
   );
end HEART;

architecture RTL of HEART is

	signal HEART_CNT: unsigned (25 downto 0); 
   
begin  
 
 
   -- Heart Counter
   pHEART_CNT: process(CLK)
   begin
      if rising_edge(CLK) then
         if RST_N = '0' then
            HEART_CNT <= (others => '0');
         else
            HEART_CNT <= HEART_CNT + 1;
         end if;
      end if;
   end process pHEART_CNT;

   
   
   -- Create FIFO read Mux
   HEART_BEAT <= HEART_CNT(25); 
     
end;