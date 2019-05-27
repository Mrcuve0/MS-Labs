library ieee;
use ieee.std_logic_1164.all;
--use WORK.constants.all;

entity MUX21_GENERIC is
  generic( Nfunc: integer := 11;
           Nopcode: integer :=6;
           N : integer := 11);
	Port (	A:	In	std_logic_vector(N-1 downto 0);
		B:	In	std_logic_vector(N-1 downto 0);
		SEL:	In	std_logic;
		Y:	Out	std_logic_vector(N-1 downto 0));
end entity;

-------------------------------------------------------------------------------
-- Behavioral Architecture
-------------------------------------------------------------------------------

architecture beh of MUX21_GENERIC is

begin  -- architecture beh

  process (A, B, SEL) is
  begin  -- process
    case SEL is
    when '0' => Y <= A;
    when others => Y <= B;
  end case;
  end process;
  

end architecture beh;

