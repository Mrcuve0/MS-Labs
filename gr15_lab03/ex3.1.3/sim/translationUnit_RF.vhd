library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.constants.all;


entity translationUnit_RF is
  generic (
    N              : integer := numN;
    M              : integer := numM;
    windowBlocks   : integer := numWindowBlocks;
    F              : integer := numF;
    NAddr_Windowed : integer := integer(ceil(log2(real(numN * numwindowBlocks + numM))));
    NAddr_Physical : integer := integer(ceil(log2(real(numRegs_physical_RF)))));
  port (
    clk         : in  std_logic;
    reset       : in  std_logic;
    enable      : in  std_logic;
    -- signals
    rd1         : in  std_logic;
    rd2         : in  std_logic;
    wr          : in  std_logic;
    -- inputs
    add_wr      : in  std_logic_vector(NAddr_Windowed-1 downto 0);
    add_rd1     : in  std_logic_vector(NAddr_Windowed-1 downto 0);
    add_rd2     : in  std_logic_vector(NAddr_Windowed-1 downto 0);
    -- from CU
    cwp         : in  std_logic_vector(integer(ceil(log2(real(windowRounds*numF))))-1 downto 0);
    -- outputs
    add_wr_out  : out std_logic_vector(NAddr_Physical-1 downto 0);
    add_rd1_out : out std_logic_vector(NAddr_Physical-1 downto 0);
    add_rd2_out : out std_logic_vector(NAddr_Physical-1 downto 0));
end entity translationUnit_RF;


architecture beh of translationUnit_RF is

begin  -- architecture beh

  
  TranslProc : process (clk, reset, enable, add_wr, wr, cwp) is
  begin  -- process
    --if rising_edge(clk) then
      
      if reset = '1' then
        add_wr_out  <= (others => '0');
        add_rd1_out <= (others => '0');
        add_rd2_out <= (others => '0');
      end if;

      if enable = '1' then
        if wr = '1' then

          if to_integer(unsigned(add_wr)) > (numWindowBlocks * numN) - 1 then
            add_wr_out <= std_logic_vector(to_unsigned(to_integer(unsigned(add_wr)) - (numWindowBlocks * N) + numRegs_physical_RF - N, add_wr_out'length));
          else
            add_wr_out <= std_logic_vector( to_unsigned(to_integer(unsigned(add_wr)) + to_integer(unsigned(cwp)) mod F * N * 2, add_wr_out'length) ) ;
                                        -- address on window block + cwp mod the number of windows in physical RF *
                                        -- number of register per window * 2 blocks
          end if;
        end if;
        
        if rd1 = '1' then
--          add_rd1_out <= std_logic_vector(unsigned(add_rd1) + (to_integer(unsigned(cwp)) mod F) * N * 2);
        end if;
        
        if rd2 = '1' then
--          add_rd2_out <= std_logic_vector(unsigned(add_rd2) + (to_integer(unsigned(cwp)) mod F) * N * 2);
        end if;
        
      -- else
      --   add_wr_out  <= (others => '0');
      --   add_rd1_out <= (others => '0');
      --   add_rd2_out <= (others => '0');
      end if;
   -- end if;
  end process TranslProc;


end architecture beh;
