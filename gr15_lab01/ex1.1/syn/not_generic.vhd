library ieee;
use ieee.std_logic_1164.all;
use WORK.constants.all;

entity NOT_GENERIC is
  
  generic (
    N         : integer := numbit
  );

  port (
    A : in  std_logic_vector(N-1 downto 0);
    Y : out std_logic_vector(N-1 downto 0));

end entity NOT_GENERIC;

-------------------------------------------------------------------------------
-- Behavioral Architecture
-------------------------------------------------------------------------------

architecture beh of NOT_GENERIC is

begin  -- architecture beh

  Y <= not A; -- after IVDELAY;

end architecture beh;

configuration CFG_NOT_GEN_BEHAVIORAL of NOT_GENERIC is

  for beh
  end for;

end configuration CFG_NOT_GEN_BEHAVIORAL;
