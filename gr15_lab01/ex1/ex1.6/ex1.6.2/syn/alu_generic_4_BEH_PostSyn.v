
module ALU_N4 ( .FUNC({\FUNC[3] , \FUNC[2] , \FUNC[1] , \FUNC[0] }), DATA1, 
        DATA2, OUTALU );
  input [3:0] DATA1;
  input [3:0] DATA2;
  output [3:0] OUTALU;
  input \FUNC[3] , \FUNC[2] , \FUNC[1] , \FUNC[0] ;
  wire   N82, N83, N84, N85, N86, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174, n175, n176, n177, n178, n179,
         n180, n181, n182, n183, n184, n185, n186, n187, n188, n189, n190,
         n191, n192, n193, n194, n195, n196, n197, n198, n199, n200, n201,
         n202, n203, n204, n205, n206, n207, n208, n209, n210, n211, n212,
         n213, n214, n215, n216, n217, n218, n219, n220, n221, n222, n223,
         n224, n225, n226, n227, n228, n229, n230, n231, n232, n233;
  wire   [3:0] FUNC;

  DLH_X1 \OUTALU_reg[3]  ( .G(N82), .D(N86), .Q(OUTALU[3]) );
  DLH_X1 \OUTALU_reg[2]  ( .G(N82), .D(N85), .Q(OUTALU[2]) );
  DLH_X1 \OUTALU_reg[1]  ( .G(N82), .D(N84), .Q(OUTALU[1]) );
  DLH_X1 \OUTALU_reg[0]  ( .G(N82), .D(N83), .Q(OUTALU[0]) );
  OAI211_X1 U120 ( .C1(n129), .C2(n130), .A(n131), .B(n132), .ZN(N86) );
  AOI222_X1 U121 ( .A1(DATA1[3]), .A2(n133), .B1(n134), .B2(n135), .C1(n136), 
        .C2(n137), .ZN(n132) );
  XOR2_X1 U122 ( .A(n138), .B(n137), .Z(n134) );
  XNOR2_X1 U123 ( .A(DATA2[3]), .B(n139), .ZN(n137) );
  XOR2_X1 U124 ( .A(n140), .B(n141), .Z(n138) );
  AOI22_X1 U125 ( .A1(DATA1[2]), .A2(n142), .B1(n143), .B2(n144), .ZN(n141) );
  OR2_X1 U126 ( .A1(n144), .A2(n143), .ZN(n142) );
  AOI22_X1 U127 ( .A1(DATA2[1]), .A2(n145), .B1(DATA2[3]), .B2(n146), .ZN(n131) );
  OAI21_X1 U128 ( .B1(n147), .B2(n139), .A(n148), .ZN(n146) );
  INV_X1 U129 ( .A(DATA1[3]), .ZN(n139) );
  OAI22_X1 U130 ( .A1(n149), .A2(n150), .B1(n151), .B2(n152), .ZN(n145) );
  INV_X1 U131 ( .A(n153), .ZN(n149) );
  AOI21_X1 U132 ( .B1(n154), .B2(DATA1[2]), .A(n155), .ZN(n129) );
  OAI33_X1 U133 ( .A1(n150), .A2(DATA2[1]), .A3(n156), .B1(n157), .B2(n158), 
        .B3(n159), .ZN(n155) );
  NAND3_X1 U134 ( .A1(n160), .A2(n161), .A3(n162), .ZN(N85) );
  AOI221_X1 U135 ( .B1(n154), .B2(n163), .C1(DATA2[1]), .C2(n164), .A(n165), 
        .ZN(n162) );
  AOI211_X1 U136 ( .C1(n151), .C2(n150), .A(n159), .B(DATA2[0]), .ZN(n165) );
  OAI21_X1 U137 ( .B1(n166), .B2(n158), .A(n167), .ZN(n164) );
  NAND3_X1 U138 ( .A1(DATA1[3]), .A2(DATA2[0]), .A3(n168), .ZN(n167) );
  AOI21_X1 U139 ( .B1(n169), .B2(n156), .A(n170), .ZN(n166) );
  MUX2_X1 U140 ( .A(n171), .B(n172), .S(DATA1[2]), .Z(n161) );
  AOI211_X1 U141 ( .C1(n173), .C2(n135), .A(n174), .B(n175), .ZN(n172) );
  MUX2_X1 U142 ( .A(n136), .B(n176), .S(DATA2[2]), .Z(n174) );
  XOR2_X1 U143 ( .A(n143), .B(n177), .Z(n173) );
  AOI22_X1 U144 ( .A1(n178), .A2(n135), .B1(n136), .B2(DATA2[2]), .ZN(n171) );
  XOR2_X1 U145 ( .A(n143), .B(n144), .Z(n178) );
  INV_X1 U146 ( .A(n177), .ZN(n144) );
  XOR2_X1 U147 ( .A(n140), .B(DATA2[2]), .Z(n177) );
  AOI21_X1 U148 ( .B1(n179), .B2(n180), .A(n181), .ZN(n143) );
  INV_X1 U149 ( .A(n182), .ZN(n181) );
  OAI21_X1 U150 ( .B1(n180), .B2(n179), .A(n158), .ZN(n182) );
  AOI22_X1 U151 ( .A1(n183), .A2(n184), .B1(n175), .B2(DATA2[2]), .ZN(n160) );
  OAI211_X1 U152 ( .C1(n152), .C2(n185), .A(n186), .B(n187), .ZN(N84) );
  AOI222_X1 U153 ( .A1(n183), .A2(n153), .B1(DATA2[1]), .B2(n188), .C1(n189), 
        .C2(n170), .ZN(n187) );
  INV_X1 U154 ( .A(n190), .ZN(n170) );
  MUX2_X1 U155 ( .A(n150), .B(n157), .S(n130), .Z(n190) );
  NAND3_X1 U156 ( .A1(n191), .A2(n148), .A3(n192), .ZN(n188) );
  MUX2_X1 U157 ( .A(n193), .B(n194), .S(DATA2[0]), .Z(n192) );
  NAND2_X1 U158 ( .A1(n168), .A2(DATA1[2]), .ZN(n194) );
  OAI21_X1 U159 ( .B1(n168), .B2(n195), .A(DATA1[3]), .ZN(n193) );
  MUX2_X1 U160 ( .A(n196), .B(n147), .S(DATA1[1]), .Z(n191) );
  MUX2_X1 U161 ( .A(DATA1[1]), .B(DATA1[2]), .S(DATA2[0]), .Z(n153) );
  MUX2_X1 U162 ( .A(n197), .B(n198), .S(DATA1[1]), .Z(n186) );
  NOR3_X1 U163 ( .A1(n199), .A2(n175), .A3(n200), .ZN(n198) );
  NOR3_X1 U164 ( .A1(n157), .A2(n189), .A3(n130), .ZN(n200) );
  INV_X1 U165 ( .A(n148), .ZN(n175) );
  OAI22_X1 U166 ( .A1(DATA2[1]), .A2(n196), .B1(n201), .B2(n202), .ZN(n199) );
  AOI22_X1 U167 ( .A1(n202), .A2(n135), .B1(n169), .B2(n189), .ZN(n197) );
  INV_X1 U168 ( .A(n159), .ZN(n189) );
  NAND2_X1 U169 ( .A1(DATA2[1]), .A2(DATA1[0]), .ZN(n159) );
  XOR2_X1 U170 ( .A(n179), .B(n180), .Z(n202) );
  XNOR2_X1 U171 ( .A(n140), .B(n203), .ZN(n180) );
  OAI22_X1 U172 ( .A1(n204), .A2(n205), .B1(DATA1[0]), .B2(n206), .ZN(n179) );
  AND2_X1 U173 ( .A1(n205), .A2(n204), .ZN(n206) );
  INV_X1 U174 ( .A(n154), .ZN(n185) );
  MUX2_X1 U175 ( .A(n158), .B(n156), .S(DATA2[0]), .Z(n152) );
  INV_X1 U176 ( .A(DATA1[0]), .ZN(n156) );
  INV_X1 U177 ( .A(DATA1[1]), .ZN(n158) );
  OAI221_X1 U178 ( .B1(n207), .B2(n203), .C1(n208), .C2(n130), .A(n209), .ZN(
        N83) );
  MUX2_X1 U179 ( .A(n210), .B(n211), .S(DATA1[0]), .Z(n209) );
  AOI221_X1 U180 ( .B1(n212), .B2(n135), .C1(n136), .C2(n130), .A(n133), .ZN(
        n211) );
  NAND2_X1 U181 ( .A1(n148), .A2(n213), .ZN(n133) );
  OAI21_X1 U182 ( .B1(n154), .B2(n183), .A(n130), .ZN(n213) );
  NOR2_X1 U183 ( .A1(n151), .A2(DATA2[1]), .ZN(n154) );
  AOI21_X1 U184 ( .B1(n214), .B2(n215), .A(n168), .ZN(n151) );
  NOR2_X1 U185 ( .A1(DATA2[2]), .A2(DATA2[3]), .ZN(n215) );
  INV_X1 U186 ( .A(n196), .ZN(n136) );
  OR2_X1 U187 ( .A1(n212), .A2(n201), .ZN(n210) );
  XNOR2_X1 U188 ( .A(n205), .B(n204), .ZN(n212) );
  INV_X1 U189 ( .A(n140), .ZN(n204) );
  XNOR2_X1 U190 ( .A(n140), .B(DATA2[0]), .ZN(n205) );
  AOI211_X1 U191 ( .C1(n183), .C2(DATA1[1]), .A(n216), .B(n217), .ZN(n208) );
  INV_X1 U192 ( .A(n218), .ZN(n217) );
  MUX2_X1 U193 ( .A(n196), .B(n219), .S(DATA1[0]), .Z(n218) );
  OAI21_X1 U194 ( .B1(n220), .B2(n221), .A(n148), .ZN(n216) );
  NAND2_X1 U195 ( .A1(DATA1[3]), .A2(n203), .ZN(n221) );
  INV_X1 U196 ( .A(n168), .ZN(n220) );
  AND2_X1 U197 ( .A1(n195), .A2(n203), .ZN(n183) );
  INV_X1 U198 ( .A(DATA2[1]), .ZN(n203) );
  AOI22_X1 U199 ( .A1(n184), .A2(n195), .B1(n168), .B2(n163), .ZN(n207) );
  MUX2_X1 U200 ( .A(DATA1[1]), .B(DATA1[2]), .S(n130), .Z(n163) );
  OAI21_X1 U201 ( .B1(n222), .B2(n223), .A(n150), .ZN(n195) );
  OR2_X1 U202 ( .A1(DATA2[2]), .A2(DATA2[3]), .ZN(n223) );
  MUX2_X1 U203 ( .A(DATA1[3]), .B(DATA1[2]), .S(n130), .Z(n184) );
  INV_X1 U204 ( .A(DATA2[0]), .ZN(n130) );
  NAND4_X1 U205 ( .A1(n201), .A2(n219), .A3(n224), .A4(n225), .ZN(N82) );
  AND4_X1 U206 ( .A1(n196), .A2(n148), .A3(n150), .A4(n222), .ZN(n225) );
  NAND3_X1 U207 ( .A1(FUNC[2]), .A2(FUNC[1]), .A3(n226), .ZN(n222) );
  NAND3_X1 U208 ( .A1(FUNC[3]), .A2(n227), .A3(FUNC[0]), .ZN(n150) );
  NAND3_X1 U209 ( .A1(n228), .A2(n229), .A3(FUNC[2]), .ZN(n148) );
  NAND3_X1 U210 ( .A1(FUNC[2]), .A2(n229), .A3(n226), .ZN(n196) );
  NOR2_X1 U211 ( .A1(n214), .A2(n168), .ZN(n224) );
  NOR3_X1 U212 ( .A1(n230), .A2(FUNC[0]), .A3(n231), .ZN(n168) );
  NOR3_X1 U213 ( .A1(n229), .A2(n232), .A3(n233), .ZN(n214) );
  NOR2_X1 U214 ( .A1(n169), .A2(n176), .ZN(n219) );
  INV_X1 U215 ( .A(n147), .ZN(n176) );
  NAND3_X1 U216 ( .A1(FUNC[1]), .A2(n233), .A3(n226), .ZN(n147) );
  INV_X1 U217 ( .A(n157), .ZN(n169) );
  NAND3_X1 U218 ( .A1(n228), .A2(n233), .A3(FUNC[1]), .ZN(n157) );
  INV_X1 U219 ( .A(n135), .ZN(n201) );
  OAI21_X1 U220 ( .B1(n232), .B2(n230), .A(n140), .ZN(n135) );
  NAND2_X1 U221 ( .A1(n226), .A2(n227), .ZN(n140) );
  INV_X1 U222 ( .A(n230), .ZN(n227) );
  AND2_X1 U223 ( .A1(FUNC[0]), .A2(n231), .ZN(n226) );
  INV_X1 U224 ( .A(FUNC[3]), .ZN(n231) );
  NAND2_X1 U225 ( .A1(n229), .A2(n233), .ZN(n230) );
  INV_X1 U226 ( .A(FUNC[2]), .ZN(n233) );
  INV_X1 U227 ( .A(FUNC[1]), .ZN(n229) );
  INV_X1 U228 ( .A(n228), .ZN(n232) );
  NOR2_X1 U229 ( .A1(FUNC[0]), .A2(FUNC[3]), .ZN(n228) );
endmodule

