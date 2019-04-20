library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--------------------------------------------------------------------------------
-- Definition of the General PG Block
--------------------------------------------------------------------------------

entity GeneralPropagateGenerate is
  
  port (
    Gk_1Pk_1 : in  std_logic_vector(1 downto 0);  -- Gk-1:j (MSB of the vector), Pk-1:j (LSB of the vector)
    GikPik   : in  std_logic_vector(1 downto 0);  -- Gi:k (MSB of the vector),  Pi:k (LSB of the vector)
    GijPij   : out std_logic_vector(1 downto 0));  -- Gi:j (MSB of the vector), Pi:j (LSB of the vector)

end entity GeneralPropagateGenerate;

-------------------------------------------------------------------------------
-- Behavioral Architecture
-------------------------------------------------------------------------------

architecture beh of GeneralPropagateGenerate is

begin  -- architecture beh

  -- General generate section
  GijPij(1) <= GikPik(1) or (GikPik(0) and Gk_1Pk_1(1));    -- Gi:k + (Pi:k * Gk-1)

  -- General propagate section
  GijPij(0) <= GikPik(0) and Gk_1Pk_1(0);                   -- Pi:k * Pk-1

end architecture beh;
