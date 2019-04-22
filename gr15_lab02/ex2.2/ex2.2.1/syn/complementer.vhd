library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- use work.constants.all;


entity complementer is
  generic (
    N : integer);

  port (
    input       : in  std_logic_vector(N-1 downto 0);
    complement2 : out std_logic_vector(N-1 downto 0));
end entity complementer;


-------------------------------------------------------------------------------
-- Behavioral Architecture
-------------------------------------------------------------------------------

architecture beh of complementer is

  signal ones : std_logic_vector(N-1 downto 0) := (others => '1');
  signal zeros : std_logic_vector(N-2 downto 0) := (others => '0');
  
begin  -- architecture beh

  complement2 <= std_logic_vector(unsigned((input xor ones)) + unsigned(zeros & '1'));

end architecture beh;
