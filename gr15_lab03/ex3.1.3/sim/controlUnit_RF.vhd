library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.constants.all;

--------------------------------------------------------------------------------
-- Definition of the Control Unit of the Windowed Register File.
--
-- The main purpose is to handle the CWP and SWP correctly, while asserting the 
-- FILL and SPILL signals if needed. 
-- Both these signals, together with the MMUStrobe and DataACK signals, are used to
-- communicate with the external world, especially with the Memory Management Unit.
--
-- The FILL and SPILL signals are also used to inform the environment that
-- the entire register file is busy while handling the registers and the communication
-- with the memory. Thus, the environment must know that every READ or WRITE 
-- operation performed during SPILL and FILL operations is meaningless since the data
-- is not valid as it can be replaced/overwritten at any moment.
--
-- MMUStrobe is used by the MMU to inform the Control Unit that the FILL/SPILL operation
-- can be considered complete (i.e. all the registers have been moved).
-- DataACK is used by the Control Unit to inform the MMU that the MMUStrobe signal
-- has been correctly received.

-- The FILL/SPILL operations are handled by external components (MMU), which will 
-- assert the correct signals in order to insert/remove the register.
-- This Control Unit just waits for a MMUStrobe signal to "wave up" from FILL/SPILL
-- operations.
--------------------------------------------------------------------------------


entity controlUnit_RF is
  generic (
    N              : integer := numN;  -- Number of registers in each window block (8)
    M              : integer := numM;   -- Number of global registers (8)
    F              : integer := numF;   -- Number of windows (4)
    windowBlocks   : integer := numWindowBlocks;  -- IN - LOCAL - OUT
    NData          : integer := numBitData;  -- Wifth of the registers (32bit)
    NAddr_Windowed : integer := integer(ceil(log2(real(numN*numwindowBlocks + numM)))));
  -- number of addresses of the single window

  port (
    clk    : in std_logic;
    reset  : in std_logic;
    enable : in std_logic;

    cwpOut : out std_logic_vector(integer(ceil(log2(real(windowRounds*numF))))-1 downto 0);
    swpOut : out std_logic_vector(integer(ceil(log2(real(windowRounds*numF))))-1 downto 0);

    call  : in  std_logic;
    ret   : in  std_logic;
    fill  : out std_logic;
    spill : out std_logic;

    RD_Mem : out std_logic;
    WR_Mem : out std_logic;
    add_SF : out std_logic_vector(NAddr_Windowed - 1 downto 0);

    MMUStrobe : in  std_logic;          -- coming from the MMU
    dataACK   : out std_logic);         -- to the MMU
end entity controlUnit_RF;

--------------------------------------------------------------------------------
-- Behavioral Architecture
--------------------------------------------------------------------------------

architecture beh of controlUnit_RF is

  constant Fplus1 : integer := F+1;

  -- Stores the number of the last called subroutine
  signal cwp : std_logic_vector(integer(ceil(log2(real(windowRounds*numF))))-1 downto 0);
  -- Stores the number of the last spilled subroutine
  signal swp : std_logic_vector(integer(ceil(log2(real(windowRounds*numF))))-1 downto 0);

  -- Stores the number of available (empty) windows.
  -- If the number is  equal to zero, then no space is available
  -- and a SPILL operation is needed
  signal cansave     : std_logic_vector(integer(ceil(log2(real(windowRounds*numF))))-1 downto 0);
  signal cansaveNext : std_logic_vector(integer(ceil(log2(real(windowRounds*numF))))-1 downto 0);

  -- Stores the number of consecutive subroutine RETs that can be performed without a FILL
  -- If canrestore = 0 we need to FILL to get the previous subroutine data back
  signal canrestore     : std_logic_vector(integer(ceil(log2(real(windowRounds*numF))))-1 downto 0);
  signal canrestoreNext : std_logic_vector(integer(ceil(log2(real(windowRounds*numF))))-1 downto 0);

  signal regCnt, regCntNext : std_logic_vector(integer(ceil(log2(real(N*2)))) downto 0);

  -- States of the Control Unit
  type state_t is (waitState, resetState, callState, retState, pre_spillFillState, spillState, fillState);
  signal currentState, nextState : state_t := waitState;

