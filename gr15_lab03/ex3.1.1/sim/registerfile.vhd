library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.math_real."log2";

use WORK.constants.all;

-------------------------------------------------------------------------------
-- Definition of the generic behavioral Register File
-------------------------------------------------------------------------------

entity register_file is
  generic (
    NData : integer := numBitData;      -- Bit width of the regs
    NRegs : integer := numRegs;         -- Number of registers
    NAddr : integer := integer(log2(real(numRegs))));  -- Number of address lines
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

  signal REGISTERS : REG_ARRAY;         -- Definition of the Array of registers

  
begin

  resetProc : process (clk, reset) is
  begin
    if enable = '1' then
      if rising_edge(clk) then
        if rd1 = '1' then
          out1 <= registers(to_integer(unsigned(add_rd1)));
        end if;

        if rd2 = '1' then
          out2 <= registers(to_integer(unsigned(add_rd2)));
        end if;

        if wr = '1' then                -- Write port #1
          registers(to_integer(unsigned(add_wr))) <= datain;
          if rd1 = '1' then             -- Simultaneous write/read
            out1 <= dataIn;
          end if;
          if rd2 = '1' then             -- Simultaneous write/read
            out2 <= dataIn;
          end if;
        end if;
      end if;
    end if;

    if rising_edge(clk) then            -- Synchronous reset
      if reset = '1' then
        registers <= (others => (others => '0'));
      end if;
    end if;
  end process resetProc;

  --rd1Proc : process(clk)
  --begin
  --  if enable = '1' then
  --    if rising_edge(clk) then
  --      if rd1 = '1' then
  --        out1 <= registers(to_integer(unsigned(add_rd1)));
  --      end if;
  --    end if;
  --  end if;
  --end process;

  --rd2Proc : process(clk)
  --begin
  --  if enable = '1' then
  --    if rising_edge(clk) then
  --      if rd2 = '1' then
  --        out2 <= registers(to_integer(unsigned(add_rd2)));
  --      end if;
  --    end if;
  --  end if;
  --end process;

  --wr1Proc : process(clk)
  --begin
  --  if enable = '1' then
  --    if rising_edge(clk) then
  --      if wr = '1' then
  --        registers(to_integer(unsigned(add_wr))) <= datain;
  --      end if;
  --    end if;
  --  end if;
  --end process;

  --resetProc : process(clk)
  --begin
  --  if rising_edge(clk) then            -- Synchronous reset
  --    if reset = '1' then
  --      registers <= (others => (others => '0'));
  --    end if;
  --  end if;
  --end process;

end A;
