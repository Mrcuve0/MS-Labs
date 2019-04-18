library IEEE;
use IEEE.std_logic_1164.all;
use ieee.math_real."log2";

use work.constants.all;

entity TBREGISTERFILE is
end TBREGISTERFILE;

architecture TESTA of TBREGISTERFILE is

  constant NAddr : integer := integer(log2(real(numRegs)));

  component register_file is
    generic (
      NData : integer;
      NRegs : integer;
      NAddr : integer);
    port (
      CLK     : in  std_logic;
      RESET   : in  std_logic;
      ENABLE  : in  std_logic;
      RD1     : in  std_logic;
      RD2     : in  std_logic;
      WR      : in  std_logic;
      ADD_WR  : in  std_logic_vector(NAddr-1 downto 0);
      ADD_RD1 : in  std_logic_vector(NAddr-1 downto 0);
      ADD_RD2 : in  std_logic_vector(NAddr-1 downto 0);
      DATAIN  : in  std_logic_vector(NData-1 downto 0);
      OUT1    : out std_logic_vector(NData-1 downto 0);
      OUT2    : out std_logic_vector(NData-1 downto 0));
  end component register_file;

  signal clk_s     : std_logic := '0';
  signal reset_s   : std_logic;
  signal enable_s  : std_logic;
  signal rd1_s     : std_logic;
  signal rd2_s     : std_logic;
  signal wr_s      : std_logic;
  signal add_wr_s  : std_logic_vector(NAddr-1 downto 0);
  signal add_rd1_s : std_logic_vector(NAddr-1 downto 0);
  signal add_rd2_s : std_logic_vector(NAddr-1 downto 0);
  signal datain_s  : std_logic_vector(numBitData-1 downto 0);
  signal out1_s    : std_logic_vector(numBitData-1 downto 0);
  signal out2_s    : std_logic_vector(numBitData-1 downto 0);

begin

  RG : register_file generic map (
    NData => numBitData,
    NRegs => numRegs,
    Naddr => NAddr)
  port map (
    CLK     => clk_s,
    RESET   => reset_s,
    ENABLE  => enable_s,
    RD1     => rd1_s,
    RD2     => rd2_s,
    WR      => wr_s,
    ADD_WR  => add_wr_s,
    ADD_RD1 => add_rd1_s,
    ADD_RD2 => add_rd2_s,
    DATAIN  => datain_s,
    OUT1    => out1_s,
    OUT2    => out2_s);

  reset_s   <= '1', '0'                         after 5 ns;
  enable_s  <= '0', '1'                         after 3 ns, '0' after 10 ns, '1' after 15 ns;
  wr_s      <= '0', '1'                         after 6 ns, '0' after 7 ns, '1' after 10 ns, '0' after 20 ns;
  rd1_s     <= '1', '0'                         after 5 ns, '1' after 13 ns, '0' after 20 ns;
  rd2_s     <= '0', '1'                         after 17 ns;
  add_wr_s  <= "10110", "01000"                 after 9 ns;
  add_rd1_s <= "10110", "01000"                 after 9 ns;
  add_rd2_s <= "11100", "01000"                 after 9 ns;
  datain_s  <= (others => '0'), (others => '1') after 8 ns;



  PCLOCK : process(clk_s)
  begin
    clk_s <= not(clk_s) after 0.5 ns;
  end process;

end TESTA;

