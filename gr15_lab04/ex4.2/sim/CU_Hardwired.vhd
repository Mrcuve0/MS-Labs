library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.myTypes.all;


entity CU_HW is
  port (
    EN1    : out std_logic;
    RF1    : out std_logic;
    RF2    : out std_logic;
    WF1    : out std_logic;
    EN2    : out std_logic;
    S1     : out std_logic;
    S2     : out std_logic;
    ALU1   : out std_logic;
    ALU2   : out std_logic;
    EN3    : out std_logic;
    RM     : out std_logic;
    WM     : out std_logic;
    S3     : out std_logic;
    OPCODE : in  std_logic_vector(OP_CODE_SIZE-1 downto 0);
    FUNC   : in  std_logic_vector(FUNC_SIZE-1 downto 0);
    Clk    : in  std_logic;
    Rst    : in  std_logic);
end entity CU_HW;

-------------------------------------------------------------------------------
-- Behavioral Architecture
-------------------------------------------------------------------------------

architecture beh of CU_HW is

  signal cw1 : std_logic_vector(CW_SIZE-1 downto 0);
  signal cw2 : std_logic_vector(CW_SIZE-1 downto 3);
  signal cw3 : std_logic_vector(CW_SIZE-1 downto 8);

begin  -- architecture beh

  rf1   <= cw1(0);
  rf2   <= cw1(1);
  en1   <= cw1(2);
  s1    <= cw2(3);
  s2    <= cw2(4);
  alu1  <= cw2(5);
  alu2  <= cw2(6);
  en2   <= cw2(7);
  rm    <= cw3(8);
  wm    <= cw3(9);
  en3   <= cw3(10);
  s3    <= cw3(11);
  wf1   <= cw3(12);

  process(OPCODE, FUNC)
  begin
    case OPCODE is
      when RTYPE =>
        case FUNC is
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
      when ITYPE_ADDI1 =>
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
