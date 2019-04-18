library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.math_real."log2";

use WORK.constants.all;


entity register_file is
  generic (
    NData : integer := numBitData;
    NRegs : integer := numRegs;
    NAddr : integer := integer(log2(real(numRegs)))); 
  port (CLK     : in  std_logic;
        RESET   : in  std_logic;
        ENABLE  : in  std_logic;
        RD1     : in  std_logic;
        RD2     : in  std_logic;
        WR      : in  std_logic;
        ADD_WR  : in  std_logic_vector(NAddr-1 downto 0);
        ADD_RD1 : in  std_logic_vector(NAddr-1 downto 0);
        ADD_RD2 : in  std_logic_vector(NAddr-1 downto 0);
        DATAIN  : in  std_logic_vector(NData-1 downto 0);
        OUT1    : out std_logic_vector(NData-1 downto 0);
        OUT2    : out std_logic_vector(NData-1 downto 0));
end register_file;


-------------------------------------------------------------------------------
-- Behavioral Architecture
-------------------------------------------------------------------------------


architecture A of register_file is

  -- suggested structures
  subtype REG_ADDR is natural range 0 to NRegs-1;  -- using natural type
  type REG_ARRAY is array(REG_ADDR) of std_logic_vector(NData-1 downto 0);
  signal REGISTERS : REG_ARRAY;

  
begin
-- write your RF code

  resetProc : process (clk, reset) is
  begin
    if enable = '1' then
      if rising_edge(clk) then
        if wr = '1' then
          registers(to_integer(unsigned(add_wr))) <= datain; 
        end if;
        if rd1 = '1' then
          out1 <= registers(to_integer(unsigned(add_rd1)));
        end if;
        if rd2 = '1' then
          out2 <= registers(to_integer(unsigned(add_rd2)));
        end if;
      end if;
    end if;
    
    if rising_edge(clk) then            -- Synchronous reset
      if reset = '1' then
          registers <= (others => (others => '0'));
      end if;
    end if;
  end process resetProc;

end A;
