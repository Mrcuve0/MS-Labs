library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--------------------------------------------------------------------------------
-- Definition of the "normal" block composing the PG-Network 
-- (valid for all the blocks composing the PG-Network, except for the very first one)
--------------------------------------------------------------------------------

entity PGNetBlock is
  port (
    a, b : in  std_logic;
    gp : out std_logic_vector(1 downto 0));  -- g (MSB of the vector), p (LSB of the vector)
end entity PGNetBlock;

-------------------------------------------------------------------------------
-- Behavioral Architecture
-------------------------------------------------------------------------------

architecture beh of PGNetBlock is

begin  -- architecture beh

  gp(1) <= a and b;   -- g
  gp(0) <= a xor b;   -- p

end architecture beh;
