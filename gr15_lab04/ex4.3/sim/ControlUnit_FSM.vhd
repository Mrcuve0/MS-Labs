library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.myTypes.all;


entity cu_fsm is
  port (
    Clk     : in  std_logic;
    Rst     : in  std_logic;
    EN1     : out std_logic;
    RF1     : out std_logic;
    RF2     : out std_logic;
    WF1     : out std_logic;
    EN2     : out std_logic;
    S1      : out std_logic;
    S2      : out std_logic;
    ALU1    : out std_logic;
    ALU2    : out std_logic;
    EN3     : out std_logic;
    RM      : out std_logic;
    WM      : out std_logic;
    S3      : out std_logic;
    FUNC    : in  std_logic_vector(FUNC_SIZE-1 downto 0);
    OPCODE  : in  std_logic_vector(OP_CODE_SIZE-1 downto 0));
end entity cu_fsm;

architecture cu_fsm_beh of cu_fsm is

  signal cw : std_logic_vector(CW_SIZE-1 downto 0);
  
  type TYPE_STATE is (
    reset, stage1, stage2, stage3
    );
  signal CURRENT_STATE : TYPE_STATE := reset;
  signal NEXT_STATE    : TYPE_STATE;

begin
  
  P_CW : process(OPCODE, FUNC)
  begin
    case OPCODE is
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


  P_OUTPUTS : process(CURRENT_STATE, cw)
  begin
    case CURRENT_STATE is
      when reset =>
        EN1 <= '0';
        EN2 <= '0';
        EN3 <= '0';

        NEXT_STATE <= stage1;
      when stage1 =>
        RF1  <= cw(0);
        RF2  <= cw(1);
        EN1  <= cw(2);
        WF1  <= cw(12);

        EN2 <= '0';
        EN3 <= '0';

        NEXT_STATE <= stage2;
      when stage2 =>
        EN1 <= '0';

        S1   <= cw(3);
        S2   <= cw(4);
        ALU1 <= cw(5);
        ALU2 <= cw(6);
        EN2  <= cw(7);

        NEXT_STATE <= stage3;
      when stage3 =>
        EN2 <=  '0';

        RM   <= cw(8);
        WM   <= cw(9);
        EN3  <= cw(10);
        S3   <= cw(11);
      
        NEXT_STATE <= stage1;
      when others => NEXT_STATE <= reset;
    end case;
  end process P_OUTPUTS;

    P_OPC : process(Clk, Rst)
  begin
    if (rising_edge(clk)) then
      if Rst = '0' then
        CURRENT_STATE <= reset;
      else
        CURRENT_STATE <= NEXT_STATE;
      end if;
    end if;
  end process P_OPC;
  
end cu_fsm_beh;
