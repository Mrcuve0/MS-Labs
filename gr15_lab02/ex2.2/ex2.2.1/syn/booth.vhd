library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use WORK.constants.all;

entity Booth is
  generic (
    N     : integer := numBit;
    RADIX : integer := radixN);
  port (
    A : in  std_logic_vector(N-1 downto 0);
    B : in  std_logic_vector(N-1 downto 0);
    P : out std_logic_vector(2*N-1 downto 0));
end entity Booth;


-------------------------------------------------------------------------------
-- Structural Architecture
-------------------------------------------------------------------------------

architecture booth_struct of Booth is

  component booth_mul_row_special is
    generic (
      N     : integer;
      RADIX : integer);
    port (
      A         : in  std_logic_vector(N-1 downto 0);
      encoderIn : in  std_logic_vector(RADIX-1 downto 0);
      nextA     : out std_logic_vector(N-1 downto 0);
      nextSum   : out std_logic_vector(N-1 downto 0));
  end component booth_mul_row_special;

  component booth_mul_row is
    generic (
      N     : integer;
      RADIX : integer);
    port (
      prevA     : in  std_logic_vector(N-1 downto 0);
      prevSum   : in  std_logic_vector(N-1 downto 0);
      encoderIn : in  std_logic_vector(RADIX-1 downto 0);
      nextA     : out std_logic_vector(N-1 downto 0);
      nextSum   : out std_logic_vector(N-1 downto 0));
  end component booth_mul_row;

  -- Interconnections Layers
  -- numBit=8, N=16
  type matrix_t is array (0 to N/2-1) of std_logic_vector(4*N-1 downto 0);
  signal sigMatrix : matrix_t;

  signal firstEnconderVector : std_logic_vector(RADIX-1  downto 0);
  signal firstInput : std_logic_vector(2*N-1 downto 0);

begin  -- architecture booth_struct

 -- firstInput(2*N-1 downto N) <= (others => '0');
 -- firstInput(N-1 downto 0) <= A;
  firstEnconderVector <= B(1 downto 0) & '0';

  firstInput <= std_logic_vector(resize(signed(A), firstInput'length));

  bool_generate : for i in 0 to N/2-1 generate  -- numBit=8, N=16, gen=4
    first_level : if i = 0 generate
      booth_mul_row_special_1 : booth_mul_row_special generic map (
        N     => 2*N,
        RADIX => RADIX)
        port map (
          A         => firstInput,
          encoderIn => firstEnconderVector,
          nextA     => sigMatrix(i)(4*N-1 downto 2*N),
          nextSum   => sigMatrix(i)(2*N-1 downto 0));
    end generate first_level;

    other_levels : if i > 0 generate
      booth_mul_row_1 : booth_mul_row generic map (
        N     => 2*N,
        RADIX => RADIX)
        port map (
          prevA     => sigMatrix(i-1)(4*N-1 downto 2*N),
          prevSum   => sigMatrix(i-1)(2*N-1 downto 0),
          encoderIn => B(i*2+1 downto i*2-1),
          nextA     => sigMatrix(i)(4*N-1 downto 2*N),
          nextSum   => sigMatrix(i)(2*N-1 downto 0));
    end generate other_levels;
  end generate bool_generate;

  P <= sigMatrix(N/2-1)(2*N-1 downto 0);

end architecture booth_struct;
