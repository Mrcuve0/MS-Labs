library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity triBlockSpecial is
  port (
    GikPik_left   : in std_logic_vector(1 downto 0);
    Gk_1Pk_1_left : in std_logic_vector(1 downto 0);

    GikPik_right : in std_logic_vector(1 downto 0);
    Gk_1_right   : in std_logic;

    Gij : out std_logic);
end entity triBlockSpecial;

-------------------------------------------------------------------------------
-- Structural Architecture
------------------------------------------------------------------------------

architecture struct of triBlockSpecial is

  component GeneralPropagateGenerate is
    port (
      Gk_1Pk_1 : in  std_logic_vector(1 downto 0);
      GikPik   : in  std_logic_vector(1 downto 0);
      GijPij   : out std_logic_vector(1 downto 0));
  end component GeneralPropagateGenerate;

  component GeneralGenerate is
    port (
      Gk_1   : in  std_logic;
      GikPik : in  std_logic_vector(1 downto 0);
      Gij    : out std_logic);
  end component GeneralGenerate;

  signal PG_left_block_out : std_logic_vector(1 downto 0);
  signal G_right_block_out : std_logic;

begin  -- architecture struct

  PG_1 : GeneralPropagateGenerate port map (
    Gk_1Pk_1 => Gk_1Pk_1_left,
    GikPik   => GikPik_left,
    GijPij   => PG_left_block_out);

  G_1 : GeneralGenerate port map (
    Gk_1   => Gk_1_right,
    GikPik => GikPik_right,
    Gij    => G_right_block_out);

  G_2 : GeneralGenerate port map (
    Gk_1   => G_right_block_out,
    GikPik => PG_left_block_out,
    Gij    => Gij);

end architecture struct;
