library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--------------------------------------------------------------------------------
-- Definition of the General Generate Block
--------------------------------------------------------------------------------

entity GeneralGenerate is
  port (
    Gk_1   : in  std_logic;                     -- Gk-1:j
    GikPik : in  std_logic_vector(1 downto 0);  -- Gi:k (MSB of the array),  Pi:k (LSB of the array)
    Gij    : out std_logic);                    -- Gi:j
end entity GeneralGenerate;

-------------------------------------------------------------------------------
-- Behavioral Architecture
-------------------------------------------------------------------------------

architecture beh of GeneralGenerate is

begin  -- architecture beh

  Gij <= GikPik(1) or (GikPik(0) and Gk_1);   -- Gi:k + (Pi:k * Gk-1:j)

end architecture beh;
