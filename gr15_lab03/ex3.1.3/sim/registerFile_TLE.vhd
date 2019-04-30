library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.constants.all;

entity registerFile_TLE is
  generic (
    N            : integer := numN;  -- Number of registers in each window
    M            : integer := numM;  -- Number of global registers
    windowBlocks : integer := numWindowBlocks;  -- IN - LOCAL - OUT
    NData        : integer := numBitData;  -- Register width
    NAddr        : integer := integer(log2(real(N*windowBlocks + M))));
  port (
    clk : in std_logic;
    reset : in std_logic;
    enable : in std_logic;

    -- Port control signals
    rd1 : in std_logic;                 
    rd2 : in std_logic;
    wr1 : in std_logic;                 -- Also used by the MMU as a dataStrobe
                                        -- for FILL operations

    -- Port address signals
    add_wr : in std_logic_vector(NAddr-1 downto 0);
    add_rd1 : in std_logic_vector(NAddr-1 downto 0);
    add_rd2 : in std_logic_vector(NAddr-1 downto 0);

    -- Port data signals
    dataIn : in std_logic_vector(NData-1 downto 0);  -- Also used by the MMU to
                                                     -- transfer data during
                                                     -- FILL operations
    dataOut1 : out std_logic_vector(NData-1 downto 0);  -- Also used by the RF
                                                        -- to transfer data to
                                                        -- the Memory during
                                                        -- SPILL operations
    dataOut2 : out std_logic_vector(NData-1 downto 0);

    -- Control Signals (active high)
    fill : out std_logic;               -- need to retrieve data from memory
    spill: out std_logic;               -- RF is full, need to spill in memory 
    call: in std_logic;                 -- SUBroutine call
    ret: in std_logic;                  -- SUBroutine ret
    dataACK: out std_logic;             -- raised by the RF to inform the MMU
                                        -- that the data to be filled has been
                                        -- collected correctly
    end entity registerFile_TLE;


    architecture struct of registerFile_TLE is

    begin  -- architecture struct



    end architecture struct;
