library IEEE;
use IEEE.std_logic_1164.all;
use ieee.math_real.all;
use std.textio.all;

use work.constants.all;

entity tb_registerFile is
end tb_registerFile;

architecture arch of tb_registerFile is

  constant NAddr_Physical : integer := integer(ceil(log2(real(numRegs_physical_RF))));
  constant NAddr_Windowed : integer := integer(ceil(log2(real(numN * numwindowBlocks + numM))));

  component registerFile_TLE is
    generic (
      N              : integer;
      M              : integer;
      windowBlocks   : integer;
      NData          : integer;
      NAddr_Windowed : integer);
    port (
      clk       : in  std_logic;
      reset     : in  std_logic;
      enable    : in  std_logic;
      rd1       : in  std_logic;
      rd2       : in  std_logic;
      wr1       : in  std_logic;
      add_wr    : in  std_logic_vector(NAddr_Windowed-1 downto 0);
      add_rd1   : in  std_logic_vector(NAddr_Windowed-1 downto 0);
      add_rd2   : in  std_logic_vector(NAddr_Windowed-1 downto 0);
      dataIn    : in  std_logic_vector(NData-1 downto 0);
      dataOut1  : out std_logic_vector(NData-1 downto 0);
      dataOut2  : out std_logic_vector(NData-1 downto 0);
      fill      : out std_logic;
      spill     : out std_logic;
      call      : in  std_logic;
      ret       : in  std_logic;
      dataACK   : out std_logic;
      MMUStrobe : in  std_logic);
  end component registerFile_TLE;

  signal clk_s    : std_logic := '0';
  signal reset_s  : std_logic;
  signal enable_s : std_logic;

  signal rd1_s     : std_logic;
  signal rd2_s     : std_logic;
  signal wr1_s     : std_logic;
  signal add_wr_s  : std_logic_vector(NAddr_Windowed-1 downto 0);
  signal add_rd1_s : std_logic_vector(NAddr_Windowed-1 downto 0);
  signal add_rd2_s : std_logic_vector(NAddr_Windowed-1 downto 0);
  signal datain_s  : std_logic_vector(numBitData-1 downto 0);
  signal out1_s    : std_logic_vector(numBitData-1 downto 0);
  signal out2_s    : std_logic_vector(numBitData-1 downto 0);

  signal fill_s, spill_s, call_s, ret_s, dataACK_s, MMUStrobe_s : std_logic;

  constant period          : time := 2 ns;
  constant fill_spill_time : time := integer(numN*(numWindowBlocks-1)) * period;

