library ieee;
use ieee.std_logic_1164.all;
use WORK.constants.all;

entity AND21_GENERIC is
  
  generic (
    N         : integer := numbit
  );

  port (
    A : in  std_logic_vector(N-1 downto 0);
    B : in  std_logic_vector(N-1 downto 0);
    Y : out std_logic_vector(N-1 downto 0));

end entity AND21_GENERIC;

-------------------------------------------------------------------------------
-- Behavioral Architecture
-------------------------------------------------------------------------------

architecture beh of AND21_GENERIC is

begin  -- architecture beh

  Y <= A and B; -- after NDDELAY;

end architecture beh;

configuration CFG_AND21_GEN_BEHAVIORAL of AND21_GENERIC is

  for beh
  end for;

end configuration CFG_AND21_GEN_BEHAVIORAL;
