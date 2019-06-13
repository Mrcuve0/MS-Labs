library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use WORK.constants.all;

--------------------------------------------------------------------------------
-- Definition of the overall structure composing the PG-Network
--
-- The first block (i = 0) is the "special" one, while all the others (i > 0) 
-- are "normal" ones.
--------------------------------------------------------------------------------

entity PGNetwork is
  generic (
    N : integer := numBit);
  port (
    A         : in  std_logic_vector(N-1 downto 0);     -- Operand A
    B         : in  std_logic_vector(N-1 downto 0);     -- Operand B
    Cin       : in  std_logic;                          -- Carry In
    gpSignals : out std_logic_vector(2*N-1 downto 0));  
    -- Vector of "g" and "p" signals, interface with the first 2 rows of the Sparse tree 
    -- (ST_row1And2.vhd)
end entity PGNetwork;

-------------------------------------------------------------------------------
-- Structural Architecture
-------------------------------------------------------------------------------

architecture struct of PGNetwork is

  component SpecialPGBlock is
    port (
      a, b : in  std_logic;
      Cin  : in  std_logic;
      G1_0 : out std_logic);
  end component SpecialPGBlock;

  component PGNetBlock is
    port (
      a, b : in  std_logic;
      gp   : out std_logic_vector(1 downto 0));
  end component PGNetBlock;

begin  -- architecture struct

  BlockGeneration : for i in 0 to N-1 generate
    SpecialBlock : if i = 0 generate              -- Instantiate the "special" block
      SpecBlock : SpecialPGBlock port map (
        a    => A(i),
        b    => B(i),
        Cin  => Cin,
        G1_0 => gpSignals(i));
    end generate SpecialBlock;

    OtherBlocks : if i > 0 generate               -- Instantiate the "normal" blocks
      PGBlock : PGNetBlock port map (
        a  => A(i),
        b  => B(i),
        gp => gpSignals(i*2+1 downto i*2));
    end generate OtherBlocks;
  end generate BlockGeneration;

end architecture struct;
