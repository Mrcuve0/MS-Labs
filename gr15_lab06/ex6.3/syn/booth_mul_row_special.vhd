library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.constants.all;

--------------------------------------------------------------------------------
-- Definition of the very first row of the Booth multiplier.
--
-- This structure is composed by an encoder, the ShiftnCompl_special entity and
-- the multiplexer.
-- 
-- The input values are the "A" operand and 3bits coming from the "B" operand.
-- (firts 2 Least Significan Bits + '0' bit value => first radix window).

-- The output values are the 2A value and the selected value to be fed to the 
-- next-row adder.
--------------------------------------------------------------------------------

entity booth_mul_row_special is
  generic (
    N     : integer;
    RADIX : integer);
  port (
    A         : in  std_logic_vector(N-1 downto 0);
    encoderIn : in  std_logic_vector(RADIX-1 downto 0);
    nextA     : out std_logic_vector(N-1 downto 0);
    nextSum   : out std_logic_vector(N-1 downto 0));
end entity booth_mul_row_special;


-------------------------------------------------------------------------------
-- Structural Architecture
-------------------------------------------------------------------------------

architecture struct of booth_mul_row_special is

  component encoder is
    generic (
      N     : integer;
      RADIX : integer);
    port (
      X : in  std_logic_vector(RADIX-1 downto 0);
      Z : out std_logic_vector(RADIX-1 downto 0));
  end component encoder;

  component ShiftnCompl_special is
    generic (
      N : integer);
    port (
      plusA                                          : in  std_logic_vector(N-1 downto 0);
      plusA_out, minusA_out, plus2A_out, minus2A_out : out std_logic_vector(N-1 downto 0));
  end component ShiftnCompl_special;

  component MUX_GENERIC is
    generic (
      N     : integer;
      RADIX : integer);
    port (
      plusA   : in  std_logic_vector(N-1 downto 0);
      minusA  : in  std_logic_vector(N-1 downto 0);
      plus2A  : in  std_logic_vector(N-1 downto 0);
      minus2A : in  std_logic_vector(N-1 downto 0);
      SEL     : in  std_logic_vector(RADIX-1 downto 0);
      Y       : out std_logic_vector(N-1 downto 0));
  end component MUX_GENERIC;

  -- interconnections between encoder and mux
  signal encoder_to_mux : std_logic_vector(RADIX-1 downto 0);

  -- interconnections between ShiftnCompl and MUX
  signal plusA_s, minusA_s, plus2A_s, minus2A_s : std_logic_vector(N-1 downto 0);


begin  -- architecture struct

  encoder_1 : encoder generic map (       -- Instantiation of the first encoder
    N     => N,
    RADIX => RADIX)
    port map (
      X => encoderIn,
      Z => encoder_to_mux);

  ShiftnCompl_special_1 : ShiftnCompl_special generic map (   -- Generates A, -A, 2A and -2A
    N => N)
    port map (
      plusA       => A,
      plusA_out   => plusA_s,
      minusA_out  => minusA_s,
      plus2A_out  => plus2A_s,
      minus2A_out => minus2A_s);

  mux_1 : MUX_GENERIC generic map (       -- Instantiation of the multiplexer, 
                                          -- it is connected with the encoder 
                                          -- and with the ShiftnCompl_special component.
    N     => N,
    RADIX => RADIX)
    port map (
      plusA   => plusA_s,
      minusA  => minusA_s,
      plus2A  => plus2A_s,
      minus2A => minus2A_s,
      SEL     => encoder_to_mux,
      Y       => nextSum);

  nextA <= plus2A_s;
end architecture struct;
