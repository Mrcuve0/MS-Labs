library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--------------------------------------------------------------------------------
-- Definition of the "normal" block composing the first 2 rows of the Sparse Tree
-- (valid for all the blocks composing the first 2 rows of the ST, 
-- except for the very first one)

-- This block is internally composed of 3 PG blocks, interconnected together.
-- As for the previous blocks, each signal follows the bit position defined in the
-- signal name itself. (G --> MSB, P --> LSB)
--------------------------------------------------------------------------------

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
  -- Interconnect the first PG block with the third PG block 
  -- and the second PG block with the third PG block, respectively

begin  -- architecture struct

  PG_1 : GeneralPropagateGenerate port map (    -- First PG block, receives the inputs from the left 
    Gk_1Pk_1 => Gk_1Pk_1_left,
    GikPik   => GikPik_left,
    GijPij   => PG_left_block_out);

  PG_2 : GeneralPropagateGenerate port map (    -- Second PG block, receives the inputs from the right
    Gk_1Pk_1 => Gk_1Pk_1_right,
    GikPik   => GikPik_right,
    GijPij   => PG_right_block_out);

  PG_3 : GeneralPropagateGenerate port map (    -- Third PG block, receives the inputs from the 2 previous PG blocks
    Gk_1Pk_1 => PG_right_block_out,             -- Generates the output
    GikPik   => PG_left_block_out,
    GijPij   => GijPij);

end architecture struct;
