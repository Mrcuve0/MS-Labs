library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.constants.all;

entity shift_tb is
  
end entity shift_tb;

architecture test of shift_tb is


  component ShiftnCompl is
    generic (
      N : integer);
    port (
      plusA                                            : in  std_logic_vector(N-1 downto 0);
      plus2A_out, minus2A_out, plus4A_out, minus4A_out : out std_logic_vector(N-1 downto 0));
  end component ShiftnCompl;
  signal plusA_s,plus2A_s,minus2A_s,plus4A_s,minus4A_s : std_logic_vector(numBit-1 downto 0);
  
begin  -- architecture test
  shiftcompl_1 : ShiftnCompl generic map (
    N => numBit)
    port map (
      plusA       => plusA_s,
      plus2A_out  => plus2A_s,
      minus2A_out => minus2A_s,
      plus4A_out  => plus4A_s,
      minus4A_out => minus4A_s);

  plusA_s <= "00000010";
  
end architecture test;
