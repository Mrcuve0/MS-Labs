library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use WORK.constants.all;

--------------------------------------------------------------------------------
-- Definition of the overall structure composing the Sparse Tree

-- Contains the structures "PG-Network", “ST_row1And2" and 
-- generates the remaining part of the tree (using G and PG blocks).

-- The generation and interconnection of the remaining part of the tree is 
-- done by instantiating G and PG blocks row-by-row (starting from the right edge 
-- of the tree, and so by generating the G block(s)
--------------------------------------------------------------------------------

entity SparseTree is
  generic (
    N     : integer := numBit;
    RADIX : integer := radixN);

  port (
    A, B        : in  std_logic_vector(N-1 downto 0);         -- Input operands
    Cin         : in  std_logic;                              -- Carry In
    carryVector : out std_logic_vector(N/RADIX-1 downto 0));  -- Output carry vector
end entity SparseTree;


-------------------------------------------------------------------------------
-- Structural Architecture
-------------------------------------------------------------------------------

architecture struct of SparseTree is

  constant rows : integer := integer(log2(real(numBit)));     
  -- Given the number of bits of the operands,
  -- determine the number of rows composing the Sparse Tree


  component GeneralGenerate is
    port (
      Gk_1   : in  std_logic;
      GikPik : in  std_logic_vector(1 downto 0);
      Gij    : out std_logic);
  end component GeneralGenerate;

  component GeneralPropagateGenerate is
    port (
      Gk_1Pk_1 : in  std_logic_vector(1 downto 0);
      GikPik   : in  std_logic_vector(1 downto 0);
      GijPij   : out std_logic_vector(1 downto 0));
  end component GeneralPropagateGenerate;

  component PGNetwork is
    generic (
      N : integer);
    port (
      A         : in  std_logic_vector(N-1 downto 0);
      B         : in  std_logic_vector(N-1 downto 0);
      Cin       : in  std_logic;
      gpSignals : out std_logic_vector(2*N-1 downto 0));
  end component PGNetwork;

  component ST_row1And2 is
    generic (
      N : integer);
    port (
      input  : in  std_logic_vector(2*N-1 downto 0);
      output : out std_logic_vector(2*N-1 downto 0));
  end component ST_row1And2;

  type signalVector is array (0 to rows-1) of std_logic_vector(2*N-1 downto 0);
  signal sigMatrix : signalVector;
  -- Matrix of std_logic_vectors used to interconnect the ST rows together.
  -- sigMatrix(0) is used to interconnect the PG-Network with "ST_row1And2".
  -- sigMatrix(1) interconnects the "ST_row1And2" structure with the remaining part of the ST.
  -- The remaining sigMatrix rows are used to interconnect the remaining rows that compose the rest of the structure
  -- for example: row3 <==> sigMatrix(2) <==> row4

begin  -- architecture struct

  PGNetwork_1 : PGNetwork generic map (
    N => N) port map (
      A         => A,
      B         => B,
      Cin       => Cin,
      gpSignals => sigMatrix(0));

  ST_row1And2_1 : ST_row1And2 generic map (
    N => N) port map (
      input  => sigMatrix(0),
      output => sigMatrix(1));

  carryVector(0) <= sigMatrix(1)(7);      -- the first carry generated comes from the "ST_row1And2" structure


  --------------------------------------------------------------------------------
  -- Remaining part of the Sparse Tree structure
  --------------------------------------------------------------------------------
  rowGen : for i in 0 to (rows-2)-1 generate            -- generates the remaining rows (2 rows already generated)
    
    blockGen : for j in 0 to 2**(rows-3-i)-1 generate   
      -- index "j" indicates and generates "logical subgroups", each subgroup generates a certain amount of PG and G blocks,
      -- depending on which row we are (subgroups are composed of 1, 2, 4, 8, etc... (power-of-2) number of blocks)


      -------------------------------------------------------------------------
      -- GENERATE BLOCK INSTANTIATION
      -------------------------------------------------------------------------
      GENERATE_BLOCK : if j = 0 generate                -- When the "j" index is 0, we must generate a G block
        
        grouping_G : for k in 0 to (2**i)-1 generate    -- Iterates in the logical subgroup and generates the internal G blocks

          first_generate: if i = 0 generate
            G_1 : GeneralGenerate port map (
            Gk_1   => sigMatrix(1+i)(7),
            GikPik => sigMatrix(1+i)((8*(2**i)) + 7 + (k*8) downto (8*(2**i)) + 6 + (k*8)),
            Gij    => sigMatrix(2+i)((k+1)*7));
          end generate first_generate;

          other_generate: if i > 0 generate
            G_1 : GeneralGenerate port map (
            Gk_1   => sigMatrix(1+i)((2**(i-1))*7),
            GikPik => sigMatrix(1+i)((8*(2**i)) + 7 + (k*8) downto (8*(2**i)) + 6 + (k*8)),
            Gij    => sigMatrix(2+i)((k+1)*7));
          end generate other_generate;
          
          carryVector(2**i + k) <= sigMatrix(2+i)((k+1)*7);

        end generate grouping_G;
        
      end generate GENERATE_BLOCK;



      -------------------------------------------------------------------------
      -- PROPAGATE BLOCK INSTANTIATION
      -------------------------------------------------------------------------
      PROPAGATE_BLOCK : if j > 0 generate               
      -- When the "j" index is > 0, we must generate only the remaining PG blocks
        
        grouping_PG : for k in 0 to (2**i)-1 generate         -- Iterates in the logical subgroup and generates the internal PG blocks
          PG_1 : GeneralPropagateGenerate port map (
            -- depends on "k"
            Gk_1Pk_1 => sigMatrix(1+i)(((8*2**i) - 1 + ((j*2**(i+1))*8)) downto (((8*2**i) - 1 + ((j*2**(i+1))*8)) - 1)),
            -- depends on "k"
            GikPik   => sigMatrix(1+i)((((1 + 2**i)*8 - 1 + ((j*(2**(i+1)))*8)) + 8*k) downto (((1 + 2**i)*8 - 1 + ((j*(2**(i+1)))*8)) + 8*k) - 1),
            -- does not depend on "k"
            GijPij   => sigMatrix(2+i)((((1 + 2**i)*8 - 1 + ((j*(2**(i+1)))*8)) + 8*k) downto (((1 + 2**i)*8 - 1 + ((j*(2**(i+1)))*8)) + 8*k) - 1));


            --------------------------------------------------------------------------------
            -- SIGMATRIX SIGNAL PROPAGATION
            --------------------------------------------------------------------------------

            -- some signals must be propagated from one row of "sigMatrix" to the others 
            -- (because no block is intercepting/using that signal in the next row)
          sigMatrix(2+i)(((8*(2**(i+1)+1) - 1) + (8*(j-1)*2**(i+1)) + k*8) downto ((8*(2**(i+1)+1) - 1) + (8*(j-1)*2**(i+1) + k*8) - 1))
            <= sigMatrix(1+i)(((8*(2**(i+1)+1) - 1) + (8*(j-1)*2**(i+1)) + k*8) downto ((8*(2**(i+1)+1) - 1) + (8*(j-1)*2**(i+1) + k*8) - 1));

        end generate grouping_PG;
        
      end generate PROPAGATE_BLOCK;

    end generate blockGen;
    
  end generate rowGen;
  
end architecture struct;
