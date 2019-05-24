library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.myTypes.all;

--------------------------------------------------------------------------------
-- Definition of the Hardwired Control Unit
-- 
-- This Control Unit is based on a look-up-table, here defined using a behavioral
-- approach.
-- The Look-Up-Table receives as input the OPCODE field of the instruction and the 
-- FUNC filed of the instruction. The OPCOCDE is used to determine wheter the received 
-- instruction is a "ITYPE" instruction or a "RTYPE" instruction.

-- ITYPE instructions can operate on memory and can make use of immediate operators
-- RTYPE instructions operate on registers. In case of R-Type instructions the
-- OPCODE indicates that a mathematical operation must be executed: the type of
-- operation is indicated using the FUNC field.
-- 
-- The Control Unit, accordingly to the received input patterns generates at the 
-- same time all the control signals that are needed by the 3-staged datapath.
-- Since the datapath is 3-staged pipelined, the control signals going to the first 
-- stage are created and "consumed" immediately. On the other hand, the control 
-- signals that operate on the second and third stage MUST be delayed to match 
-- the correct stage at the correct time slot. 
--
-- Thus, the control signals going to 
-- the second stage will encounter a register that will propagate these signals at 
-- the next clock cycle. At the same time the control signals going to the third 
-- stage will encounter 2 different registers: the first corresponds to the same register
-- used to propagate the control singlas of the second stage. The second register 
-- will propagate only the signals going to the third stage.

-- This behavior is mandatory in a pipelined structure if we want to generate 
-- all the control signals at the same time but propagate them at different and 
-- consecutive clock cycles.
--------------------------------------------------------------------------------


entity CU_HW is
  port (
    -- Control Signals going to the datapath
    
    -- FIRST PIPE STAGE OUTPUTS
    EN1    : out std_logic;               -- enables the register file and the pipeline registers
    RF1    : out std_logic;               -- enables the read port 1 of the register file
    RF2    : out std_logic;               -- enables the read port 2 of the register file
    WF1    : out std_logic;               -- enables the write port of the register file
    -- SECOND PIPE STAGE OUTPUTS
    EN2    : out std_logic;               -- enables the pipe registers
    S1     : out std_logic;               -- input selection of the first multiplexer
    S2     : out std_logic;               -- input selection of the second multiplexer
    ALU1   : out std_logic;               -- alu control bit
    ALU2   : out std_logic;               -- alu control bit
    -- THIRD PIPE STAGE OUTPUTS
    EN3    : out std_logic;               -- enables the memory and the pipeline registers
    RM     : out std_logic;               -- enables the read-out of the memory
    WM     : out std_logic;               -- enables the write-in of the memory
    S3     : out std_logic;               -- input selection of the multiplexer

    -- Input patterns
    -- OPCODE determines if RTYPE or ITYPE
    OPCODE : in  std_logic_vector(OP_CODE_SIZE-1 downto 0);
    
    -- FUNC determines which mathematical operation 
    -- must be executed in case of RTYPE
    FUNC   : in  std_logic_vector(FUNC_SIZE-1 downto 0);
    
    -- The clock is connected to the registers that will 
    -- delay the selected control signals
    Clk    : in  std_logic;     

    -- The reset signal will reset the registers used 
    -- to delay the selected control signals
    Rst    : in  std_logic);    
end entity CU_HW;

-------------------------------------------------------------------------------
-- Behavioral Architecture
-------------------------------------------------------------------------------

architecture beh of CU_HW is

  -- First Control Word: each bit corresponds to a different control signal
  -- In this case, all the Control Signals are included
  signal cw1 : std_logic_vector(CW_SIZE-1 downto 0);

  -- Second Control Word: each bit corresponds to a different control signal
  -- In this case, only the control signals going to Stage 2 and Stage 3 are included
  -- (Signals going to Stage 1 have already been routed to the correspondent 
  -- Top-level-entity output signals)
  signal cw2 : std_logic_vector(CW_SIZE-1 downto 3);

  -- Third Control Word: each bit corresponds to a different control signal
  -- In this case, only the control signals going to stage 3 are included
  -- (Signals going to Stage 1 and Stage 2 have already been routed to the correspondent 
  -- Top-level-entity output signals)
  signal cw3 : std_logic_vector(CW_SIZE-1 downto 8);

begin  -- architecture beh

  -- Mapping/Routing of the control signals going to Stage 1
  rf1   <= cw1(0);
  rf2   <= cw1(1);
  en1   <= cw1(2);

  -- Mapping/Routing of the control signals going to Stage 2
  s1    <= cw2(3);
  s2    <= cw2(4);
  alu1  <= cw2(5);
  alu2  <= cw2(6);
  en2   <= cw2(7);

  -- Mapping/Routing of the control signals going to Stage 3
  rm    <= cw3(8);
  wm    <= cw3(9);
  en3   <= cw3(10);
  s3    <= cw3(11);
  wf1   <= cw3(12);

  --------------------------------------------------------------------------------
  -- Process that determines the behavior of the Look-Up-table
  ---------------------------------------------------------------------------------
  process(OPCODE, FUNC)
  begin
    case OPCODE is
      when RTYPE =>   -- If the OPCODE corresponds to a RTYPE instruction...
        case FUNC is  -- Check the mathematical operation by checking the FUNC field
          when RTYPE_ADD =>
            cw1 <= "1010010010111";
          when RTYPE_SUB =>
            cw1 <= "1010010110111";
          when RTYPE_AND =>
            cw1 <= "1010011010111";
          when RTYPE_OR =>
            cw1 <= "1010011110111";
          when NOP =>
            cw1 <= "1010011110111";
          when others => null;
        end case;
      when ITYPE_ADDI1 =>   -- Else if the OPCODE corresponds to a ITYPE instruction...
        cw1 <= "1010010011110";
      when ITYPE_SUBI1 =>
        cw1 <= "1010010111110";
      when ITYPE_ANDI1 =>
    	  cw1 <= "1010011011110";
      when ITYPE_ORI1 =>
        cw1 <= "1010011111110";
      when ITYPE_ADDI2 =>
        cw1 <= "1010010000101";
      when ITYPE_SUBI2 =>
        cw1 <= "1010010100101";
      when ITYPE_ANDI2 =>
        cw1 <= "1010011000101";
      when ITYPE_ORI2 =>
        cw1 <= "1010011100101";
      when ITYPE_MOV =>
        cw1 <= "1010010011110";
      when ITYPE_SREG1 =>
        cw1 <= "1010010011100";
      when ITYPE_SREG2 =>
        cw1 <= "1010010000100";
      when ITYPE_SMEM2 =>
        cw1 <= "1011010001111";
      when ITYPE_LMEM1 =>
        cw1 <= "1110110011110";
      when ITYPE_LMEM2 =>
        cw1 <= "1110110000101";
      when others => null;
    end case;
  end process;

  --------------------------------------------------------------------------------
  -- Process that defines the 2 registers used for the control signals propagation
  ---------------------------------------------------------------------------------
  process(clk, rst)
  begin
    if rising_edge(clk) then
      if rst = '0' then
        cw2 <= (others => '0');
        cw3 <= (others => '0');
      else
        cw2 <= cw1(CW_SIZE-1 downto 3);
        cw3 <= cw2(CW_SIZE-1 downto 8);
      end if;
    end if;

  end process;

end architecture beh;
