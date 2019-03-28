library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.constants.all;

entity tb is
end entity tb;

-------------------------------------------------------------------------------
-- Testbench Architecture
-------------------------------------------------------------------------------

architecture tb_arch of tb is

  component LFSR16 is
    port (
      CLK, RESET, LD, EN : in  std_logic;
      DIN                : in  std_logic_vector(15 downto 0);
      PRN                : out std_logic_vector(15 downto 0);
      ZERO_D             : out std_logic);
  end component LFSR16;

  component CSB_generic is
    generic (
      N : integer := numBit);
    port (
      A, B : in  std_logic_vector(N-1 downto 0);
      Cin  : in  std_logic;
      S    : out std_logic_vector(N-1 downto 0));
  end component CSB_generic;


  constant Period              : time      := 1 ns;  -- Clock period (1 GHz)
  signal CLK                   : std_logic := '0';
  signal RESET, LD, EN, ZERO_D : std_logic;
  signal DIN, PRN              : std_logic_vector(15 downto 0);

  signal A, B, S1 : std_logic_vector(numBit-1 downto 0);
  signal Ci : std_logic;

  for CSB_1   : CSB_generic use entity work.CSB_generic (struct);

begin  -- architecture tb_arch

  CSB_1 : CSB_generic generic map (
    N => numBit)
    port map (
      A   => A,
      B   => B,
      Cin => Ci,
      S   => S1);

   -- Instanciate the Unit Under Test (UUT)
  UUT : LFSR16 port map (CLK => CLK, RESET => RESET, LD => LD, EN => EN,
                         DIN => DIN, PRN => PRN, ZERO_D => ZERO_D);

  Ci   <= '0', '1' after 100 ns;
  A(0) <= PRN(0);
  -- A(5) <= PRN(2);
  A(3) <= PRN(4);
  A(1) <= PRN(6);
  -- A(4) <= PRN(8);
  A(2) <= PRN(10);

  B(0) <= PRN(15);
  -- B(5) <= PRN(13);
  B(3) <= PRN(11);
  B(1) <= PRN(9);
  -- B(4) <= PRN(7);
  B(2) <= PRN(5);
  

 
-- Create the permanent Clock and the Reset pulse
  CLK   <= not CLK  after Period/2;
  RESET <= '1', '0' after Period;

  
-- Open file, make a load, and wait for a timeout in case of design error.
  STIMULUS1 : process
  begin
    DIN <= "0000000000000001";
    EN  <= '1';
    LD  <= '1';
    wait for 2 * PERIOD;
    LD  <= '0';
    wait for (65600 * PERIOD);
  end process STIMULUS1;

end architecture tb_arch;

-------------------------------------------------------------------------------
-- Configuration
-------------------------------------------------------------------------------

--configuration CFG_CSB_TEST of tb is

--  for tb_arch
--    for CSB_1 : CSB_generic
--      use configuration work.CFG_CSB_GEN_STRUCT;
--    end for;
--  end for;

--end configuration CFG_CSB_TEST;
