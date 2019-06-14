library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use WORK.constants.all;

--------------------------------------------------------------------------------
-- Definition of the overall structure composing the first 2 rows of the Sparse Tree (ST)
--
-- The first block is the "special" one (i = 0), while all the others are "normal" ones (i > 0).
--------------------------------------------------------------------------------

entity ST_row1And2 is
  generic (
    N : integer := numBit);
  port (
    input  : in  std_logic_vector(2*N-1 downto 0);    -- interface with the outputs coming from the PG-Network
    output : out std_logic_vector(2*N-1 downto 0));   
    -- Interface with the inputs to the remaining part of the Sparse Tree, 
    -- interconnected with sigMatrix(0) (see SparseTree entity)
end entity ST_row1And2;

-------------------------------------------------------------------------------
-- Structural Architecture
-------------------------------------------------------------------------------

architecture struct of ST_row1And2 is

  component triBlockSpecial is
    port (
      Gk_1Pk_1_left : in std_logic_vector(1 downto 0);
      GikPik_left   : in std_logic_vector(1 downto 0);

      GikPik_right : in  std_logic_vector(1 downto 0);
      Gk_1_right   : in  std_logic;
      Gij          : out std_logic);
  end component triBlockSpecial;

  component triBlock is
    port (
      Gk_1Pk_1_left  : in  std_logic_vector(1 downto 0);
      GikPik_left    : in  std_logic_vector(1 downto 0);
      Gk_1Pk_1_right : in  std_logic_vector(1 downto 0);
      GikPik_right   : in  std_logic_vector(1 downto 0);
      GijPij         : out std_logic_vector(1 downto 0));
  end component triBlock;

begin  -- architecture struct

  row1And2Generation : for i in 0 to N/radixN-1 generate
    triBlockSpecialGen : if i = 0 generate                -- if i = 0 instantiate the "special" block
      TBS : triBlockSpecial port map (
        GikPik_left   => input(7 downto 6),
        Gk_1Pk_1_left => input(5 downto 4),

        GikPik_right => input(3 downto 2),
        Gk_1_right   => input(0),

        Gij => output(7));                                -- This is the first carry generated, 
                                                          -- will be available in sigMatrix(0)(7) 
                                                          -- (see Sparse Tree entity)
    end generate triBlockSpecialGen;

    triBlockGen : if i > 0 generate                       -- if i > 0 instantiate the "normal" block
      TB : triBlock port map (
        GikPik_left   => input(i*8+7 downto i*8+6),       
        Gk_1Pk_1_left => input(i*8+5 downto i*8+4),

        GikPik_right   => input(i*8+3 downto i*8+2),
        Gk_1Pk_1_right => input(i*8+1 downto i*8),

        GijPij => output(i*8+7 downto i*8+6));
    end generate triBlockGen;
  end generate row1And2Generation;

end architecture struct;
