library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.math_real.all;

use work.constants.all;

-------------------------------------------------------------------------------
-- Definition of the generic behavioral Physical Register File
-- Synchronous reset, enable/read/write signals active high
-- If enable = 0 outputs are High Impedance
-------------------------------------------------------------------------------

entity physical_RF is
  generic (
    NData : integer := numBitData;      -- Bit width of the regs
    NRegs : integer := numRegs_physical_RF;  -- Number of registers in
                                             -- the physical Register File
    NAddr : integer := integer(ceil(log2(real(numRegs_physical_RF)))));  -- Number of address lines
  port (CLK    : in std_logic;
        RESET  : in std_logic;
        ENABLE : in std_logic;
        RD1    : in std_logic;
        RD2    : in std_logic;
        WR     : in std_logic;

        RD_Mem : in std_logic;
        WR_Mem : in std_logic;

        ADD_WR  : in std_logic_vector(NAddr-1 downto 0);
        ADD_RD1 : in std_logic_vector(NAddr-1 downto 0);
        ADD_RD2 : in std_logic_vector(NAddr-1 downto 0);

        ADD_SF : in std_logic_vector(NAddr-1 downto 0);

        DATAIN : in  std_logic_vector(NData-1 downto 0);
        OUT1   : out std_logic_vector(NData-1 downto 0);
        OUT2   : out std_logic_vector(NData-1 downto 0);

        RFtoMEM_BUS : buffer std_logic_vector(NData-1 downto 0));
end physical_RF;

-------------------------------------------------------------------------------
-- Behavioral Architecture
-------------------------------------------------------------------------------

architecture beh of physical_RF is

  -- suggested structures
  subtype REG_ADDR is natural range 0 to NRegs-1;  -- using natural type
  type REG_ARRAY is array(REG_ADDR) of std_logic_vector(NData-1 downto 0);

  signal REGISTERS : REG_ARRAY;         -- Definition of the Array of registers

begin

  RFproc : process (clk) is
  begin
    if rising_edge(clk) then            -- Sinchronous reset  

      if reset = '1' then
        registers <= (others => (others => '0'));
      end if;

      if enable = '1' then
        
        if rd1 = '1' then  -- Read (port1) signal is asserted, read data @ add_rd1 address
          out1 <= registers(to_integer(unsigned(add_rd1)));
        end if;
        if rd2 = '1' then  -- Read (port2) signal is asserted, read data @ add_rd2 address
          out2 <= registers(to_integer(unsigned(add_rd2)));
        end if;
        if WR_Mem = '1' then
          RFtoMEM_BUS <= registers(to_integer(unsigned(add_SF)));
        end if;
        if RD_Mem = '1' then
          registers(to_integer(unsigned(add_SF))) <= RFtoMEM_BUS;
        end if;
        
        if wr = '1' then  -- Write (port1) signal is asserted, write data @ add_wr address
          registers(to_integer(unsigned(add_wr))) <= datain;
          if rd1 = '1' and add_rd1 = add_wr then  -- Simultaneous write/read
            out1 <= dataIn;
          end if;
          if rd2 = '1' and add_rd2 = add_wr then  -- Simultaneous write/read
            out2 <= dataIn;
          end if;
        end if;
        
      else                              -- Enable = '0'
        out1 <= (others => 'Z');
        out2 <= (others => 'Z');
      end if;

    end if;
  end process RFproc;

end architecture beh;
