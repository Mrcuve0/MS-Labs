library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.myTypes.all;


entity cu_up is
  port (
    --OUTPUT SIGNALS
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
    --INPUT SIGNALS
    OPCODE : in  std_logic_vector(OP_CODE_SIZE-1 downto 0);
    FUNC   : in  std_logic_vector(FUNC_SIZE-1 downto 0);
    Clk    : in  std_logic;
    Rst    : in  std_logic
    );
end entity cu_up;


architecture cu_up_beh of cu_up is

  signal cw : std_logic_vector(CW_SIZE - 1 downto 0);  --control word with the output signals

  signal uPC    : integer range 0 to 78;               --number of raws of the memory
  signal ICount : integer range 0 to INSTRUCTIONS_EXECUTION_CYCLES;  --stages

  type mem_array is array (integer range 0 to MICROCODE_MEM_SIZE - 1) of std_logic_vector(CW_SIZE - 1 downto 0);
  signal microcode : mem_array := ("0000000000110",  --Itype --0 ADDI1
                                   "0000010011000",
                                   "1010000000100",
                                   "0000000000110",  --3 SUBI1
                                   "0000010111000",
                                   "1010000000100",
                                   "0000000000110",  --6 ANDI1
                                   "0000011011000",
                                   "1010000000100",
                                   "0000000000110",  --9 ORI1
                                   "0000011111000",
                                   "1010000000100",
                                   "0000000000101",  --12 ADDI2
                                   "0000010000000",
                                   "1010000000100",
                                   "0000000000101",  --15 SUBI2
                                   "0000010100000",
                                   "1010000000100",
                                   "0000000000101",  --18 ANDI2
                                   "0000011000000",
                                   "1010000000100",
                                   "0000000000101",  --21 ORI2
                                   "0000011100000",
                                   "1010000000100",
                                   "0000000000110",  --24 MOV
                                   "0000010011000",
                                   "1010000000100",
                                   "0000000000100",  --27 SREG1
                                   "0000010011000",
                                   "1010000000100",
                                   "0000000000100",  --30 SREG2
                                   "0000010000000",
                                   "1010000000100",
                                   "0000000000111",  --33 SMEM2
                                   "0000010001000",
                                   "0011000000000",
                                   "0000000000110",  --36 LMEM1
                                   "0000010011000",
                                   "1110100000100",
                                   "0000000000101",  --39 LMEM2
                                   "0000010000000",
                                   "1110100000100",
                                   "0000000000000",  --RESET --42
                                   "0000000000000",  --void microcode
                                   "0000000000000",
                                   "0000000000000",  --45
                                   "0000000000000",
                                   "0000000000000",
                                   "0000000000000",
                                   "0000000000000",
                                   "0000000000000",  --50
                                   "0000000000000",
                                   "0000000000000",
                                   "0000000000000",
                                   "0000000000000",
                                   "0000000000000",  --55
                                   "0000000000000",
                                   "0000000000000",
                                   "0000000000000",
                                   "0000000000000",
                                   "0000000000000",  --60
                                   "0000000000000",
                                   "0000000000000",
                                   "0000000000000",
                                   "0000000000111",  --Rtype --64 ADD
                                   "0000010010000",
                                   "1010000000100",
                                   "0000000000111",  --67 SUB
                                   "0000010110000",
                                   "1010000000100",
                                   "0000000000111",  --70 AND
                                   "0000011010000",
                                   "1010000000100",
                                   "0000000000111",  --73 OR
                                   "0000011110000",
                                   "1010000000100",
                                   "0000000000111",  --76 --NOP
                                   "0000011110000",
                                   "0010000000000"
                                   );

begin  -- architecture cu_up_beh

  cw <= microcode(uPC);

  rf1  <= cw(0);
  rf2  <= cw(1);
  en1  <= cw(2);
  s1   <= cw(3);
  s2   <= cw(4);
  alu1 <= cw(5);
  alu2 <= cw(6);
  en2  <= cw(7);
  rm   <= cw(8);
  wm   <= cw(9);
  en3  <= cw(10);
  s3   <= cw(11);
  wf1  <= cw(12);

  uPC_Proc : process (Clk, Rst)
  begin  -- process uPC_Proc
    if Rst = '0' then                   -- asynchronous reset (active low)
      uPC    <= 42;
      ICount <= 0;
    elsif Clk'event and Clk = '1' then  -- rising clock edge
      
      if (ICount < 1) then
                                        -- in the first stage after the reset
                                        -- it is necessary to
                                        -- laod the address of the instruction
                                        -- in the microcode memory
        
        uPC    <= conv_integer(FUNC & OPCODE);  -- the addresses are composed
        ICount <= ICount + 1;                   -- by FUNC & OPCODE to reduce
                                                -- the microcode memory so for
                                                -- Itype instructions are used
                                                -- the first 42 raws of the
                                                -- memory with FUNC equal to 0
                                                -- and OPCODE 0-39. For
                                                -- RTYPE instructions are used
                                                -- the memory raws from 64 to
                                                -- 78. For RTYPE FUNC is
                                                -- equal to 1 and OPCODE 0-12.
        
      elsif (ICount < INSTRUCTIONS_EXECUTION_CYCLES) then  -- for the other
         uPC <= uPC + 1;                                   -- stages uPC is
         ICount <= ICount + 1;                             -- incremented of 1
                                                           -- and also the ICount
       
       
      else                                      -- if ICount is bigger than the total
      ICount <= 1;                              -- number of stages it means that there
      uPC    <= conv_integer(FUNC & OPCODE);    -- is another inbstruction and iCount
                                                -- returns to 1 at the
                                                -- first stage and so
                                                -- the uPC is setted with the address
                                                -- of the following instruction
         
        
      end if;
    end if;
  end process uPC_Proc;

end architecture cu_up_beh;
