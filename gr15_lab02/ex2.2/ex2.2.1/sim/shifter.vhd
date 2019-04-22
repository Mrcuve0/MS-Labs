library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity shifter is
  generic (
    N       : integer := numBit);
  port (
    input       : in  std_logic_vector(N-1 downto 0);
    shiftLeftOnePos      : out std_logic_vector(xsN-1 downto 0));
end entity shifter;


-------------------------------------------------------------------------------
-- Behavioral Architecture
-------------------------------------------------------------------------------

architecture beh of shifter is

begin  -- architecture beh

  input <= shiftLeftOnePos sll 1;

end architecture beh;
