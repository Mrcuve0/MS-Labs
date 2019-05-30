library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Definition of the instructions with relative OPCODE and FUNC
use work.myTypes.all;

--------------------------------------------------------------------------------
-- Definition of the FSM baed Control Unit
-- The FSM is implemented on 4 different stages: 
-- Reset, Stage1, Stage2, Stage3 
--
-- For additional an more complete documentation, please visit the file "FSM Diagram"
-- into the "README comments" folder. 
--------------------------------------------------------------------------------

entity cu_fsm is
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
end entity cu_fsm;


--------------------------------------------------------------------------------
-- Behavioral Architecture
--------------------------------------------------------------------------------

architecture cu_fsm_beh of cu_fsm is

  signal cw : std_logic_vector(CW_SIZE-1 downto 0);
  
  type TYPE_STATE is (
    reset, stage1, stage2, stage3
    );
  signal CURRENT_STATE : TYPE_STATE := reset;
  signal NEXT_STATE    : TYPE_STATE;

begin

  -- This process defines the value of the Control Word depending on the OPCODE
  -- and FUNC (i.e. the instruction) received at the input of the Control Unit.  
  P_CW : process(OPCODE, FUNC)
  begin
    case OPCODE is
      -- If the instruction is of RTYPE...
      when RTYPE =>
        case FUNC is
          when RTYPE_ADD =>
            cw <= "1010010010111";
          when RTYPE_SUB =>
            cw <= "1010010110111";
          when RTYPE_AND =>
            cw <= "1010011010111";
          when RTYPE_OR =>
            cw <= "1010011110111";
          when NOP =>
            cw <= "0010011110111";
          when others => cw <= (others => 'Z');
        end case;
      -- If the instruction is of ITYPE...
      when ITYPE_ADDI1 =>
        cw <= "1010010011110";
      when ITYPE_SUBI1 =>
        cw <= "1010010111110";
      when ITYPE_ANDI1 =>
        cw <= "1010011011110";
      when ITYPE_ORI1 =>
        cw <= "1010011111110";
      when ITYPE_ADDI2 =>
        cw <= "1010010000101";
      when ITYPE_SUBI2 =>
        cw <= "1010010100101";
      when ITYPE_ANDI2 =>
        cw <= "1010011000101";
      when ITYPE_ORI2 =>
        cw <= "1010011100101";
      when ITYPE_MOV =>
        cw <= "1010010011110";
      when ITYPE_SREG1 =>
        cw <= "1010010011100";
      when ITYPE_SREG2 =>
        cw <= "1010010000100";
      when ITYPE_SMEM2 =>
        cw <= "0011010001111";
      when ITYPE_LMEM1 =>
        cw <= "1110110011110";
      when ITYPE_LMEM2 =>
        cw <= "1110110000101";
      when others => cw <= (others => 'Z');
    end case;
  end process P_CW;

  -- Depending on the current stage of the FSM, set the control signals 
  -- according to the value decided for the Control Word
  P_OUTPUTS : process(CURRENT_STATE)
  begin
    case CURRENT_STATE is
      -- Reset State, all the Enable signals are disabled (0). 
      -- We don't care about all the other control signals as long the 
      -- Enable signals are kept disabled.
      when reset =>
        EN1 <= '0';
        EN2 <= '0';
        EN3 <= '0';

        NEXT_STATE <= stage1;

      -- Stage1 state, the control signals related to stage1 are assigned, 
      -- coherently with the actual values assumed by the control word (CW).
      -- The signal "WF1" is disabled: this is the "WriteBack" signal and
      -- must be driven by stage 3.
      -- If we don't force the value of WF1 to 0, assuming we need to change its value from 1->0 or 0->1 
      -- from one instruction to the other, stage1 will "remember" the value of WF1 set
      -- by the previous stage (which is stage3 during the execution of the previous instruction), 
      -- leading to an incorrect behavior.
      -- EN2 and EN3 are disabled (so are their related stages). We don't reset the control signals
      -- of stage2 and stage3 since it is sufficient to disable their enable signals.
      when stage1 =>
        RF1  <= cw(0);
        RF2  <= cw(1);
        EN1  <= cw(2);
        WF1  <= '0';

        EN2 <= '0';
        EN3 <= '0';

        NEXT_STATE <= stage2;

      -- Stage2 state, the control signals related to stage2 are assigned, 
      -- coherently with the actual values assumed by the Control Word (CW).
      -- Stage1 is disabled by setting EN1 to zero.
      when stage2 =>
        EN1 <= '0';

        S1   <= cw(3);
        S2   <= cw(4);
        ALU1 <= cw(5);
        ALU2 <= cw(6);
        EN2  <= cw(7);

        NEXT_STATE <= stage3;
      -- Stage3 state, the control signals realted to stage3 are assigned,
      -- coherently with the actual values assumed by the Control Word (CW).
      -- We also set the WF1 signal (WriteBack), wich is related to the write 
      -- port of the Register File of stage1.
      -- Stage2 is disabled by setting EN2 to zero.
      -- Stage1 has been already disabled by stage2.
      when stage3 =>
        EN2 <=  '0';

        RM   <= cw(8);
        WM   <= cw(9);
        EN3  <= cw(10);
        S3   <= cw(11);
        WF1  <=  cw(12);

        -- If the WF1 has to activated, then we MUST remember to re-activate also stage1
        -- and its Register File.
        if (cw(12) = '1') then  -- We must activate again the stage1 for the WB operation
          EN1 <= '1';
        end if;
      
        NEXT_STATE <= stage1;
      when others => NEXT_STATE <= reset;
    end case;
  end process P_OUTPUTS;

  -- Propagation of the nextState etc...
  P_OPC : process(Clk, Rst)
  begin
    if (rising_edge(clk)) then  -- Synchronous reset.
      if Rst = '0' then
        CURRENT_STATE <= reset;
      else
        CURRENT_STATE <= NEXT_STATE;
      end if;
    end if;
  end process P_OPC;
  
end cu_fsm_beh;