begin

  DUT : registerFile_TLE generic map (
    N              => numN,
    M              => numM,
    windowBlocks   => numWindowBlocks,
    Ndata          => numBitData,
    NAddr_Windowed => integer(ceil(log2(real(numN*numWindowBlocks + numM)))))
    port map (
      clk       => clk_s,
      reset     => reset_s,
      enable    => enable_s,
      rd1       => rd1_s,
      rd2       => rd2_s,
      wr1       => wr1_s,
      add_wr    => add_wr_s,
      add_rd1   => add_rd1_s,
      add_rd2   => add_rd2_s,
      dataIn    => dataIn_s,
      dataOut1  => out1_s,
      dataOut2  => out2_s,
      fill      => fill_s,
      spill     => spill_s,
      call      => call_s,
      ret       => ret_s,
      dataACK   => dataACK_s,
      MMUStrobe => MMUStrobe_s);


  -- reset_s   <= '1', '0'                             after 5 ns;
  -- enable_s  <= '0', '1'                             after 3 ns, '0' after 10 ns, '1' after 15 ns;
  -- wr_s      <= '0', '1'                             after 6 ns, '0' after 7 ns, '1' after 10 ns, '0' after 20 ns;
  -- rd1_s     <= '1', '0'                             after 5 ns, '1' after 7 ns, '0' after 8 ns, '1' after 13 ns, '0' after 20 ns;
  -- rd2_s     <= '0', '1'                             after 17 ns;
  -- add_wr_s  <= "10110", "01000"                     after 9 ns;
  -- add_rd1_s <= "10110", "01000"                     after 9 ns;
  -- add_rd2_s <= "11100", "01000"                     after 9 ns;
  -- datain_s  <= (others => '0'), X"FFFFFFFF00000000" after 6 ns, (others => '1') after 8 ns;

  clkStimuli : process
  begin
    clk_s <= not clk_s;
    wait for period/2;
  end process;

  inputStimuli : process
    variable lb : line;
  begin
    enable_s    <= '1';
    MMUStrobe_s <= '0';
    reset_s     <= '1' after 0.5 ns, '0' after 7.5 ns, '1' after 11.5 ns, '0' after 13.5 ns;
    ret_s       <= '0';
    call_s      <= '0', '1' after 2.5 ns, '0' after 5 ns, '1' after 9 ns, '0' after 9.5 ns,
              '1' after 15.5 ns + 8 ns, '0' after 27 ns;  --20.5 ns + 8 ns;

    wr1_s    <= '1'         after 17 ns, '0' after 19 ns, '1' after 19.5 ns, '0' after 22.5 ns,
                '1' after 33.5 ns, '0' after 40  ns, '1' after 48.5 ns, '0' after 80 ns,
                '1' after 102 ns, '0' after 104 ns, '1' after 120 ns, '0' after 150 ns;
    add_wr_s <= "00000"     after 16 ns, "00010" after 48 ns, "10000" after 66 ns;
    dataIn_s <= X"DEADBEEF" after 16 ns, X"F00DBABE" after 30 ns, X"DABBAD00" after 48 ns, X"DEADBEEF" after 100 ns;

    rd1_s     <= '1'     after 16 ns, '0' after 22 ns, '1' after 39.5 ns, '0' after 48 ns;
    add_rd1_s <= "01000" after 16 ns, "00000" after 39 ns;

    rd2_s     <= '1'     after 16 ns, '0' after 22 ns;
    add_rd2_s <= "00000" after 16 ns;



    wait for 30 ns;
    -- Here time = 22 ns
    wait for fill_spill_time;
    -- Here time = 22 ns + 32 ns = 54 ns;
    write(lb, now);
    writeline(output, lb);
    MMUStrobe_s <= '1', '0' after 2.5 ns;  -- This set @ time = 54 ns
    call_s      <= '1'      after 2.5 ns, '0' after 8.5 ns;

    wait for 6 ns;
    -- Here time = 60 ns;
    wait for fill_spill_time;
    -- Here time = 92 ns;
    write(lb, now);
    writeline(output, lb);
    MMUStrobe_s <= '1', '0' after 2.5 ns;
    call_s      <= '1'      after 2.5 ns, '0' after 8.5 ns;

    wait for 6 ns;
    -- Here time = 98 ns;
    wait for fill_spill_time;
    -- Here time = 130 ns
    write(lb, now);
    writeline(output, lb);
    MMUStrobe_s <= '1', '0' after 2.5 ns;
    call_s      <= '1'      after 2.5 ns, '0' after 8.5 ns;

    wait for 6 ns;
    -- Here time = 98 ns;
    wait for fill_spill_time;
    -- Here time = 168 ns;
    write(lb, now);
    writeline(output, lb);
    MMUStrobe_s <= '1', '0' after 2.5 ns;
    call_s      <= '1'      after 2.5 ns, '0' after 8.5 ns;

    wait for 6 ns;
    -- Here time = 174 ns;
    wait for fill_spill_time;
    -- Here time = 206 ns;
    write(lb, now);
    writeline(output, lb);
    MMUStrobe_s <= '1', '0' after 2.5 ns;
    ret_s       <= '1'      after 3.5 ns, '0' after 8.5 ns;

    wait for 6 ns;
    wait for fill_spill_time;
    -- Here time = 244 ns;
    write(lb, now);
    writeline(output, lb);
    MMUStrobe_s <= '1', '0' after 2.5 ns;
    ret_s       <= '1'      after 2.5 ns, '0' after 8.5 ns;

    wait for 6 ns;
    wait for fill_spill_time;
    -- Here time = 282 ns;
    write(lb, now);
    writeline(output, lb);
    MMUStrobe_s <= '1', '0' after 2.5 ns;
    ret_s       <= '1'      after 2.5 ns, '0' after 8.5 ns;

    wait for 6 ns;
    wait for fill_spill_time;
    -- Here time = 320 ns;
    write(lb, now);
    writeline(output, lb);
    MMUStrobe_s <= '1', '0' after 2.5 ns;
    ret_s       <= '1'      after 2.5 ns, '0' after 8.5 ns;

    wait for 6 ns;
    wait for fill_spill_time;
    -- Here time = 358 ns;
    write(lb, now);
    writeline(output, lb);
    MMUStrobe_s <= '1', '0' after 2.5 ns;
    ret_s       <= '1'      after 2.5 ns, '0' after 8.5 ns;

    wait for 6 ns;
    wait for fill_spill_time;
    -- Here time = 396 ns;
    write(lb, now);
    writeline(output, lb);
    call_s <= '1' after 2.5 ns, '0' after 8.5 ns;

    wait for 6 ns;
    wait for fill_spill_time;
    -- Here time = 434 ns;
    write(lb, now);
    writeline(output, lb);
    MMUStrobe_s <= '1', '0' after 2.5 ns;
    call_s      <= '1'      after 2.5 ns, '0' after 8.5 ns;

    wait for 6 ns;
    wait for fill_spill_time;
    -- Here time = 472 ns;
    write(lb, now);
    writeline(output, lb);
    ret_s      <= '1'      after 2.5 ns, '0' after 8.75 ns;
    MMUStrobe_s <= '1', '0' after 2.5 ns;

    wait for 6 ns;
    wait for fill_spill_time;
    -- Here time = 472 ns;
    write(lb, now);
    writeline(output, lb);
    reset_s <= '1' after 2.5 ns, '0' after 8.5 ns;

    wait;
  end process;

end arch;

