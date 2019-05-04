library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.constants.all;

entity registerFile_TLE is
  generic (
    N            : integer := numN;     -- Number of registers in each window
    M            : integer := numM;     -- Number of global registers
    windowBlocks : integer := numWindowBlocks;  -- IN - LOCAL - OUT
    NData        : integer := numBitData;       -- Register width

    -- Interface with the external world
    NAddr_Windowed : integer := integer(ceil(log2(real(numN*numwindowBlocks + numM)))));
  port (
    clk    : in std_logic;
    reset  : in std_logic;
    enable : in std_logic;

    -- Port control signals
    rd1 : in std_logic;
    rd2 : in std_logic;
    wr1 : in std_logic;

    -- Port address signals
    add_wr  : in std_logic_vector(NAddr_Windowed-1 downto 0);
    add_rd1 : in std_logic_vector(NAddr_Windowed-1 downto 0);
    add_rd2 : in std_logic_vector(NAddr_Windowed-1 downto 0);

    -- Port data signals
    dataIn   : in  std_logic_vector(NData-1 downto 0);  -- Also used by the MMU to
                                                        -- transfer data during
                                                        -- FILL operations
    dataOut1 : out std_logic_vector(NData-1 downto 0);  -- Also used by the RF
                                                        -- to transfer data to
                                                        -- the Memory during
                                                        -- SPILL operations
    dataOut2 : out std_logic_vector(NData-1 downto 0);

    -- Control Signals (active high)
    fill      : out std_logic;          -- need to retrieve data from memory
    spill     : out std_logic;          -- RF is full, need to spill in memory 
    call      : in  std_logic;          -- SUBroutine call
    ret       : in  std_logic;          -- SUBroutine ret
    dataACK   : out std_logic;          -- Informs the MMU that the spill/fill
    -- operation is completed
    MMUStrobe : in  std_logic);         -- Informs the RF that the fill/spill
-- operation can be considered
-- completed from the memory side
end entity registerFile_TLE;


architecture struct of registerFile_TLE is
  ----------------------------------------------------------------------------
  -- Components
  ----------------------------------------------------------------------------

  constant NAddr_Physical : integer := integer(ceil(log2(real(numRegs_physical_RF))));

  component controlUnit_RF is
    generic (
      N              : integer;
      M              : integer;
      F              : integer;
      windowBlocks   : integer;
      NData          : integer;
      NAddr_Windowed : integer);
    port (
      clk             : in  std_logic;
      reset           : in  std_logic;
      enable          : in  std_logic;
      cwpOut          : out std_logic_vector(integer(ceil(log2(real(windowRounds*numF))))-1 downto 0);
      swpOut          : out std_logic_vector(integer(ceil(log2(real(windowRounds*numF))))-1 downto 0);
      resetPhysicalRF : out std_logic;
      call            : in  std_logic;
      ret             : in  std_logic;
      fill            : out std_logic;
      spill           : out std_logic;
      MMUStrobe       : in  std_logic;
      dataACK         : out std_logic);
  end component controlUnit_RF;

  component translationUnit_RF is
    generic (
      N              : integer;
      M              : integer;
      windowBlocks   : integer;
      F              : integer;
      NAddr_Windowed : integer := integer(ceil(log2(real(numN * numwindowBlocks + numM))));
      NAddr_Physical : integer := integer(ceil(log2(real(numRegs_physical_RF)))));
    port (
      clk         : in  std_logic;
      reset       : in  std_logic;
      enable      : in  std_logic;
      rd1         : in  std_logic;
      rd2         : in  std_logic;
      wr          : in  std_logic;
      add_wr      : in  std_logic_vector(NAddr_Windowed-1 downto 0);
      add_rd1     : in  std_logic_vector(NAddr_Windowed-1 downto 0);
      add_rd2     : in  std_logic_vector(NAddr_Windowed-1 downto 0);
      cwp         : in  std_logic_vector(integer(ceil(log2(real(windowRounds*numF))))-1 downto 0);
      add_wr_out  : out std_logic_vector(NAddr_Physical-1 downto 0);
      add_rd1_out : out std_logic_vector(NAddr_Physical-1 downto 0);
      add_rd2_out : out std_logic_vector(NAddr_Physical-1 downto 0));
  end component translationUnit_RF;

  component physical_RF is
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
      ADD_WR  : in  std_logic_vector(NAddr_Physical-1 downto 0);
      ADD_RD1 : in  std_logic_vector(NAddr_Physical-1 downto 0);
      ADD_RD2 : in  std_logic_vector(NAddr_Physical-1 downto 0);
      DATAIN  : in  std_logic_vector(NData-1 downto 0);
      OUT1    : out std_logic_vector(NData-1 downto 0);
      OUT2    : out std_logic_vector(NData-1 downto 0));
  end component physical_RF;

