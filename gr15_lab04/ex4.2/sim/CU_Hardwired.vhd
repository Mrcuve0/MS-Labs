library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity cu is

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
    OPCODE : in  std_logic_vector(OP_CODE_SIZE - 1 downto 0);
    FUNC   : in  std_logic_vector(FUNC_SIZE - 1 downto 0);
    Clk    : in  std_logic;
    Rst    : in  std_logic);

end entity cu;

-------------------------------------------------------------------------------
-- Behavioral Architecture
-------------------------------------------------------------------------------

architecture beh of cu is

  signal cw1, cw2, cw3 : std_logic_vector(CW_SIZE-1 downto 0);

begin  -- architecture beh

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
            cw1 <= ""
          when others => null;
        end case;
      when ITYPE_ADDI1 =>
        cw1 <= "1010010011111";
      when ITYPE_SUBI1 =>
        cw1 <= "1010010111111";
      when ITYPE_ANDI1 =>
        cw1 <= "1010011011111";
      when ITYPE_ORI1 =>
        cw1 <= "1010011111111";
      when ITYPE_ADDI2 =>
        cw1 <= "1010010000111";       
      when ITYPE_SUBI2 =>
        cw1 <= "1010010100111";
      when ITYPE_ANDI2 =>
        cw1 <= "1010011000111";         
      when ITYPE_ORI2 =>
       cw1 <= " 1010011100111";
      when ITYPE_MOV =>
      when ITYPE_SREG1 =>
      when ITYPE_SREG2 =>
      when ITYPE_SMEM2 =>
      when ITYPE_LMEM1 =>
      when ITYPE_LMEM2 =>
      when others => null;
    end case;
  end process;

  process(clk, rst)
  begin
    if rising_edge(clk) then
      if rst = 0 then
        cw1 <= (others => '0');
      end if;
      cw2 <= cw1(CW_SIZE-1 downto 3);
      cw3 <= cw2(CW_SIZE-1 downto 8);
    end if;

  end process;

end architecture beh;
