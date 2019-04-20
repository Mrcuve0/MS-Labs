library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--------------------------------------------------------------------------------
-- Definition of the "special" block composing the PG-Network
-- (valid only the first block of the PG-Network)

-- This block is internally composed by a "normal" PG-Network block, 
-- followed by a General Generate block.
--------------------------------------------------------------------------------

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

  signal g1p1 : std_logic_vector(1 downto 0);   -- Interconnects the PGNetblock and the GeneralGenerate block

begin  -- architecture struct

  PGBlock : PGNetBlock port map (
    a  => a,
    b  => b,
    gp => g1p1);        -- g (MSB of the vector), p (LSB of the vector)

--  g1p1(0) <= '0';

  GGBlock : GeneralGenerate port map (
    Gk_1   => Cin,
    GikPik => g1p1,     -- Gi:k (MSB of the vector), Pi:k (LSB of the vector)
    Gij    => G1_0);

end architecture struct;