-------------------------------------------------------------------------------
-- Signals
-------------------------------------------------------------------------------
  signal cwp_s, swp_s                               : std_logic_vector(integer(ceil(log2(real(windowRounds * numF))))-1 downto 0);
  signal add_wr_out_s, add_rd1_out_s, add_rd2_out_s : std_logic_vector(NAddr_Physical-1 downto 0);
  signal add_wr_s, add_rd1_s, add_rd2_s             : std_logic_vector(NAddr_Windowed-1 downto 0);
  signal wr_s, reset_s                              : std_logic;


begin  -- architecture struct

  contrU : controlUnit_RF generic map (
    N              => N,
    M              => M,
    F              => numF,
    windowBlocks   => windowBlocks,
    NData          => NData,
    NAddr_Windowed => NAddr_Windowed)
    port map (
      clk             => clk,
      reset           => reset,
      enable          => enable,
      cwpOut          => cwp_s,         -- To the Translation Unit
      swpOut          => swp_s,
      resetPhysicalRF => reset_s,       -- To the Physical Register File
      call            => call,
      ret             => ret,
      fill            => fill,
      spill           => spill,
      MMUStrobe       => MMUStrobe,
      dataACK         => dataACK);


  translU : translationUnit_RF generic map (
    N              => N,
    M              => M,
    windowBlocks   => windowBlocks,
    F              => numF,
    NAddr_Physical => NAddr_Physical)
    port map (
      clk         => clk,
      reset       => reset,
      enable      => enable,
      rd1         => rd1,
      rd2         => rd2,
      wr          => wr1,
      add_wr      => add_wr,            -- INPUT, SIZE: NAddr_Windowed
      add_rd1     => add_rd1,           -- INPUT, SIZE: NAddr_Windowed
      add_rd2     => add_rd2,           -- INPUT, SIZE: NAddr_Windowed
      cwp         => cwp_s,             -- cwp coming from the control Unit
      add_wr_out  => add_wr_out_s,      -- OUTPUT, SIZE: NAddr_Physical
      add_rd1_out => add_rd1_out_s,     -- OUTPUT, SIZE: NAddr_Physical
      add_rd2_out => add_rd2_out_s);    -- OUTPUT, SIZE: NAddr_Physical

  physRF : physical_RF generic map (
    NData => NData,
    NRegs => numRegs_physical_RF,
    NAddr => NAddr_Physical)
    port map (
      clk     => clk,
      reset   => reset_s,               -- Coming from the Control Unit
      enable  => enable,
      rd1     => rd1,
      rd2     => rd2,
      wr      => wr1,
      add_wr  => add_wr_out_s,   -- Addresses coming from the translation Unit
      add_rd1 => add_rd1_out_s,         -- INPUT, SIZE: NAddr_Physical
      add_rd2 => add_rd2_out_s,         -- INPUT, SIZE: NAddr_Physical
      datain  => dataIn,
      out1    => dataOut1,
      out2    => dataOut2);


end architecture struct;
