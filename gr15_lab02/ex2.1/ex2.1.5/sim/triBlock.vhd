library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity triBlock is
  port (
    Gk_1Pk_1_left  : in  std_logic_vector(1 downto 0);
    GikPik_left    : in  std_logic_vector(1 downto 0);
    
    Gk_1Pk_1_right : in  std_logic_vector(1 downto 0);
    GikPik_right   : in  std_logic_vector(1 downto 0);
    
    GijPij         : out std_logic_vector(1 downto 0));
end entity triBlock;

-------------------------------------------------------------------------------
-- Structural Architecture
------------------------------------------------------------------------------

architecture struct of triBlock is

  component GeneralPropagateGenerate is
    port (
      Gk_1Pk_1 : in  std_logic_vector(1 downto 0);
      GikPik   : in  std_logic_vector(1 downto 0);
      GijPij   : out std_logic_vector(1 downto 0));
  end component GeneralPropagateGenerate;

  signal PG_left_block_out, PG_right_block_out : std_logic_vector(1 downto 0);

begin  -- architecture struct

  PG_1 : GeneralPropagateGenerate port map (
    Gk_1Pk_1 => Gk_1Pk_1_left,
    GikPik   => GikPik_left,
    GijPij   => PG_left_block_out);

  PG_2 : GeneralPropagateGenerate port map (
    Gk_1Pk_1 => Gk_1Pk_1_right,
    GikPik   => GikPik_right,
    GijPij   => PG_right_block_out);

  PG_3 : GeneralPropagateGenerate port map (
    Gk_1Pk_1 => PG_right_block_out,
    GikPik   => PG_left_block_out,
    GijPij   => GijPij);

end architecture struct;
