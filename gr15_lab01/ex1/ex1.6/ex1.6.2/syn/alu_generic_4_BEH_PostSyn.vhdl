
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ALU_N4 is

-- define attributes
attribute ENUM_ENCODING : STRING;

-- define any necessary types
type TYPE_OP is (ADD, SUB, MULT, BITAND, BITOR, BITXOR, FUNCLSL, FUNCLSR, 
   FUNCRL, FUNCRR);
attribute ENUM_ENCODING of TYPE_OP : type is 
   "0000 0001 0010 0011 0100 0101 0110 0111 1000 1001";
   
   -- Declarations for conversion functions.
   function TYPE_OP_to_std_logic_vector(arg : in TYPE_OP) return 
               std_logic_vector;

end CONV_PACK_ALU_N4;

package body CONV_PACK_ALU_N4 is
   
   -- enum type to std_logic_vector function
   function TYPE_OP_to_std_logic_vector(arg : in TYPE_OP) return 
   std_logic_vector is
   -- synopsys built_in SYN_FEED_THRU;
   begin
      case arg is
         when ADD => return "0000";
         when SUB => return "0001";
         when MULT => return "0010";
         when BITAND => return "0011";
         when BITOR => return "0100";
         when BITXOR => return "0101";
         when FUNCLSL => return "0110";
         when FUNCLSR => return "0111";
         when FUNCRL => return "1000";
         when FUNCRR => return "1001";
         when others => assert FALSE -- this should not happen.
               report "un-convertible value"
               severity warning;
               return "0000";
      end case;
   end;

end CONV_PACK_ALU_N4;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ALU_N4.all;

entity ALU_N4 is

   port( FUNC : in TYPE_OP;  DATA1, DATA2 : in std_logic_vector (3 downto 0);  
         OUTALU : out std_logic_vector (3 downto 0));

end ALU_N4;

