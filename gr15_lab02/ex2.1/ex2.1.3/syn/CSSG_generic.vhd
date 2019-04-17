library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.constants.all;

entity CSSG_generic is
  generic (
    N     : integer := numBit;
    RADIX : integer := radixN);
  port (A, B         : in  std_logic_vector(N-1 downto 0);
        Cin          : in  std_logic;
        carry_vector : in  std_logic_vector(N/RADIX-1 downto 0);
        Cout         : out std_logic;
        S            : out std_logic_vector(N-1 downto 0));
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

  carry_select_blocks : for i in 0 to N/RADIX-1 generate
    firstCSB : if i = 0 generate
      CSB : CSB_generic generic map (
        N => radixN)
        port map (
          A   => A(i*RADIX+RADIX-1 downto i*RADIX),
          B   => B(i*RADIX+RADIX-1 downto i*RADIX),
          Cin => Cin,
          S   => S(i*RADIX+RADIX-1 downto i*RADIX));
    end generate firstCSB;

    othersCSB : if i > 0 generate
      CSB : CSB_generic generic map (
        N => radixN)
        port map (
          A   => A(i*RADIX+RADIX-1 downto i*RADIX),
          B   => B(i*RADIX+RADIX-1 downto i*RADIX),
          Cin => carry_vector(i-1),
          S   => S(i*RADIX+RADIX-1 downto i*RADIX));
    end generate othersCSB;
  end generate carry_select_blocks;

  Cout <= carry_vector(N/RADIX-1);

end architecture struct;
