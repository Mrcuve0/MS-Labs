library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use WORK.constants.all;

entity tb_multiplier is
end tb_multiplier;

architecture TEST of tb_multiplier is


  constant numBit : integer := 32;  -- :=8  --:=16

  component Booth is
    generic (
      N     : integer;
      RADIX : integer);
    port (
      A : in  std_logic_vector(N-1 downto 0);
      B : in  std_logic_vector(N-1 downto 0);
      P : out std_logic_vector(2*N-1 downto 0));
  end component Booth;

  --  input      
  signal A_mp_i : std_logic_vector(numBit-1 downto 0) := (others => '0');
  signal B_mp_i : std_logic_vector(numBit-1 downto 0) := (others => '0');

  -- output
  signal Y_mp_i : std_logic_vector(2*numBit-1 downto 0);



begin

  booth_1 : Booth generic map (
    N     => numBit,
    RADIX => radixN)
    port map (
      A => A_mp_i,
      B => B_mp_i,
      P => Y_mp_i);


-- PROCESS FOR TESTING TEST - COMPLETE CYCLE ---------

  -- Comment/Uncomment the following process to test 4, 8, 16bit combinations.
  -- Cannot test 32bit configurations with the following method, integer
  -- exponentiation overflows on 32bits.
  
  --test : process
  --begin

  --  -- cycle for operand A
  --  NumROW : for i in 0 to 2**(NumBit)-1 loop

  --    -- cycle for operand B
  --    NumCOL : for i in 0 to 2**(NumBit)-1 loop
  --      wait for 10 ns;
  --      B_mp_i <= B_mp_i + '1';
  --    end loop NumCOL;

  --    A_mp_i <= A_mp_i + '1';
  --  end loop NumROW;

  --  wait;
  --end process test;

  -- Comment/Uncomment the following section to test a 32bit configuration -->
  -- This configuration has been used to generate the waveforms ".pdf" files
  A_mp_i <= X"00000010", X"FFFFFF10" after 5 ns, X"00000055" after 10 ns, X"FFFFFFF0" after 15 ns;
  B_mp_i <= X"FFFFFF10", X"00000010" after 5 ns, X"00000002" after 10 ns, X"00000003" after 15 ns;
  


end TEST;
