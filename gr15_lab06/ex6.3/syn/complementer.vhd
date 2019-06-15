library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.constants.all;

--------------------------------------------------------------------------------
-- Definition of the 2-complementer block.
--
-- It takes the "normal" input pattern as input and 2-complements it. 
-- The 2-complemented value it dropped as output.
--------------------------------------------------------------------------------

entity complementer is
  generic (
    N : integer:=numBit);
  port (
    input       : in  std_logic_vector(N-1 downto 0);
    complement2 : out std_logic_vector(N-1 downto 0));
end entity complementer;


-------------------------------------------------------------------------------
-- Behavioral Architecture
-------------------------------------------------------------------------------

architecture beh of complementer is

begin  -- architecture beh

  complement2 <= std_logic_vector(unsigned(not input) + 1);

end architecture beh;
