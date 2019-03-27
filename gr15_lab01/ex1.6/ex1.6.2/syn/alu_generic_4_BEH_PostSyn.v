
module ALU_N4 ( .FUNC({\FUNC[3] , \FUNC[2] , \FUNC[1] , \FUNC[0] }), DATA1, 
        DATA2, OUTALU );
  input [3:0] DATA1;
  input [3:0] DATA2;
  output [3:0] OUTALU;
  input \FUNC[3] , \FUNC[2] , \FUNC[1] , \FUNC[0] ;
  wire   N68, N69, N70, N71, N72, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186;
  wire   [3:0] FUNC;

  DLH_X1 \OUTALU_reg[3]  ( .G(N68), .D(N72), .Q(OUTALU[3]) );
  DLH_X1 \OUTALU_reg[2]  ( .G(N68), .D(N71), .Q(OUTALU[2]) );
  DLH_X1 \OUTALU_reg[1]  ( .G(N68), .D(N70), .Q(OUTALU[1]) );
  DLH_X1 \OUTALU_reg[0]  ( .G(N68), .D(N69), .Q(OUTALU[0]) );
  NAND2_X1 U101 ( .A1(n106), .A2(n107), .ZN(N72) );
  NAND3_X1 U102 ( .A1(n108), .A2(n109), .A3(DATA1[2]), .ZN(n107) );
  MUX2_X1 U103 ( .A(n110), .B(n111), .S(FUNC[2]), .Z(n106) );
  OAI221_X1 U104 ( .B1(DATA2[3]), .B2(DATA1[3]), .C1(n112), .C2(n109), .A(n113), .ZN(n111) );
  AOI21_X1 U105 ( .B1(n114), .B2(n115), .A(n116), .ZN(n110) );
  MUX2_X1 U106 ( .A(n117), .B(n118), .S(FUNC[1]), .Z(n116) );
  MUX2_X1 U107 ( .A(n119), .B(n120), .S(FUNC[0]), .Z(n118) );
  AND2_X1 U108 ( .A1(DATA2[3]), .A2(DATA1[3]), .ZN(n120) );
  AND3_X1 U109 ( .A1(DATA2[0]), .A2(n121), .A3(DATA1[1]), .ZN(n119) );
  NOR2_X1 U110 ( .A1(FUNC[3]), .A2(n122), .ZN(n117) );
  XNOR2_X1 U111 ( .A(n112), .B(n123), .ZN(n122) );
  XOR2_X1 U112 ( .A(n124), .B(FUNC[0]), .Z(n123) );
  OAI22_X1 U113 ( .A1(n125), .A2(n126), .B1(n127), .B2(n128), .ZN(n124) );
  INV_X1 U114 ( .A(DATA1[2]), .ZN(n128) );
  AND2_X1 U115 ( .A1(n126), .A2(n125), .ZN(n127) );
  XOR2_X1 U116 ( .A(DATA2[3]), .B(DATA1[3]), .Z(n112) );
  MUX2_X1 U117 ( .A(DATA1[2]), .B(DATA1[0]), .S(FUNC[0]), .Z(n114) );
  NAND3_X1 U118 ( .A1(n129), .A2(n130), .A3(n131), .ZN(N71) );
  MUX2_X1 U119 ( .A(n132), .B(n133), .S(DATA1[2]), .Z(n131) );
  AOI221_X1 U120 ( .B1(n134), .B2(DATA2[2]), .C1(n135), .C2(n136), .A(n137), 
        .ZN(n133) );
  AOI21_X1 U121 ( .B1(DATA2[2]), .B2(FUNC[0]), .A(n138), .ZN(n137) );
  XOR2_X1 U122 ( .A(n125), .B(n139), .Z(n136) );
  INV_X1 U123 ( .A(n140), .ZN(n134) );
  AOI22_X1 U124 ( .A1(n141), .A2(n135), .B1(n142), .B2(DATA2[2]), .ZN(n132) );
  XOR2_X1 U125 ( .A(n125), .B(n126), .Z(n141) );
  INV_X1 U126 ( .A(n139), .ZN(n126) );
  XOR2_X1 U127 ( .A(DATA2[2]), .B(FUNC[0]), .Z(n139) );
  AOI21_X1 U128 ( .B1(n143), .B2(n144), .A(n145), .ZN(n125) );
  AOI21_X1 U129 ( .B1(n146), .B2(n147), .A(n148), .ZN(n145) );
  NAND3_X1 U130 ( .A1(DATA1[3]), .A2(n149), .A3(FUNC[0]), .ZN(n130) );
  OAI21_X1 U131 ( .B1(n150), .B2(n151), .A(DATA1[1]), .ZN(n129) );
  NOR3_X1 U132 ( .A1(n152), .A2(DATA1[0]), .A3(n153), .ZN(n150) );
  OAI211_X1 U133 ( .C1(n154), .C2(n155), .A(n156), .B(n157), .ZN(N70) );
  MUX2_X1 U134 ( .A(n158), .B(n159), .S(DATA1[1]), .Z(n157) );
  AOI211_X1 U135 ( .C1(n160), .C2(n135), .A(n161), .B(n162), .ZN(n159) );
  NOR3_X1 U136 ( .A1(n152), .A2(n121), .A3(n163), .ZN(n162) );
  OAI22_X1 U137 ( .A1(n153), .A2(n140), .B1(n164), .B2(n138), .ZN(n161) );
  NOR2_X1 U138 ( .A1(n109), .A2(n153), .ZN(n164) );
  XOR2_X1 U139 ( .A(n147), .B(n144), .Z(n160) );
  INV_X1 U140 ( .A(n146), .ZN(n144) );
  AOI222_X1 U141 ( .A1(n142), .A2(DATA2[1]), .B1(n135), .B2(n165), .C1(n166), 
        .C2(n121), .ZN(n158) );
  NOR2_X1 U142 ( .A1(n153), .A2(n155), .ZN(n121) );
  INV_X1 U143 ( .A(n152), .ZN(n166) );
  XOR2_X1 U144 ( .A(n146), .B(n147), .Z(n165) );
  INV_X1 U145 ( .A(n143), .ZN(n147) );
  XNOR2_X1 U146 ( .A(n153), .B(FUNC[0]), .ZN(n143) );
  INV_X1 U147 ( .A(DATA2[1]), .ZN(n153) );
  OAI21_X1 U148 ( .B1(FUNC[0]), .B2(n167), .A(n168), .ZN(n146) );
  OAI21_X1 U149 ( .B1(n169), .B2(n109), .A(n155), .ZN(n168) );
  INV_X1 U150 ( .A(n170), .ZN(n135) );
  INV_X1 U151 ( .A(n138), .ZN(n142) );
  NAND3_X1 U152 ( .A1(DATA1[2]), .A2(n149), .A3(FUNC[0]), .ZN(n156) );
  INV_X1 U153 ( .A(n151), .ZN(n154) );
  OAI22_X1 U154 ( .A1(FUNC[0]), .A2(n171), .B1(n152), .B2(n172), .ZN(n151) );
  NAND2_X1 U155 ( .A1(DATA2[1]), .A2(n163), .ZN(n172) );
  OAI221_X1 U156 ( .B1(n148), .B2(n173), .C1(n174), .C2(n170), .A(n175), .ZN(
        N69) );
  MUX2_X1 U157 ( .A(n176), .B(n177), .S(FUNC[2]), .Z(n175) );
  NAND2_X1 U158 ( .A1(n178), .A2(n113), .ZN(n177) );
  MUX2_X1 U159 ( .A(DATA1[0]), .B(n179), .S(DATA2[0]), .Z(n178) );
  NAND2_X1 U160 ( .A1(DATA1[0]), .A2(FUNC[0]), .ZN(n179) );
  AOI21_X1 U161 ( .B1(n180), .B2(n115), .A(n181), .ZN(n176) );
  NOR3_X1 U162 ( .A1(n163), .A2(n113), .A3(n155), .ZN(n181) );
  MUX2_X1 U163 ( .A(DATA1[3]), .B(DATA1[1]), .S(FUNC[0]), .Z(n180) );
  NAND2_X1 U164 ( .A1(n182), .A2(n113), .ZN(n170) );
  XNOR2_X1 U165 ( .A(n183), .B(n169), .ZN(n174) );
  INV_X1 U166 ( .A(n167), .ZN(n169) );
  XOR2_X1 U167 ( .A(n163), .B(n109), .Z(n167) );
  INV_X1 U168 ( .A(DATA2[0]), .ZN(n163) );
  XOR2_X1 U169 ( .A(n155), .B(FUNC[0]), .Z(n183) );
  INV_X1 U170 ( .A(DATA1[0]), .ZN(n155) );
  NAND2_X1 U171 ( .A1(FUNC[0]), .A2(n108), .ZN(n173) );
  INV_X1 U172 ( .A(DATA1[1]), .ZN(n148) );
  NAND4_X1 U173 ( .A1(n140), .A2(n138), .A3(n152), .A4(n184), .ZN(N68) );
  AOI21_X1 U174 ( .B1(n113), .B2(n185), .A(n149), .ZN(n184) );
  INV_X1 U175 ( .A(n171), .ZN(n149) );
  AOI22_X1 U176 ( .A1(n185), .A2(n115), .B1(n186), .B2(n108), .ZN(n171) );
  NOR2_X1 U177 ( .A1(n185), .A2(n113), .ZN(n108) );
  NOR2_X1 U178 ( .A1(n186), .A2(FUNC[1]), .ZN(n115) );
  INV_X1 U179 ( .A(FUNC[2]), .ZN(n185) );
  NAND3_X1 U180 ( .A1(FUNC[1]), .A2(n109), .A3(n182), .ZN(n152) );
  INV_X1 U181 ( .A(FUNC[0]), .ZN(n109) );
  NAND3_X1 U182 ( .A1(n113), .A2(n186), .A3(FUNC[2]), .ZN(n138) );
  INV_X1 U183 ( .A(FUNC[3]), .ZN(n186) );
  INV_X1 U184 ( .A(FUNC[1]), .ZN(n113) );
  NAND3_X1 U185 ( .A1(FUNC[0]), .A2(FUNC[1]), .A3(n182), .ZN(n140) );
  NOR2_X1 U186 ( .A1(FUNC[3]), .A2(FUNC[2]), .ZN(n182) );
endmodule

