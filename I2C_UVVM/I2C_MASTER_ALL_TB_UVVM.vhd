----------------- COPYRIGHT NERA ASA 2000---------------------------------
--
-- File:          I2C_MASTER_ALL_TB_UVVM.vhd
-- Init Author:   
-- Init Date:     25 feb 2020
-- Project:
-- Description:
--
--------------------------------------------------------------------------
-- RCS Last Revision Information
-- 
-- $Revision$
-- $Author$
-- $Date$ 
--
--------------------------------------------------------------------------
-- RCS Revision History
--
-- $Log$
--
--------------------------------------------------------------------------
-- library declarations

library std;
use std.textio.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

use ieee.numeric_std.all;

library uvvm_util;
context uvvm_util.uvvm_util_context;
use uvvm_util.sbi_bfm_pkg.all;
use uvvm_util.i2c_bfm_pkg.all;

-- entity declaration of testbench
entity I2C_MASTER_ALL_TB_UVVM is
end I2C_MASTER_ALL_TB_UVVM;

-- behavoiural decription of testbench
architecture BEHAV of I2C_MASTER_ALL_TB_UVVM is

-- I2C_MASTER_ALL Component Declaration
component I2C_MASTER_ALL is
      port(
         CLK : IN STD_LOGIC;
         RST : IN STD_LOGIC;

         -- SBI
         chipselect : in std_logic;
         wr : in std_logic;
         rd : in std_logic;
         address : in std_logic_vector(2 downto 0);
         writedata : in std_logic_vector(31 downto 0);
         readdata : out std_logic_vector(31 downto 0);

         -- I2C
         scl : out std_logic;
         sda : inout std_logic
      );
end component I2C_MASTER_ALL;

-- Signal Declarations

shared variable T   : time := 20 ns;

signal sbi_if : t_sbi_if(addr(2 downto 0), wdata(31 downto 0), rdata(31 downto 0)) := init_sbi_if_signals(3, 32);

-- I2C_MASTER_ALL Input Signals

signal CLK               : std_logic := '0';
signal RST               : std_logic := '0';
signal CHIPSELECT        : std_logic := '0';
signal WR                : std_logic := '0';
signal RD                : std_logic := '0';
signal ADDRESS           : std_logic_vector(2 downto 0) := (others => '0');
signal WRITEDATA         : std_logic_vector(31 downto 0) := (others => '0');

signal scl               : std_logic := 'Z';
signal sda               : std_logic := 'Z';


-- -- I2C_MASTER_ALL Input Signals InOut Signals


-- -- I2C_MASTER_ALL Input Signals Output Signals

signal READDATA          : std_logic_vector(31 downto 0);

signal clock_ena     : boolean   := false;
signal term_poll     :std_logic  := '0';

begin


-- I2C_MASTER_ALL Port Map
   c_I2C_MASTER_ALL : component I2C_MASTER_ALL
    port map(
            clk        => CLK,
            rst        => RST,
            -- SBI inteface
            CHIPSELECT        => sbi_if.cs,
            WR                => sbi_if.wena,
            RD                => sbi_if.rena,
            address           => std_logic_vector(sbi_if.addr),
            WRITEDATA         => sbi_if.wdata,
            READDATA          => sbi_if.rdata,
            
            -- I2C
            scl => scl,
            sda => sda
         );

  

sbi_if.ready <= '1'; -- always ready in the same clock cycle.

-- styrbar clock generator

   clock_generator(CLK, clock_ena, T, "IRQC TB clock");

-- init process

   INIT : process
   
   constant C_SCOPE     : string  := C_TB_SCOPE_DEFAULT;

