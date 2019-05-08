library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.constants.all;

--------------------------------------------------------------------------------
-- Definition of the Transaltion Unit
--------------------------------------------------------------------------------

entity translationUnit_RF is
  generic (
    N            : integer := numN;
    M            : integer := numM;
    windowBlocks : integer := numWindowBlocks;
    F            : integer := numF;

    -- Number of addresses in input
    NAddr_Windowed : integer := integer(ceil(log2(real(numN * numwindowBlocks + numM))));

    -- Number of addresses in output
    NAddr_Physical : integer := integer(ceil(log2(real(numRegs_physical_RF)))));
  port (
    clk    : in std_logic;
    reset  : in std_logic;
    enable : in std_logic;
    rd1    : in std_logic;
    rd2    : in std_logic;
    wr     : in std_logic;
    fill   : in std_logic;
    spill  : in std_logic;

    -- inputs
    add_wr  : in std_logic_vector(NAddr_Windowed-1 downto 0);
    add_rd1 : in std_logic_vector(NAddr_Windowed-1 downto 0);
    add_rd2 : in std_logic_vector(NAddr_Windowed-1 downto 0);
    add_SF  : in std_logic_vector(NAddr_Windowed-1 downto 0);

    -- from CU
    cwp : in std_logic_vector(integer(ceil(log2(real(windowRounds*numF))))-1 downto 0);

    -- outputs
    add_wr_out  : out std_logic_vector(NAddr_Physical-1 downto 0);
    add_rd1_out : out std_logic_vector(NAddr_Physical-1 downto 0);
    add_rd2_out : out std_logic_vector(NAddr_Physical-1 downto 0);
    add_SF_out  : out std_logic_vector(NAddr_Physical-1 downto 0));
end entity translationUnit_RF;

--------------------------------------------------------------------------------
-- Behavioral Architecture
--------------------------------------------------------------------------------

architecture beh of translationUnit_RF is

  signal add_rd1_outVar, add_rd2_outVar, add_wr_outVar, add_SF_outVar: std_logic_vector(NAddr_Physical-1 downto 0);

begin  -- architecture beh

  TranslProc : process (add_rd1, add_rd2, add_wr, add_SF, fill, spill, cwp, enable) is
  begin  -- process

    if enable = '1' then