architecture SYN_BEHAVIOR of ALU_N4 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DLH_X1
      port( G, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port, N68, N69, N70, 
      N71, N72, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, 
      n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, 
      n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, 
      n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, 
      n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, 
      n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, 
      n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186 : 
      std_logic;

begin
   (FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port) <= 
      TYPE_OP_to_std_logic_vector(FUNC);
   
   OUTALU_reg_3_inst : DLH_X1 port map( G => N68, D => N72, Q => OUTALU(3));
   OUTALU_reg_2_inst : DLH_X1 port map( G => N68, D => N71, Q => OUTALU(2));
   OUTALU_reg_1_inst : DLH_X1 port map( G => N68, D => N70, Q => OUTALU(1));
   OUTALU_reg_0_inst : DLH_X1 port map( G => N68, D => N69, Q => OUTALU(0));
   U101 : NAND2_X1 port map( A1 => n106, A2 => n107, ZN => N72);
   U102 : NAND3_X1 port map( A1 => n108, A2 => n109, A3 => DATA1(2), ZN => n107
                           );
   U103 : MUX2_X1 port map( A => n110, B => n111, S => FUNC_2_port, Z => n106);
   U104 : OAI221_X1 port map( B1 => DATA2(3), B2 => DATA1(3), C1 => n112, C2 =>
                           n109, A => n113, ZN => n111);
   U105 : AOI21_X1 port map( B1 => n114, B2 => n115, A => n116, ZN => n110);
   U106 : MUX2_X1 port map( A => n117, B => n118, S => FUNC_1_port, Z => n116);
   U107 : MUX2_X1 port map( A => n119, B => n120, S => FUNC_0_port, Z => n118);
   U108 : AND2_X1 port map( A1 => DATA2(3), A2 => DATA1(3), ZN => n120);
   U109 : AND3_X1 port map( A1 => DATA2(0), A2 => n121, A3 => DATA1(1), ZN => 
                           n119);
   U110 : NOR2_X1 port map( A1 => FUNC_3_port, A2 => n122, ZN => n117);
   U111 : XNOR2_X1 port map( A => n112, B => n123, ZN => n122);
   U112 : XOR2_X1 port map( A => n124, B => FUNC_0_port, Z => n123);
   U113 : OAI22_X1 port map( A1 => n125, A2 => n126, B1 => n127, B2 => n128, ZN
                           => n124);
   U114 : INV_X1 port map( A => DATA1(2), ZN => n128);
   U115 : AND2_X1 port map( A1 => n126, A2 => n125, ZN => n127);
   U116 : XOR2_X1 port map( A => DATA2(3), B => DATA1(3), Z => n112);
   U117 : MUX2_X1 port map( A => DATA1(2), B => DATA1(0), S => FUNC_0_port, Z 
                           => n114);
   U118 : NAND3_X1 port map( A1 => n129, A2 => n130, A3 => n131, ZN => N71);
   U119 : MUX2_X1 port map( A => n132, B => n133, S => DATA1(2), Z => n131);
   U120 : AOI221_X1 port map( B1 => n134, B2 => DATA2(2), C1 => n135, C2 => 
                           n136, A => n137, ZN => n133);
   U121 : AOI21_X1 port map( B1 => DATA2(2), B2 => FUNC_0_port, A => n138, ZN 
                           => n137);
   U122 : XOR2_X1 port map( A => n125, B => n139, Z => n136);
   U123 : INV_X1 port map( A => n140, ZN => n134);
   U124 : AOI22_X1 port map( A1 => n141, A2 => n135, B1 => n142, B2 => DATA2(2)
                           , ZN => n132);
   U125 : XOR2_X1 port map( A => n125, B => n126, Z => n141);
   U126 : INV_X1 port map( A => n139, ZN => n126);
   U127 : XOR2_X1 port map( A => DATA2(2), B => FUNC_0_port, Z => n139);
   U128 : AOI21_X1 port map( B1 => n143, B2 => n144, A => n145, ZN => n125);
   U129 : AOI21_X1 port map( B1 => n146, B2 => n147, A => n148, ZN => n145);
   U130 : NAND3_X1 port map( A1 => DATA1(3), A2 => n149, A3 => FUNC_0_port, ZN 
                           => n130);
   U131 : OAI21_X1 port map( B1 => n150, B2 => n151, A => DATA1(1), ZN => n129)
                           ;
   U132 : NOR3_X1 port map( A1 => n152, A2 => DATA1(0), A3 => n153, ZN => n150)
                           ;
   U133 : OAI211_X1 port map( C1 => n154, C2 => n155, A => n156, B => n157, ZN 
                           => N70);
   U134 : MUX2_X1 port map( A => n158, B => n159, S => DATA1(1), Z => n157);
   U135 : AOI211_X1 port map( C1 => n160, C2 => n135, A => n161, B => n162, ZN 
                           => n159);
   U136 : NOR3_X1 port map( A1 => n152, A2 => n121, A3 => n163, ZN => n162);
   U137 : OAI22_X1 port map( A1 => n153, A2 => n140, B1 => n164, B2 => n138, ZN
                           => n161);
   U138 : NOR2_X1 port map( A1 => n109, A2 => n153, ZN => n164);
   U139 : XOR2_X1 port map( A => n147, B => n144, Z => n160);
   U140 : INV_X1 port map( A => n146, ZN => n144);
   U141 : AOI222_X1 port map( A1 => n142, A2 => DATA2(1), B1 => n135, B2 => 
                           n165, C1 => n166, C2 => n121, ZN => n158);
   U142 : NOR2_X1 port map( A1 => n153, A2 => n155, ZN => n121);
   U143 : INV_X1 port map( A => n152, ZN => n166);
   U144 : XOR2_X1 port map( A => n146, B => n147, Z => n165);
   U145 : INV_X1 port map( A => n143, ZN => n147);
   U146 : XNOR2_X1 port map( A => n153, B => FUNC_0_port, ZN => n143);
   U147 : INV_X1 port map( A => DATA2(1), ZN => n153);
   U148 : OAI21_X1 port map( B1 => FUNC_0_port, B2 => n167, A => n168, ZN => 
                           n146);
   U149 : OAI21_X1 port map( B1 => n169, B2 => n109, A => n155, ZN => n168);
   U150 : INV_X1 port map( A => n170, ZN => n135);
   U151 : INV_X1 port map( A => n138, ZN => n142);
   U152 : NAND3_X1 port map( A1 => DATA1(2), A2 => n149, A3 => FUNC_0_port, ZN 
                           => n156);
   U153 : INV_X1 port map( A => n151, ZN => n154);
   U154 : OAI22_X1 port map( A1 => FUNC_0_port, A2 => n171, B1 => n152, B2 => 
                           n172, ZN => n151);
   U155 : NAND2_X1 port map( A1 => DATA2(1), A2 => n163, ZN => n172);
   U156 : OAI221_X1 port map( B1 => n148, B2 => n173, C1 => n174, C2 => n170, A
                           => n175, ZN => N69);
   U157 : MUX2_X1 port map( A => n176, B => n177, S => FUNC_2_port, Z => n175);
   U158 : NAND2_X1 port map( A1 => n178, A2 => n113, ZN => n177);
   U159 : MUX2_X1 port map( A => DATA1(0), B => n179, S => DATA2(0), Z => n178)
                           ;
   U160 : NAND2_X1 port map( A1 => DATA1(0), A2 => FUNC_0_port, ZN => n179);
   U161 : AOI21_X1 port map( B1 => n180, B2 => n115, A => n181, ZN => n176);
   U162 : NOR3_X1 port map( A1 => n163, A2 => n113, A3 => n155, ZN => n181);
   U163 : MUX2_X1 port map( A => DATA1(3), B => DATA1(1), S => FUNC_0_port, Z 
                           => n180);
   U164 : NAND2_X1 port map( A1 => n182, A2 => n113, ZN => n170);
   U165 : XNOR2_X1 port map( A => n183, B => n169, ZN => n174);
   U166 : INV_X1 port map( A => n167, ZN => n169);
   U167 : XOR2_X1 port map( A => n163, B => n109, Z => n167);
   U168 : INV_X1 port map( A => DATA2(0), ZN => n163);
   U169 : XOR2_X1 port map( A => n155, B => FUNC_0_port, Z => n183);
   U170 : INV_X1 port map( A => DATA1(0), ZN => n155);
   U171 : NAND2_X1 port map( A1 => FUNC_0_port, A2 => n108, ZN => n173);
   U172 : INV_X1 port map( A => DATA1(1), ZN => n148);
   U173 : NAND4_X1 port map( A1 => n140, A2 => n138, A3 => n152, A4 => n184, ZN
                           => N68);
   U174 : AOI21_X1 port map( B1 => n113, B2 => n185, A => n149, ZN => n184);
   U175 : INV_X1 port map( A => n171, ZN => n149);
   U176 : AOI22_X1 port map( A1 => n185, A2 => n115, B1 => n186, B2 => n108, ZN
                           => n171);
   U177 : NOR2_X1 port map( A1 => n185, A2 => n113, ZN => n108);
   U178 : NOR2_X1 port map( A1 => n186, A2 => FUNC_1_port, ZN => n115);
   U179 : INV_X1 port map( A => FUNC_2_port, ZN => n185);
   U180 : NAND3_X1 port map( A1 => FUNC_1_port, A2 => n109, A3 => n182, ZN => 
                           n152);
   U181 : INV_X1 port map( A => FUNC_0_port, ZN => n109);
   U182 : NAND3_X1 port map( A1 => n113, A2 => n186, A3 => FUNC_2_port, ZN => 
                           n138);
   U183 : INV_X1 port map( A => FUNC_3_port, ZN => n186);
   U184 : INV_X1 port map( A => FUNC_1_port, ZN => n113);
   U185 : NAND3_X1 port map( A1 => FUNC_0_port, A2 => FUNC_1_port, A3 => n182, 
                           ZN => n140);
   U186 : NOR2_X1 port map( A1 => FUNC_3_port, A2 => FUNC_2_port, ZN => n182);

end SYN_BEHAVIOR;
