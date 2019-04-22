library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- use work.constants.all;


entity booth_mul_row is
  generic (
    N : integer;
    RADIX: integer);
  port (
    prevA     : in  std_logic_vector(N-1 downto 0);
    prevSum   : in  std_logic_vector(N-1 downto 0);
    encoderIn : in  std_logic_vector(RADIX-1 downto 0);
    nextA     : out std_logic_vector(N-1 downto 0);
    nextSum   : out std_logic_vector(N-1 downto 0));
end entity booth_mul_row;


-------------------------------------------------------------------------------
-- Structural Architecture
-------------------------------------------------------------------------------

architecture struct of booth_mul_row is

  component encoder is
    generic (
      N : integer;
      RADIX : integer);
    port (
      X : in  std_logic_vector(RADIX-1 downto 0);
      Z : out std_logic_vector(RADIX-1 downto 0));
  end component encoder;

  component ShiftnCompl is
    generic (
      N : integer);
    port (
      plusA                                            : in  std_logic_vector(N-1 downto 0);
      plus2A_out, minus2A_out, plus4A_out, minus4A_out : out std_logic_vector(N-1 downto 0));
  end component ShiftnCompl;

  component MUX_GENERIC is
    generic (
      N : integer;
      RADIX : integer);
    port (
      plusA   : in  std_logic_vector(N-1 downto 0);
      minusA  : in  std_logic_vector(N-1 downto 0);
      plus2A  : in  std_logic_vector(N-1 downto 0);
      minus2A : in  std_logic_vector(N-1 downto 0);
      SEL     : in  std_logic_vector(RADIX-1 downto 0);
      Y       : out std_logic_vector(N-1 downto 0));
  end component MUX_GENERIC;

  component RCA is
    generic (
      N : integer);
    port (
      A  : in  std_logic_vector(N-1 downto 0);
      B  : in  std_logic_vector(N-1 downto 0);
      Ci : in  std_logic;
      S  : out std_logic_vector(N-1 downto 0);
      Co : out std_logic);
  end component RCA;

  for all : RCA
    use entity work.RCA(Behavioral);

  -- interconnections between encoder and mux
  signal encoder_to_mux : std_logic_vector(RADIX-1 downto 0);

  -- additional interconnectios
  -- signal nextA_s        : std_logic_vector(N-1 downto 0);

  -- interconnections between ShiftnCompl and MUX
  signal plus2A_s, minus2A_s, plus4A_s, minus4A_s : std_logic_vector(N-1 downto 0);

  -- interconnections between mux and Adder
  signal mux_to_adder : std_logic_vector(N-1 downto 0);

begin  -- architecture struct


  encoder_1 : encoder generic map (
    N => N,
    RADIX => RADIX)
    port map (
      X => encoderIn,
      Z => encoder_to_mux);

  ShiftnCompl_1 : ShiftnCompl generic map (
    N => N)
    port map (
      plusA       => prevA,
      plus2A_out  => plus2A_s,
      minus2A_out => minus2A_s,
      plus4A_out  => plus4A_s,
      minus4A_out => minus4A_s);

  mux_1 : MUX_GENERIC generic map (
    N => N,
    RADIX => RADIX)
    port map (
      plusA   => plus2A_s,
      minusA  => minus2A_s,
      plus2A  => plus4A_s,
      minus2A => minus4A_s,
      SEL     => encoder_to_mux,
      Y       => mux_to_adder);

  rca_1 : RCA generic map (
    N => N)
    port map (
      A  => mux_to_adder,
      B  => prevSum,
      Ci => '0',
      S  => nextSum);

  nextA <= plus4A_s;
end architecture struct;