------------------------------------------------------------------------------
-- Write
------------------------------------------------------------------------------     

      if wr = '1' then
        -- We must point where the GLOBALS registers are saved in the Physical RF
        if to_integer(unsigned(add_wr)) > (numWindowBlocks * numN) - 1 then
          add_wr_outVar <= std_logic_vector(to_unsigned(to_integer(unsigned(add_wr)) - (numWindowBlocks * N) + numRegs_physical_RF - N, add_wr_outVar'length));

        elsif (to_integer(unsigned(cwp)) mod F) = (F-1) then  -- If it is the last physical window (circular RF)

          -- If the input address points to an OUT reg
          if to_integer(unsigned(add_wr)) > ((numWindowBlocks-1)* numN) - 1 then
            add_wr_outVar <= std_logic_vector(to_unsigned(to_integer(unsigned(add_wr))- N * 2, add_wr_outVar'length));  -- ... make it point to where the IN registers are saved in the Physical RF

          else
            add_wr_outVar <= std_logic_vector(to_unsigned(to_integer(unsigned(add_wr)) + (to_integer(unsigned(cwp)) mod F) * N * 2, add_wr_outVar'length));  -- other registers : IN - LOCAL

          end if;
        else
          add_wr_outVar <= std_logic_vector(to_unsigned(to_integer(unsigned(add_wr)) + (to_integer(unsigned(cwp)) mod F) * N * 2, add_wr_outVar'length));  -- other registers : IN - LOCAL

        end if;
      end if;

-------------------------------------------------------------------------------
-- Read 1
-------------------------------------------------------------------------------

      if rd1 = '1' then
        -- We must point where the GLOBALS registers are saved in the Physical RF
        if to_integer(unsigned(add_rd1)) > (numWindowBlocks * numN) - 1 then
          add_rd1_outVar <= std_logic_vector(to_unsigned(to_integer(unsigned(add_rd1)) - (numWindowBlocks * N) + numRegs_physical_RF - N, add_rd1_outVar'length));

        elsif (to_integer(unsigned(cwp)) mod F) = (F-1) then  -- If it is the last physical window (circular RF)

          -- If the input address points to an OUT reg
          if to_integer(unsigned(add_rd1)) > ((numWindowBlocks-1)* numN) - 1 then
            add_rd1_outVar <= std_logic_vector(to_unsigned(to_integer(unsigned(add_rd1))- N * 2, add_rd1_outVar'length));
            -- ... make it point to where the IN registers are saved in the Physical RF

          else
            add_rd1_outVar <= std_logic_vector(to_unsigned(to_integer(unsigned(add_rd1)) + (to_integer(unsigned(cwp)) mod F) * N * 2, add_rd1_outVar'length));  -- other registers : IN - LOCAL

          end if;
        else
          add_rd1_outVar <= std_logic_vector(to_unsigned(to_integer(unsigned(add_rd1)) + (to_integer(unsigned(cwp)) mod F) * N * 2, add_rd1_outVar'length));  -- other registers : IN - LOCAL

        end if;
      end if;


-------------------------------------------------------------------------------
-- Read 2
-------------------------------------------------------------------------------

      if rd2 = '1' then
        -- We must point where the GLOBALS registers are saved in the Physical RF
        if to_integer(unsigned(add_rd2)) > (numWindowBlocks * numN) - 1 then
          add_rd2_outVar <= std_logic_vector(to_unsigned(to_integer(unsigned(add_rd2)) - (numWindowBlocks * N) + numRegs_physical_RF - N, add_rd2_outVar'length));

        elsif (to_integer(unsigned(cwp)) mod F) = (F-1) then

          -- If the input address points to an OUT reg
          if to_integer(unsigned(add_rd2)) > ((numWindowBlocks-1)* numN) - 1 then
            add_rd2_outVar <= std_logic_vector(to_unsigned(to_integer(unsigned(add_rd2))- N * 2, add_rd2_outVar'length));
            -- ... make it point to where the IN registers are saved in the Physical RF

          else
            add_rd2_outVar <= std_logic_vector(to_unsigned(to_integer(unsigned(add_rd2)) + (to_integer(unsigned(cwp)) mod F) * N * 2, add_rd2_outVar'length));  -- other registers : IN - LOCAL

          end if;
        else
          add_rd2_outVar <= std_logic_vector(to_unsigned(to_integer(unsigned(add_rd2)) + (to_integer(unsigned(cwp)) mod F) * N * 2, add_rd2_outVar'length));  -- other registers : IN - LOCAL

        end if;
      end if;

-------------------------------------------------------------------------------
-- Spill/Fill
-------------------------------------------------------------------------------

      if fill = '1' or spill = '1' then
        -- We must point where the GLOBALS registers are saved in the Physical RF
        if to_integer(unsigned(add_SF)) > (numWindowBlocks * numN) - 1 then
          add_SF_outVar <= std_logic_vector(to_unsigned(to_integer(unsigned(add_SF)) - (numWindowBlocks * N) + numRegs_physical_RF - N, add_SF_outVar'length));

        elsif (to_integer(unsigned(cwp)) mod F) = (F-1) then

          -- If the input address points to an OUT reg
          if to_integer(unsigned(add_SF)) > ((numWindowBlocks-1)* numN) - 1 then
            add_SF_outVar <= std_logic_vector(to_unsigned(to_integer(unsigned(add_SF))- N * 2, add_SF_outVar'length));
            -- ... make it point to where the IN registers are saved in the Physical RF

          else
            add_SF_outVar <= std_logic_vector(to_unsigned(to_integer(unsigned(add_SF)) + (to_integer(unsigned(cwp)) mod F) * N * 2, add_SF_outVar'length));  -- other registers : IN - LOCAL

          end if;
        else
          add_SF_outVar <= std_logic_vector(to_unsigned(to_integer(unsigned(add_SF)) + (to_integer(unsigned(cwp)) mod F) * N * 2, add_SF_outVar'length));  -- other registers : IN - LOCAL

        end if;
      end if;

    else
      add_wr_outVar  <= (others => '0');
      add_rd1_outVar <= (others => '0');
      add_rd2_outVar <= (others => '0');
      add_SF_outVar  <= (others => '0');
    end if;


  end process TranslProc;

  add_rd1_out <= add_rd1_outVar;
  add_rd2_out <= add_rd2_outVar;
  add_wr_out  <= add_wr_outVar;
  add_SF_out  <= add_SF_outVar;

end architecture beh;
