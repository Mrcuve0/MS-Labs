library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.constants.all;

entity CSSG_generic is
  
  generic (
    N : integer := CSSG_NBIT);
  port (A,B : in std_logic_vector(CSSG_NBIT-1 downto 0);
    carry_vector : in std_logic_vector(CSSG_NBIT/numBit-1 downto 0);
    S: out std_logic_vector(CSSG_NBIT-1 downto 0));
    
end entity CSSG_generic;

architecture struct of CSSG_generic is

  component CSB_generic is
    generic (
      N : integer);
    port (
      A, B : in  std_logic_vector(N-1 downto 0);
      Cin  : in  std_logic;
      S    : out std_logic_vector(N-1 downto 0));
  end component CSB_generic;

begin  -- architecture struct

  carry_select_blocks: for i in 0 to CSSG_NBIT/numBit-1 generate
    CSB: CSB_generic generic map (
      N => numBit)
      port map (
        A   => A(i*numBit+numBit-1 downto i*numBit),
        B   => B(i*numbit+numbit-1 downto i*numBit),
        Cin => carry_vector(i),
        S   => S(i*numBit+numBit-1 downto i*numBit));
  end generate carry_select_blocks;

end architecture struct;