begin  -- architecture beh

  combLogic : process (reset, enable, call, ret, MMUStrobe, currentState, cansave, canrestore, regCnt) is
    variable need_to_spill : integer := 0;  -- Indicates that we must SPILL at next clock
    variable need_to_fill  : integer := 0;  -- Indicates that we must FILL at next clock
    variable add_cnt       : integer := -1;
    variable oldCWP        : integer := 0;

  begin

    case currentState is

      when resetState =>

        -- OUTS
        cwp <= (others => '0');
        swp <= std_logic_vector(to_signed(-1, swp'length));  -- The SWP is initialized to "-1" initially


        -- REGS
        -- Initially, there's place for F-1 subroutines
        cansaveNext    <= std_logic_vector(to_unsigned(F-1, cansave'length));
        canrestoreNext <= (others => '0');

        need_to_fill  := 0;
        need_to_spill := 0;
        oldCWP        := 0;

        spill   <= '0';
        fill    <= '0';
        RD_Mem  <= '0';
        WR_Mem  <= '0';
        dataACK <= '0';
        add_SF  <= (others => '0');

        if reset = '1' then
          nextState <= resetState;
        else
          nextState <= waitState;
        end if;

--------------------------------------------------------------------------------

      when waitState =>

        need_to_fill  := 0;
        need_to_spill := 0;

        -- OUTS
        spill   <= '0';
        fill    <= '0';
        dataACK <= '0';
        RD_Mem  <= '0';
        WR_Mem  <= '0';

        -- REGS

        -- BEGIN CALL-related section
        if to_integer(unsigned(cansave)) = 0 then  -- If there are no places left to accomodate a new SUB

          if call = '1' and ret = '0' then
            need_to_spill := 1;
            need_to_fill  := 0;

            --oldCWP := to_integer(unsigned(cwp));

            nextState <= pre_spillFillState;  -- spillState;

          elsif call = '0' and ret = '0' then
            nextState <= waitState;

          end if;

        elsif to_integer(unsigned(cansave)) /= 0 then  -- If there are still places left to accomodate a new SUB

          if call = '1' and ret = '0' then
            cansaveNext    <= std_logic_vector(unsigned(cansave) - 1);
            canrestoreNext <= std_logic_vector(unsigned(canrestore) + 1);
            nextState      <= callState;

          elsif call = '0' and ret = '0' then
            nextState <= waitState;

          end if;
        end if;
        -- END CALL-related section

        -- BEGIN RET-related section
        if to_integer(unsigned(canrestore)) = 0 then  -- If a RET operation will require a FILL phase

          if ret = '1' and call = '0' then
            need_to_spill := 0;
            need_to_fill  := 1;

            --oldWP := to_integer(unsigned(cwp));
            nextState <= pre_spillFillState;  --fillState;

          elsif ret = '0' and call = '0' then
            nextState <= waitState;

          end if;

        elsif to_integer(unsigned(canrestore)) /= 0 then  -- If a RET operation can be performed effortlessly

          if ret = '1' and call = '0' then
            cansaveNext    <= std_logic_vector(unsigned(cansave) + 1);
            canrestoreNext <= std_logic_vector(unsigned(canrestore) - 1);

            nextState <= retState;

          elsif ret = '0' and ret = '1' then
            nextState <= waitState;

          end if;
        end if;
        -- END RET-related section


-------------------------------------------------------------------------------          

      when callState =>

        spill   <= '0';
        fill    <= '0';
        dataACK <= '0';

        if to_integer(unsigned(cansave)) = 0 then  -- If there are no places left to accomodate a new SUB
          need_to_spill := 1;
        -- CWP will be upgraded only after SPILL
        elsif to_integer(unsigned(cansave)) /= 0 and call = '1' then  -- else we can procede with a CALL effortlessly
          need_to_spill := 0;
          cwp           <= std_logic_vector(unsigned(cwp) + 1);
        end if;


        -- STATE TRANSITIONS
        if need_to_spill = 1 then       -- we enter the SPILL operation

          --oldCWP := to_integer(unsigned(cwp));
          nextState <= pre_spillFillState;  -- spillState;

        elsif need_to_spill = 0 and call = '1' then  -- we procede with the effortless CALL
          cansaveNext    <= std_logic_vector(unsigned(cansave) - 1);
          canrestoreNext <= std_logic_vector(unsigned(canrestore) + 1);
          nextState      <= callState;

        elsif call = '0' and ret = '1' then  -- A RET signal is received, we enter RET phase
          cansaveNext    <= std_logic_vector(unsigned(cansave) + 1);
          canrestoreNext <= std_logic_vector(unsigned(canrestore) - 1);
          nextState      <= retState;

        else
          nextState <= waitState;

        end if;

-------------------------------------------------------------------------------

      when pre_spillFillState =>

        spill <= '0';
        fill  <= '0';

        oldCWP := to_integer(unsigned(cwp));

        if MMUStrobe = '0' then
          if need_to_spill = 1 then
            spill <= '1';
          elsif need_to_fill = 1 then
            fill <= '1';
          end if;

          nextState <= pre_spillFillState;

        else
          if need_to_spill = 1 then
            regCntNext <= std_logic_vector(to_unsigned(0, regCntNext'length));
            nextState  <= spillState;

          elsif need_to_fill = 1 then
            regCntNext <= std_logic_vector(to_unsigned(0, regCntNext'length));
            nextState  <= fillState;

          else
            nextState <= waitState;
          end if;
        end if;

-------------------------------------------------------------------------------        

      when spillState =>

        need_to_spill := 0;
        spill         <= '1';  -- the SPILL signal is raised to inform the environment that the RF is busy
        fill          <= '0';

        WR_Mem <= '1';                  -- Write to MEMory

        cwp <= std_logic_vector(unsigned(swp) + 1);
        add_SF <= regCnt;

        if regCnt = std_logic_vector(to_unsigned(16, regCnt'length)) and call = '0' and ret = '0' then
          cwp       <= std_logic_vector(to_unsigned(oldCWP, cwp'length) + 1);
          swp       <= std_logic_vector(unsigned(swp) + 1);
          spill <= '0';
          nextState <= waitState;

        else
          regCntNext <= std_logic_vector(unsigned(regCnt) + 1);
          nextState  <= spillState;

        end if;

-------------------------------------------------------------------------------        

      when retState =>

        spill   <= '0';
        fill    <= '0';
        dataACK <= '0';

        if to_integer(unsigned(canrestore)) = 0 then  -- A FILL must be performed if we want to perform a new RET
          need_to_fill := 1;
        elsif to_integer(unsigned(cansave)) /= 0 and ret = '1' then  -- no FILL to perform if a new RET is received
          need_to_fill := 0;
          cwp          <= std_logic_vector(unsigned(cwp) - 1);
        end if;


        -- STATE TRANSITIONS
        if need_to_fill = 1 then            -- Must enter the FILL phase
          oldCWP    := to_integer(unsigned(cwp));
          nextState <= pre_spillFillState;  -- fillState;

        elsif need_to_fill = 0 and ret = '1' then  -- Can perform the RET without FILL
          canrestoreNext <= std_logic_vector(unsigned(canrestore) - 1);
          cansaveNext    <= std_logic_vector(unsigned(cansave) + 1);
          nextState      <= retState;

        elsif call = '1' and ret = '0' then  -- A CALL signal is received
          nextState <= callState;

        else
          nextState <= waitState;

        end if;

-------------------------------------------------------------------------------        

      when fillState =>

        need_to_fill := 0;
        spill        <= '0';
        fill         <= '1';  -- The FILL signal is raised to inform the environment that the the RF is busy

        RD_Mem <= '1';                  -- Read form MEMory

        cwp     <= std_logic_vector(unsigned(swp) + 1);
        add_SF <= regCnt;

        if regCnt = std_logic_vector(to_unsigned(16, regCnt'length)) and call = '0' and ret = '0' then
          cwp       <= std_logic_vector(to_unsigned(oldCWP, cwp'length) - 1);
          swp       <= std_logic_vector(unsigned(swp) - 1);
          fill <= '0';
          nextState <= waitState;

        else
          regCntNext <= std_logic_vector(unsigned(regCnt) + 1);
          nextState <= fillState;

        end if;
        
-------------------------------------------------------------------------------
        
      when others => nextState <= waitState;
    end case;

  end process combLogic;


  stateReg : process(clk)
  begin
    if rising_edge(clk) then            -- Synchronous reset
      if reset = '1' then
        currentState <= resetState;
        cansave      <= std_logic_vector(to_unsigned(F-1, cansave'length));
        canrestore   <= (others => '0');
      end if;

      if enable = '1' and reset = '0' then
        cansave      <= cansaveNext;
        canrestore   <= canrestoreNext;
        regCnt       <= regCntNext;
        currentState <= nextState;
      end if;

    end if;
  end process;


  cwpOut <= cwp;
  swpOut <= swp;

end architecture beh;
