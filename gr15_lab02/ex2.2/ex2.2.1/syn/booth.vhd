library ieee;
use ieee.std_logic_1164.all;

use WORK.constants.all;

entity Booth is
  generic (
    N : integer := 2*numBit);
  port (
    A : in  std_logic_vector(N-1 downto 0);
    B : in  std_logic_vector(N-1 downto 0);
    P : out std_logic_vector(N-1 downto 0));
end entity Booth;


-------------------------------------------------------------------------------
-- Structural Architecture
-------------------------------------------------------------------------------

architecture booth_struct of Booth is

  component booth_mul_row_special is
    generic (
      N : integer);
    port (
      A         : in  std_logic_vector(N-1 downto 0);
      encoderIn : in  std_logic_vector(radixN-1 downto 0);
      nextA     : out std_logic_vector(N-1 downto O);
      nextSum   : out std_logic_vector(N-1 downto 0));
  end component booth_mul_row_special;

  component booth_mul_row is
    generic (
      N : integer);
    port (
      prevA     : in  std_logic_vector(N-1 downto 0);
      prevSum   : in  std_logic_vector(N-1 downto 0);
      encoderIn : in  std_logic_vector(radixN-1 downto 0);
      nextA     : out std_logic_vector(N-1 downto O);
      nextSum   : out std_logic_vector(N-1 downto 0));
  end component booth_mul_row;

  -- Interconnections Layers
  type matrix_t is array (0 to N/2-1) of std_logic_vector(4*N-1 downto 0);
  signal sigMatrix : matrix_t;

begin  -- architecture booth_struct

  bool_generate : for i in 0 to N/2-1 generate
    first_level : if i = 0 generate
      booth_mul_row_special_1 : booth_mul_row_special generic map (
        N => N)
        port map (
          A       => A,
          encoderIn => B(i+1 downto i),
          nextA   => sigMatrix(i)(3*N-1 downto 2*N),
          nextSum => sigMatrix(i)(2*N-1 downto 0));
    end generate first_level;

    other_levels : if i > 0 generate
      booth_mul_row_1 : booth_mul_row generic map (
        N => N)
        port map (
          prevA   => sigMatrix(i-1)(3*N-1 downto 2*N),
          prevSum => sigMatrix(i-1)(2*N-1 downto 0),
          encoderIn => B(i*2+1 downto i*2-1),
          nextA   => sigMatrix(i)(3*N-1 downto 2*N),
          sumA    => sigMatrix(i)(2*N-1 downto 0));
    end generate other_levels;
  end generate bool_generate;

end architecture booth_struct;
