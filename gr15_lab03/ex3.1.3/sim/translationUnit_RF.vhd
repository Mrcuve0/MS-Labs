library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.constants.all;


entity translationUnit_RF is
  generic (
    N            : integer := numN;
    M            : integer := numM;
    windowBlocks : integer := numWindowBlocks;
    F            : integer := numF;
    NAddr        : integer := integer(log2(real(N*windowBlocks + M))));
  port (
    clk         : in  std_logic;
    reset       : in  std_logic;
    enable      : in  std_logic;
    --signals
    rd1         : in  std_logic;
    rd2         : in  std_logic;
    wr          : in  std_logic;
    --inputs
    add_wr      : in  std_logic_vector(NAddr-1 downto 0);
    add_rd1     : in  std_logic_vector(NAddr-1 downto 0);
    add_rd2     : in  std_logic_vector(NAddr-1 downto 0);
    cwp         : in  std_logic_vector(integer(log2(real(windowRounds*numF)))-1 downto 0);
    --outputs
    add_wr_out  : out std_logic_vector(NAddr-1 downto 0);
    add_rd1_out : out std_logic_vector(NAddr-1 downto 0);
    add_rd2_out : out std_logic_vector(NAddr-1 downto 0));
end entity translationUnit_RF;


architecture beh of translationUnit_RF is

begin  -- architecture beh
   TranslProc : process (clk, reset) is
   begin  -- process
    if rising_edge(clk) then
      if reset = '1'  then
        add_wr_out  <= (others => '0');
        add_rd1_out <= (others => '0');
        add_rd2_out <= (others => '0');
      end if;

      if enable = '1'  then 
       if wr = '1' then
        add_wr_out <= std_logic_vector(unsigned(add_wr) + (to_integer(cwp) mod F)*N*2);
--address on window block + cwp mod the number of windows in physical RF *
--number of register per window * 2 blocks
       end if;
       if rd1 = '1' then
          add_rd1_out <= std_logic_vector(unsigned(add_rd1) + (to_integer(cwp) mod F)*N*2);
       end if;
       if rd2 = '1' then
         add_rd2_out <= std_logic_vector(unsigned(add_rd2) + (to_integer(cwp) mod F)*N*2);
       end if;
      else
        add_wr_out  <= (others => '0');
        add_rd1_out <= (others => '0');
        add_rd2_out <= (others => '0');
      end if;
      
    end if;
    
   end process TranslProc;


end architecture beh;
