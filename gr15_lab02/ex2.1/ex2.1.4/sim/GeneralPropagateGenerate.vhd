library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity GeneralPropagateGenerate is
  
  port (
    Gk_1Pk_1 : in  std_logic_vector(1 downto 0);  -- Gk-1:j (MSB), Pk-1:j (LSB)
    GikPik   : in  std_logic_vector(1 downto 0);  -- Gi:k (MSB),  Pi:k (LSB)
    GijPij   : out std_logic_vector(1 downto 0));  -- Gi:j (MSB), Pi:j (LSB)

end entity GeneralPropagateGenerate;

-------------------------------------------------------------------------------
-- Behavioral Architecture
-------------------------------------------------------------------------------

architecture beh of GeneralPropagateGenerate is

begin  -- architecture beh

  -- General generate section
  GijPij(1) <= (GikPik(1) or GikPik(0)) and Gk_1Pk_1(1);

  -- General propagate section
  GijPij(0) <= GikPik(0) and Gk_1Pk_1(0);

end architecture beh;
