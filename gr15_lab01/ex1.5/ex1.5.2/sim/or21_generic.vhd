library ieee;
use ieee.std_logic_1164.all;
use WORK.constants.all;

entity OR21_GENERIC is
  
  generic (
    N        : integer := numbit
  );

  port (
    A : in  std_logic_vector(N-1 downto 0);
    B : in  std_logic_vector(N-1 downto 0);
    Y : out std_logic_vector(N-1 downto 0));

end entity OR21_GENERIC;
-------------------------------------------------------------------------------
-- Behavioural architecture
-------------------------------------------------------------------------------

architecture beh of OR21_GENERIC is

begin  -- architecture beh

  Y <= A or B after NDDELAY;

end architecture beh;
