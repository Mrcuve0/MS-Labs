
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
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI221_X1
      port( B1, B2, C1, C2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI222_X1
      port( A1, A2, B1, B2, C1, C2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI33_X1
      port( A1, A2, A3, B1, B2, B3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DLH_X1
      port( G, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port, N82, N83, N84, 
      N85, N86, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, 
      n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150, 
      n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, 
      n163, n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, 
      n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, 
      n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, 
      n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, 
      n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, 
      n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233 : 
      std_logic;

begin
   (FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port) <= 
      TYPE_OP_to_std_logic_vector(FUNC);
   
   OUTALU_reg_3_inst : DLH_X1 port map( G => N82, D => N86, Q => OUTALU(3));
   OUTALU_reg_2_inst : DLH_X1 port map( G => N82, D => N85, Q => OUTALU(2));
   OUTALU_reg_1_inst : DLH_X1 port map( G => N82, D => N84, Q => OUTALU(1));
   OUTALU_reg_0_inst : DLH_X1 port map( G => N82, D => N83, Q => OUTALU(0));
   U120 : OAI211_X1 port map( C1 => n129, C2 => n130, A => n131, B => n132, ZN 
                           => N86);
   U121 : AOI222_X1 port map( A1 => DATA1(3), A2 => n133, B1 => n134, B2 => 
                           n135, C1 => n136, C2 => n137, ZN => n132);
   U122 : XOR2_X1 port map( A => n138, B => n137, Z => n134);
   U123 : XNOR2_X1 port map( A => DATA2(3), B => n139, ZN => n137);
   U124 : XOR2_X1 port map( A => n140, B => n141, Z => n138);
   U125 : AOI22_X1 port map( A1 => DATA1(2), A2 => n142, B1 => n143, B2 => n144
                           , ZN => n141);
   U126 : OR2_X1 port map( A1 => n144, A2 => n143, ZN => n142);
   U127 : AOI22_X1 port map( A1 => DATA2(1), A2 => n145, B1 => DATA2(3), B2 => 
                           n146, ZN => n131);
   U128 : OAI21_X1 port map( B1 => n147, B2 => n139, A => n148, ZN => n146);
   U129 : INV_X1 port map( A => DATA1(3), ZN => n139);
   U130 : OAI22_X1 port map( A1 => n149, A2 => n150, B1 => n151, B2 => n152, ZN
                           => n145);
   U131 : INV_X1 port map( A => n153, ZN => n149);
   U132 : AOI21_X1 port map( B1 => n154, B2 => DATA1(2), A => n155, ZN => n129)
                           ;
   U133 : OAI33_X1 port map( A1 => n150, A2 => DATA2(1), A3 => n156, B1 => n157
                           , B2 => n158, B3 => n159, ZN => n155);
   U134 : NAND3_X1 port map( A1 => n160, A2 => n161, A3 => n162, ZN => N85);
   U135 : AOI221_X1 port map( B1 => n154, B2 => n163, C1 => DATA2(1), C2 => 
                           n164, A => n165, ZN => n162);
   U136 : AOI211_X1 port map( C1 => n151, C2 => n150, A => n159, B => DATA2(0),
                           ZN => n165);
   U137 : OAI21_X1 port map( B1 => n166, B2 => n158, A => n167, ZN => n164);
   U138 : NAND3_X1 port map( A1 => DATA1(3), A2 => DATA2(0), A3 => n168, ZN => 
                           n167);
   U139 : AOI21_X1 port map( B1 => n169, B2 => n156, A => n170, ZN => n166);
   U140 : MUX2_X1 port map( A => n171, B => n172, S => DATA1(2), Z => n161);
   U141 : AOI211_X1 port map( C1 => n173, C2 => n135, A => n174, B => n175, ZN 
                           => n172);
   U142 : MUX2_X1 port map( A => n136, B => n176, S => DATA2(2), Z => n174);
   U143 : XOR2_X1 port map( A => n143, B => n177, Z => n173);
   U144 : AOI22_X1 port map( A1 => n178, A2 => n135, B1 => n136, B2 => DATA2(2)
                           , ZN => n171);
   U145 : XOR2_X1 port map( A => n143, B => n144, Z => n178);
   U146 : INV_X1 port map( A => n177, ZN => n144);
   U147 : XOR2_X1 port map( A => n140, B => DATA2(2), Z => n177);
   U148 : AOI21_X1 port map( B1 => n179, B2 => n180, A => n181, ZN => n143);
   U149 : INV_X1 port map( A => n182, ZN => n181);
   U150 : OAI21_X1 port map( B1 => n180, B2 => n179, A => n158, ZN => n182);
   U151 : AOI22_X1 port map( A1 => n183, A2 => n184, B1 => n175, B2 => DATA2(2)
                           , ZN => n160);
   U152 : OAI211_X1 port map( C1 => n152, C2 => n185, A => n186, B => n187, ZN 
                           => N84);
   U153 : AOI222_X1 port map( A1 => n183, A2 => n153, B1 => DATA2(1), B2 => 
                           n188, C1 => n189, C2 => n170, ZN => n187);
   U154 : INV_X1 port map( A => n190, ZN => n170);
   U155 : MUX2_X1 port map( A => n150, B => n157, S => n130, Z => n190);
   U156 : NAND3_X1 port map( A1 => n191, A2 => n148, A3 => n192, ZN => n188);
   U157 : MUX2_X1 port map( A => n193, B => n194, S => DATA2(0), Z => n192);
   U158 : NAND2_X1 port map( A1 => n168, A2 => DATA1(2), ZN => n194);
   U159 : OAI21_X1 port map( B1 => n168, B2 => n195, A => DATA1(3), ZN => n193)
                           ;
   U160 : MUX2_X1 port map( A => n196, B => n147, S => DATA1(1), Z => n191);
   U161 : MUX2_X1 port map( A => DATA1(1), B => DATA1(2), S => DATA2(0), Z => 
                           n153);
   U162 : MUX2_X1 port map( A => n197, B => n198, S => DATA1(1), Z => n186);
   U163 : NOR3_X1 port map( A1 => n199, A2 => n175, A3 => n200, ZN => n198);
   U164 : NOR3_X1 port map( A1 => n157, A2 => n189, A3 => n130, ZN => n200);
   U165 : INV_X1 port map( A => n148, ZN => n175);
   U166 : OAI22_X1 port map( A1 => DATA2(1), A2 => n196, B1 => n201, B2 => n202
                           , ZN => n199);
   U167 : AOI22_X1 port map( A1 => n202, A2 => n135, B1 => n169, B2 => n189, ZN
                           => n197);
   U168 : INV_X1 port map( A => n159, ZN => n189);
   U169 : NAND2_X1 port map( A1 => DATA2(1), A2 => DATA1(0), ZN => n159);
   U170 : XOR2_X1 port map( A => n179, B => n180, Z => n202);
   U171 : XNOR2_X1 port map( A => n140, B => n203, ZN => n180);
   U172 : OAI22_X1 port map( A1 => n204, A2 => n205, B1 => DATA1(0), B2 => n206
                           , ZN => n179);
   U173 : AND2_X1 port map( A1 => n205, A2 => n204, ZN => n206);
   U174 : INV_X1 port map( A => n154, ZN => n185);
   U175 : MUX2_X1 port map( A => n158, B => n156, S => DATA2(0), Z => n152);
   U176 : INV_X1 port map( A => DATA1(0), ZN => n156);
   U177 : INV_X1 port map( A => DATA1(1), ZN => n158);
   U178 : OAI221_X1 port map( B1 => n207, B2 => n203, C1 => n208, C2 => n130, A
                           => n209, ZN => N83);
   U179 : MUX2_X1 port map( A => n210, B => n211, S => DATA1(0), Z => n209);
   U180 : AOI221_X1 port map( B1 => n212, B2 => n135, C1 => n136, C2 => n130, A
                           => n133, ZN => n211);
   U181 : NAND2_X1 port map( A1 => n148, A2 => n213, ZN => n133);
   U182 : OAI21_X1 port map( B1 => n154, B2 => n183, A => n130, ZN => n213);
   U183 : NOR2_X1 port map( A1 => n151, A2 => DATA2(1), ZN => n154);
   U184 : AOI21_X1 port map( B1 => n214, B2 => n215, A => n168, ZN => n151);
   U185 : NOR2_X1 port map( A1 => DATA2(2), A2 => DATA2(3), ZN => n215);
   U186 : INV_X1 port map( A => n196, ZN => n136);
   U187 : OR2_X1 port map( A1 => n212, A2 => n201, ZN => n210);
   U188 : XNOR2_X1 port map( A => n205, B => n204, ZN => n212);
   U189 : INV_X1 port map( A => n140, ZN => n204);
   U190 : XNOR2_X1 port map( A => n140, B => DATA2(0), ZN => n205);
   U191 : AOI211_X1 port map( C1 => n183, C2 => DATA1(1), A => n216, B => n217,
                           ZN => n208);
   U192 : INV_X1 port map( A => n218, ZN => n217);
   U193 : MUX2_X1 port map( A => n196, B => n219, S => DATA1(0), Z => n218);
   U194 : OAI21_X1 port map( B1 => n220, B2 => n221, A => n148, ZN => n216);
   U195 : NAND2_X1 port map( A1 => DATA1(3), A2 => n203, ZN => n221);
   U196 : INV_X1 port map( A => n168, ZN => n220);
   U197 : AND2_X1 port map( A1 => n195, A2 => n203, ZN => n183);
   U198 : INV_X1 port map( A => DATA2(1), ZN => n203);
   U199 : AOI22_X1 port map( A1 => n184, A2 => n195, B1 => n168, B2 => n163, ZN
                           => n207);
   U200 : MUX2_X1 port map( A => DATA1(1), B => DATA1(2), S => n130, Z => n163)
                           ;
   U201 : OAI21_X1 port map( B1 => n222, B2 => n223, A => n150, ZN => n195);
   U202 : OR2_X1 port map( A1 => DATA2(2), A2 => DATA2(3), ZN => n223);
   U203 : MUX2_X1 port map( A => DATA1(3), B => DATA1(2), S => n130, Z => n184)
                           ;
   U204 : INV_X1 port map( A => DATA2(0), ZN => n130);
   U205 : NAND4_X1 port map( A1 => n201, A2 => n219, A3 => n224, A4 => n225, ZN
                           => N82);
   U206 : AND4_X1 port map( A1 => n196, A2 => n148, A3 => n150, A4 => n222, ZN 
                           => n225);
   U207 : NAND3_X1 port map( A1 => FUNC_2_port, A2 => FUNC_1_port, A3 => n226, 
                           ZN => n222);
   U208 : NAND3_X1 port map( A1 => FUNC_3_port, A2 => n227, A3 => FUNC_0_port, 
                           ZN => n150);
   U209 : NAND3_X1 port map( A1 => n228, A2 => n229, A3 => FUNC_2_port, ZN => 
                           n148);
   U210 : NAND3_X1 port map( A1 => FUNC_2_port, A2 => n229, A3 => n226, ZN => 
                           n196);
   U211 : NOR2_X1 port map( A1 => n214, A2 => n168, ZN => n224);
   U212 : NOR3_X1 port map( A1 => n230, A2 => FUNC_0_port, A3 => n231, ZN => 
                           n168);
   U213 : NOR3_X1 port map( A1 => n229, A2 => n232, A3 => n233, ZN => n214);
   U214 : NOR2_X1 port map( A1 => n169, A2 => n176, ZN => n219);
   U215 : INV_X1 port map( A => n147, ZN => n176);
   U216 : NAND3_X1 port map( A1 => FUNC_1_port, A2 => n233, A3 => n226, ZN => 
                           n147);
   U217 : INV_X1 port map( A => n157, ZN => n169);
   U218 : NAND3_X1 port map( A1 => n228, A2 => n233, A3 => FUNC_1_port, ZN => 
                           n157);
   U219 : INV_X1 port map( A => n135, ZN => n201);
   U220 : OAI21_X1 port map( B1 => n232, B2 => n230, A => n140, ZN => n135);
   U221 : NAND2_X1 port map( A1 => n226, A2 => n227, ZN => n140);
   U222 : INV_X1 port map( A => n230, ZN => n227);
   U223 : AND2_X1 port map( A1 => FUNC_0_port, A2 => n231, ZN => n226);
   U224 : INV_X1 port map( A => FUNC_3_port, ZN => n231);
   U225 : NAND2_X1 port map( A1 => n229, A2 => n233, ZN => n230);
   U226 : INV_X1 port map( A => FUNC_2_port, ZN => n233);
   U227 : INV_X1 port map( A => FUNC_1_port, ZN => n229);
   U228 : INV_X1 port map( A => n228, ZN => n232);
   U229 : NOR2_X1 port map( A1 => FUNC_0_port, A2 => FUNC_3_port, ZN => n228);

end SYN_BEHAVIOR;
