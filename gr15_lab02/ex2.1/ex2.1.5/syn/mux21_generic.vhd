library ieee;
use ieee.std_logic_1164.all;
use WORK.constants.all;

entity MUX21_GENERIC is
	Generic (N: integer:= numbit);
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

-------------------------------------------------------------------------------
-- Structural Architecture
-------------------------------------------------------------------------------

architecture struct of MUX21_GENERIC is
  
  component AND21_GENERIC is
    generic (
      N         : integer
    );
    port (
      A : in  std_logic_vector(N-1 downto 0);
      B : in  std_logic_vector(N-1 downto 0);
      Y : out std_logic_vector(N-1 downto 0));
  end component AND21_GENERIC;

  component NOT_GENERIC is
    generic (
      N         : integer
    );
    port (
      A : in  std_logic_vector(N-1 downto 0);
      Y : out std_logic_vector(N-1 downto 0));
  end component NOT_GENERIC;

  component OR21_GENERIC is
    generic (
      N        : integer
    );
    port (
      A : in  std_logic_vector(N-1 downto 0);
      B : in  std_logic_vector(N-1 downto 0);
      Y : out std_logic_vector(N-1 downto 0));
  end component OR21_GENERIC;

  signal NotAnd1_s, AndOr1_s, AndOr2_s : std_logic_vector(N-1 downto 0);
  signal S_s : std_logic_vector(N-1 downto 0);
  
begin  -- architecture struct

  S_s <= (others =>  SEL );

  And1 : AND21_GENERIC generic map (
    N => N) port map (
    A => A,
    B => NotAnd1_s,
    Y => AndOr1_s);

  Not1 : NOT_GENERIC generic map (
    N => N) port  map (
    A => S_s,
    Y => NotAnd1_s);

  And2 : AND21_GENERIC generic map (
    N => N) port map (
    A => B,
    B => S_s,
    Y => AndOr2_s);

  Or2 : OR21_GENERIC generic map (
    N => N) port map (
    A => AndOr1_s,
    B => AndOr2_s,
    Y => Y);

end architecture struct;

-------------------------------------------------------------------------------
-- Configuration for the Generic MUX
-------------------------------------------------------------------------------

configuration CFG_MUX21_GEN_BEHAVIORAL of MUX21_GENERIC is

  for beh
  end for;

end configuration CFG_MUX21_GEN_BEHAVIORAL;

configuration CFG_MUX21_GEN_STRUCTURAL of MUX21_GENERIC is

  for struct
  end for;

end configuration CFG_MUX21_GEN_STRUCTURAL;
