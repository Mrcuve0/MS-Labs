library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity PGNetBlock is
  port (
    a, b : in  std_logic;
    gp : out std_logic_vector(1 downto 0));  -- g (MSB), p (LSB)
end entity PGNetBlock;

-------------------------------------------------------------------------------
-- Behavioral Architecture
-------------------------------------------------------------------------------

architecture beh of PGNetBlock is

begin  -- architecture beh

  gp(1) <= a and b;
  gp(0) <= a xor b;

end architecture beh;