-- redefinition of SBI BFM to reduce number of parameters

   procedure write(
      constant addr_value   : in natural;
      constant data_value   : in std_logic_vector;
      constant msg          : in string) is
      begin
         sbi_write(to_unsigned(addr_value, 3), data_value, msg, CLK, sbi_if, C_SCOPE);
      end;

   procedure check(
      constant addr_value   : in natural;
      constant data_exp     : in std_logic_vector;
      constant alert_level  : in t_alert_level;
      constant msg          : in string) is
      begin
         sbi_check(to_unsigned(addr_value, 3), data_exp, msg, CLK, sbi_if, alert_level, C_SCOPE);
      end;
   
   procedure poll(
      constant addr_value   : in natural;
      constant data_exp     : in std_logic_vector;
      constant alert_level  : in t_alert_level;
      constant msg          : in string) is
      begin
         sbi_poll_until(to_unsigned(addr_value, 3),data_exp ,1000,1 ms,msg, CLK, sbi_if, term_poll);      
      end;
   
   begin

      set_alert_stop_limit(ERROR,0);
      report_global_ctrl(VOID);
      --report_msg_id_panel(VOID);
      enable_log_msg(ALL_MESSAGES);
      --disable_log_msg(ALL_MESSAGES);
      --enable_log_msg(ID_LOG_HDR);
      
      log(ID_LOG_HDR, "Start Simulation of TB for I2C_MASTER_ALL", C_SCOPE);
      
      clock_ena <= true; -- to start clock generator
      wait for 10*T;
      
      gen_pulse(RST, T, "Reset");
      wait for 10*T;
      
      log(ID_LOG_HDR, "Sjekk registere etter reset", C_SCOPE);
      
      check(0, x"00000000", ERROR, "sjekk TFR_CMD");
      wait for 10*T;

      check(1, x"00000000", ERROR, "sjekk RX_DATA");
      wait for 10*T;

      check(2, x"000001A7", ERROR, "sjekk CTRL");
      wait for 10*T;

      check(3, x"00000100", ERROR, "sjekk STATUS");
      wait for 10*T;

      check(4, x"00000000", ERROR, "sjekk TFR_CMD_FIFO");
      wait for 10*T;

      check(5, x"00000000", ERROR, "sjekk RX_DATA_FIFO");
      wait for 10*T;

      check(6, x"00000000", ERROR, "sjekk OP_CNT");
      wait for 10*T;

      -- starter wr
      write(0, x"00000000", "Skriver til TFR_CMD");
      wait for 10*T;

      -- stopper wr
      write(0, x"00000111", "Skriver til TFR_CMD");
      wait for 10*T;
   
      -- starter rd
      write(0, x"00000001", "Skriver til TFR_CMD");
      wait for 10*T;

      -- leser en byte
      write(0, x"00000002", "Skriver til TFR_CMD");
      wait for 10*T;

      -- leser en byte så stopper rd
      write(0, x"00000103", "Skriver til TFR_CMD");
      wait for 10*T;
      
      write(2, x"00000200", "Skriver til CTRL");
      wait for 40*T;

      check(0, x"00000103", ERROR, "sjekk TFR_CMD for nyeste verdi");
      wait for 10*T;

      check(1, x"00000000", ERROR, "sjekk RX_DATA for nyeste verdi");
      wait for 10*T;

      check(2, x"000002A7", ERROR, "sjekk CTRL etter at fast mode er startet");
      wait for 10*T;

      check(3, x"00000000", ERROR, "sjekk STATUS");
      wait for 10*T;

      check(4, x"00011104", ERROR, "sjekk TFR_CMD_FIFO nå som første TFR_CMD er sendt");
      wait for 10*T;

      check(5, x"00000000", ERROR, "sjekk RX_DATA_FIFO");
      wait for 30000*T;

      check(6, x"00000005", ERROR, "sjekk OP_CNT");
      wait for 30000*T;

      check(4, x"00000000", ERROR, "sjekk RESERVED");

      report_alert_counters(FINAL); -- Report final counters and print conclusion for simulation (Success/Fail)
      log(ID_LOG_HDR, "SIMULATION COMPLETED", C_SCOPE);

      wait for 1 sec;
   end process;

end BEHAV;