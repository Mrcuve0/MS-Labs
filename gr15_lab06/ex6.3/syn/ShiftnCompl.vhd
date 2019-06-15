library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.constants.all;

--------------------------------------------------------------------------------
-- Definition of the ShiftnCompl, "normal" version.
--
-- This component instantiates 2 shifters and 2 complementers.
-- The first shifter creates, given the "A" input, the "2A" output.
-- The second shifter creates, given the "2A" input (coming from the 1st shifter),
-- the "4A" output. 
-- The first complementer creates, given the "2A" input, the "-2A" output.
-- The second complementer creates, given the "4A" input, the "-4A" output.
--------------------------------------------------------------------------------

entity ShiftnCompl is
  generic (
    N : integer:=numBit);
  port (
    plusA                                            : in  std_logic_vector(N-1 downto 0);
    plus2A_out, minus2A_out, plus4A_out, minus4A_out : out std_logic_vector(N-1 downto 0));
end entity ShiftnCompl;


-------------------------------------------------------------------------------
-- Structural Architecture
-------------------------------------------------------------------------------

architecture struct of ShiftnCompl is

  component shifter is
    generic (
      N : integer);
    port (
      input           : in  std_logic_vector(N-1 downto 0);
      shiftLeftOnePos : out std_logic_vector(N-1 downto 0));
  end component shifter;

  component complementer is
    generic (
      N : integer);
    port (
      input       : in  std_logic_vector(N-1 downto 0);
      complement2 : out std_logic_vector(N-1 downto 0));
  end component complementer;

  signal plus2A_s, plus4A_s : std_logic_vector(N-1 downto 0);

begin  -- architecture struct

  shifter_1 : shifter generic map (           -- Generates the "2A" output
    N => N)
    port map (
      input           => plusA,
      shiftLeftOnePos => plus2A_s);

  shifter_2 : shifter generic map (           -- Generates the "4A" output
    N => N)
    port map (
      input           => plus2A_s,
      shiftLeftOnePos => plus4A_s);

  complementer_1 : complementer generic map ( -- Generates the "-2A" output
    N => N)
    port map (
      input       => plus2A_s,
      complement2 => minus2A_out);

  complementer_2 : complementer generic map ( -- Generates the "-4A" output
    N => N)
    port map (
      input       => plus4A_s,
      complement2 => minus4A_out);

  plus2A_out <= plus2A_s;
  plus4A_out <= plus4A_s;

end architecture struct;
