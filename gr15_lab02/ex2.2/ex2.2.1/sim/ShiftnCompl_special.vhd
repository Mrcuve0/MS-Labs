library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.constants.all;

--------------------------------------------------------------------------------
-- Definition of the ShiftnCompl component, "special" version.
--
-- This component instantiates internally 2 complementers and 1 shifter.
-- The shifter will create, given the "A" input, the "2A" output.
-- The first complementer will create, given the "A" input, the "-A" output.
-- The second complementer will create, given the "2A" input, the "-2A" output.
--------------------------------------------------------------------------------

entity ShiftnCompl_special is
  generic (
    N : integer:=numBit);
  port (
    plusA                                          : in  std_logic_vector(N-1 downto 0);
    plusA_out, minusA_out, plus2A_out, minus2A_out : out std_logic_vector(N-1 downto 0));
end entity ShiftnCompl_special;


-------------------------------------------------------------------------------
-- Structural Architecture
-------------------------------------------------------------------------------

architecture struct of ShiftnCompl_special is

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

  -- Interconnection between the shifter and the second complementer,
  -- and betwen the the shifter and the output of the ShiftnCompl_special
  -- entity.
  signal plus2A_s : std_logic_vector(N-1 downto 0);

begin  -- architecture struct

  shifter_1 : shifter generic map (           -- Generates the "2A" output
    N => N)
    port map (
      input           => plusA,
      shiftLeftOnePos => plus2A_s);

  complementer_1 : complementer generic map ( -- Generates the "-A" output
    N => N)
    port map (
      input       => plusA,
      complement2 => minusA_out);

  complementer_2 : complementer generic map ( -- Generates the "-2A" output
    N => N)
    port map (
      input       => plus2A_s,
      complement2 => minus2A_out);

  plusA_out  <= plusA;
  plus2A_out <= plus2A_s;

end architecture struct;
