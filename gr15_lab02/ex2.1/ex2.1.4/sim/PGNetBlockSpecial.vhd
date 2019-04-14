library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SpecialPGBlock is
  port (
    a, b : in  std_logic;
    Cin    : in  std_logic;
    G1_0 : out std_logic);
end entity SpecialPGBlock;

-------------------------------------------------------------------------------
-- Structural Architecture
-------------------------------------------------------------------------------

architecture struct of SpecialPGBlock is

  component PGNetBlock is
    port (
      a, b : in  std_logic;
      gp   : out std_logic_vector(1 downto 0));
  end component PGNetBlock;

  component GeneralGenerate is
    port (
      Gk_1   : in  std_logic;
      GikPik : in  std_logic_vector(1 downto 0);
      Gij    : out std_logic);
  end component GeneralGenerate;

  signal g1p1 : std_logic_vector(1 downto 0);

begin  -- architecture struct

  PGBlock : PGNetBlock port map (
    a  => a,
    b  => b,
    gp => g1p1);

  GGBlock : GeneralGenerate port map (
    Gk_1   => Cin,
    GikPik => g1p1,
    Gij    => G1_0);

end architecture struct;
