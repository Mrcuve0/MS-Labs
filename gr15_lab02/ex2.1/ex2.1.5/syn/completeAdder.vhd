library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.constants.all;


entity completeAdder is
  generic (
    N     : integer := numBit;
    RADIX : integer := radixN);

  port (
    A    : in  std_logic_vector(N-1 downto 0);
    B    : in  std_logic_vector(N-1 downto 0);
    Cin  : in  std_logic;
    Cout : out std_logic;
    Sum  : out std_logic_vector(N-1 downto 0));
end entity completeAdder;


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
  
  signal carryConnect : std_logic_vector(N/RADIX-1 downto 0);
  
begin  -- architecture struct

  ST : SparseTree generic map (
    N     => numBit,
    RADIX => radixN)
    port map (
      A           => A,
      B           => B,
      Cin         => Cin,
      carryVector => carryConnect);

  CSSG : CSSG_generic generic map (
    N => numBit,
    RADIX => radixN)
    port map (
      A            => A,
      B            => B,
      Cin          => Cin,
      carry_vector => carryConnect(N/RADIX-1 downto 0),
      Cout         => Cout,
      S            => Sum);


end architecture struct;
