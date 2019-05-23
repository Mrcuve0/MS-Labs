library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.myTypes.all;

entity cu_test is
end cu_test;

architecture TEST of cu_test is
  
  component cu_fsm is
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
      OPCODE : in  std_logic_vector(OP_CODE_SIZE-1 downto 0));
  end component cu_fsm;

  
    signal Clock: std_logic := '0';
    signal Reset: std_logic := '1';

    signal cu_opcode_i: std_logic_vector(OP_CODE_SIZE - 1 downto 0) := (others => '0');
    signal cu_func_i: std_logic_vector(FUNC_SIZE - 1 downto 0) := (others => '0');
    signal EN1_i, RF1_i, RF2_i, WF1_i, EN2_i, S1_i, S2_i, ALU1_i, ALU2_i, EN3_i, RM_i, WM_i, S3_i: std_logic := '0';

begin

        -- instance of DLX
       dut: cu_fsm
       port map (
                 -- OUTPUTS
                 EN1    => EN1_i,
                 RF1    => RF1_i,
                 RF2    => RF2_i,
                 WF1    => WF1_i,
                 EN2    => EN2_i,
                 S1     => S1_i,
                 S2     => S2_i,
                 ALU1   => ALU1_i,
                 ALU2   => ALU2_i,
                 EN3    => EN3_i,
                 RM     => RM_i,
                 WM     => WM_i,
                 S3     => S3_i,
                 -- INPUTS
                 OPCODE => cu_opcode_i,
                 FUNC   => cu_func_i,            
                 Clk    => Clock,
                 Rst    => Reset
               );

        Clock <= not Clock after 1 ns;
	Reset <= '0', '1' after 6 ns;


        CONTROL: process
        begin

        wait for 5 ns;

        -- ADD RS1,RS2,RD -> Rtype
        cu_opcode_i <= RTYPE;
        cu_func_i <= RTYPE_ADD;
        wait for 6 ns;

        -- SUB R1, R2, R3
        cu_opcode_i <= RTYPE;
        cu_func_i <= RTYPE_SUB;
        wait for 6 ns;

        -- AND R1, R2, R3
        cu_opcode_i <= RTYPE;
        cu_func_i <= RTYPE_AND;
        wait for 6 ns;

        -- OR R1, R2, R3
        cu_opcode_i <= RTYPE;
        cu_func_i <= RTYPE_OR;
        wait for 6 ns;
        
        -- ADDI1 R1, R2, INP1
        cu_opcode_i <= ITYPE_ADDI1;
        wait for 6 ns;

        -- SUBI1 R1, R2, INP1
        cu_opcode_i <= ITYPE_SUBI1;
        wait for 6 ns;

        -- ANDI1 R1, R2, INP1
        cu_opcode_i <= ITYPE_ANDI1;
        wait for 6 ns;

        -- ORI1 R1, R2, INP1
        cu_opcode_i <= ITYPE_ORI1;
        wait for 6 ns;

        -- ADDI2 R1, R2, INP2
        cu_opcode_i <= ITYPE_ADDI2;
        wait for 6 ns;

        -- SUBI2 R1, R2, INP2
        cu_opcode_i <= ITYPE_SUBI2;
        wait for 6 ns;

        -- ANDI2 R1, R2, INP2
        cu_opcode_i <= ITYPE_ANDI2;
        wait for 6 ns;

        -- ORI2 R1, R2, INP2
        cu_opcode_i <= ITYPE_ORI2;
        wait for 6 ns;

        -- MOV R1, R2
        cu_opcode_i <= ITYPE_MOV;
        wait for 6 ns;

        -- SREG1 R2, INP1
        cu_opcode_i <= ITYPE_SREG1;
        wait for 6 ns;

        -- SREG2 R2, INP2
        cu_opcode_i <= ITYPE_SREG2;
        wait for 6 ns;

        -- SMEM2 R1, R2, INP2
        cu_opcode_i <= ITYPE_SMEM2;
        wait for 6 ns;

        -- LMEM1 R1, R2, INP1
        cu_opcode_i <= ITYPE_LMEM1;
        wait for 6 ns;

        -- LMEM2 R1, R2, INP2
        cu_opcode_i <= ITYPE_LMEM2;
        wait for 6 ns;

        wait;
        end process;

end TEST;
