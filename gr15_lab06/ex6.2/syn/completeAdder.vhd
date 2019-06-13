library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.constants.all;         -- Where we define the number of bits of the operands 
                                -- and the Radix fo the structure

--------------------------------------------------------------------------------
-- Definition of the Pentium4 Adder.
-- 
-- This structure instantiate both the Sparse Tree and the 
-- Carry Select Sum Generator (CSSG) structures.
--
-- This is a Adder/Subtractor structure. 
-- If Cin = '1' then the structure will operate as a Subtractor.
-- Viceversa, if Cin = '0' then the structure will operate as an Adder.
--------------------------------------------------------------------------------


entity completeAdder is
  generic (
    N     : integer := numBit;
    RADIX : integer := radixN);

  port (
    A    : in  std_logic_vector(N-1 downto 0);          -- Input operand
    B    : in  std_logic_vector(N-1 downto 0);          -- Input operand
    Cin  : in  std_logic;                               -- CarryIn (from the external world)
    Cout : out std_logic;                               -- CarryOut (to the external world)
    Sum  : out std_logic_vector(N-1 downto 0));         -- Result
end entity completeAdder;

--------------------------------------------------------------------------------
-- Structural Architecture
--------------------------------------------------------------------------------

architecture struct of completeAdder is
  
  component SparseTree is
    generic (
      N     : integer;
      RADIX : integer);
    port (
      A, B        : in  std_logic_vector(N-1 downto 0);
      Cin         : in  std_logic;
      carryVector : out std_logic_vector(N/RADIX-1 downto 0));
  end component SparseTree;

  component CSSG_generic is
    generic (
      N     : integer;
      RADIX : integer);
    port (
      A, B         : in  std_logic_vector(N-1 downto 0);
      Cin          : in  std_logic;
      carry_vector : in  std_logic_vector(N/RADIX-1 downto 0);
      Cout         : out std_logic;
      S            : out std_logic_vector(N-1 downto 0));
  end component CSSG_generic;
  
  signal carryConnect : std_logic_vector(N/RADIX-1 downto 0);       -- Interconnects the outputs coming from the Sparse
                                                                    -- Tree to the inputs of the Carry Select Sum
                                                                    -- Generator (CSSG)

  signal Cin_vectored : std_logic_vector(N-1 downto 0);             
  signal B_XORed : std_logic_vector(N-1 downto 0);                  -- The B operand XORed with the CarryIn
  
begin  -- architecture struct

  Cin_vectored <= (others => Cin);                                  -- Expand Cin to a vector (to be feeded to XOR gates)
  B_XORed <= B xor Cin_vectored;                                    -- This is the B operand XORed with the CarryIn: 
                                                                    -- if Cin = '0' the operand remains the same
                                                                    -- if Cin = '1' the operand is complemented.

  ST : SparseTree generic map (                                     -- Sparse Tree instantiation
    N     => numBit,  
    RADIX => radixN)
    port map (
      A           => A,
      B           => B_XORed,
      Cin         => Cin,
      carryVector => carryConnect);

  CSSG : CSSG_generic generic map (                                 -- Carry Select Sum Generator instantiation (CSSG)
    N => numBit,
    RADIX => radixN)
    port map (
      A            => A,
      B            => B_XORed,
      Cin          => Cin,
      carry_vector => carryConnect(N/RADIX-1 downto 0),
      Cout         => Cout,
      S            => Sum);

end architecture struct;
