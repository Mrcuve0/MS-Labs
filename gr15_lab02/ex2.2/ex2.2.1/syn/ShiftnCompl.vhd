library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.constants.all;


entity ShiftnCompl is

  generic (
    N : integer := numBit*2);

  port (
    plusA                                          : in  std_logic_vector(N-1 downto 0);
    plusA_out, minusA_out, plus2A_out, minus2A_out : out std_logic_vector(N-1 downto 0));
end entity ShiftnCompl;


-------------------------------------------------------------------------------
-- Structural Architecture
-------------------------------------------------------------------------------

architecture struct of ShiftnCompl is

  component complementer is
    generic (
      N : integer);
    port (
      input       : in  std_logic_vector(N-1 downto 0);
      complement2 : out std_logic_vector(N-1 downto 0));
  end component complementer;

  component shifter is
    generic (
      N : integer);
    port (
      input           : in  std_logic_vector(N-1 downto 0);
      shiftLeftOnePos : out std_logic_vector(N-1 downto 0));
  end component shifter;

  signal plus2A_s : std_logic_vector(N-1 downto 0);

begin  -- architecture struct

  shifter_1 : shifter generic map (
    N => N)
    port map (
      input           => plusA,
      shiftLeftOnePos => plus2A_s);

  complementer_1 : complementer generic map (
    N => N)
    port map (
      input       => plusA,
      complement2 => minusA_out);

  complementer_2 : complementer generic map (
    N => N)
    port map (
      input       => plus2A_s,
      complement2 => minus2A_out);

  plusA_out  <= plusA;
  plus2A_out <= plus2A_s;

end architecture struct;
