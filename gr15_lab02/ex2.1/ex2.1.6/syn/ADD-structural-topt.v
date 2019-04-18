
module GeneralGenerate_3 ( Gk_1, GikPik, Gij );
  input [1:0] GikPik;
  input Gk_1;
  output Gij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(GikPik[0]), .B2(Gk_1), .A(GikPik[1]), .ZN(n3) );
endmodule


module PGNetBlock_1 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(gp[1]) );
endmodule


module SpecialPGBlock ( a, b, Cin, G1_0 );
  input a, b, Cin;
  output G1_0;

  wire   [1:0] g1p1;

  PGNetBlock_1 PGBlock ( .a(a), .b(b), .gp(g1p1) );
  GeneralGenerate_3 GGBlock ( .Gk_1(Cin), .GikPik(g1p1), .Gij(G1_0) );
endmodule


module PGNetBlock_0 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(a), .A2(b), .ZN(gp[1]) );
endmodule


module PGNetBlock_2 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(a), .A2(b), .ZN(gp[1]) );
endmodule


module PGNetBlock_3 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(a), .A2(b), .ZN(gp[1]) );
endmodule


module PGNetBlock_4 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(a), .A2(b), .ZN(gp[1]) );
endmodule


module PGNetBlock_5 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(a), .A2(b), .ZN(gp[1]) );
endmodule


module PGNetBlock_6 ( a, b, gp );
  output [1:0] gp;
  input a, b;
  wire   n1;

  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  CLKBUF_X1 U1 ( .A(b), .Z(n1) );
  AND2_X1 U3 ( .A1(a), .A2(n1), .ZN(gp[1]) );
endmodule


module PGNetBlock_7 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(a), .A2(b), .ZN(gp[1]) );
endmodule


module PGNetBlock_8 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(a), .A2(b), .ZN(gp[1]) );
endmodule


module PGNetBlock_9 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(a), .A2(b), .ZN(gp[1]) );
endmodule


module PGNetBlock_10 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(a), .A2(b), .ZN(gp[1]) );
endmodule


module PGNetBlock_11 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(a), .A2(b), .ZN(gp[1]) );
endmodule


module PGNetBlock_12 ( a, b, gp );
  output [1:0] gp;
  input a, b;
  wire   n2;

  INV_X1 U1 ( .A(a), .ZN(n2) );
  AND2_X1 U2 ( .A1(b), .A2(a), .ZN(gp[1]) );
  XNOR2_X1 U3 ( .A(b), .B(n2), .ZN(gp[0]) );
endmodule


module PGNetBlock_13 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(gp[1]) );
endmodule


module PGNetBlock_14 ( a, b, gp );
  output [1:0] gp;
  input a, b;
  wire   n2;

  INV_X1 U1 ( .A(a), .ZN(n2) );
  AND2_X1 U2 ( .A1(b), .A2(a), .ZN(gp[1]) );
  XNOR2_X1 U3 ( .A(b), .B(n2), .ZN(gp[0]) );
endmodule


module PGNetBlock_15 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(gp[1]) );
endmodule


module PGNetBlock_16 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(a), .A2(b), .ZN(gp[1]) );
endmodule


module PGNetBlock_17 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(a), .A2(b), .ZN(gp[1]) );
endmodule


module PGNetBlock_18 ( a, b, gp );
  output [1:0] gp;
  input a, b;
  wire   n1;

  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  CLKBUF_X1 U1 ( .A(b), .Z(n1) );
  AND2_X1 U3 ( .A1(n1), .A2(a), .ZN(gp[1]) );
endmodule


module PGNetBlock_19 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(gp[1]) );
endmodule


module PGNetBlock_20 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(a), .A2(b), .ZN(gp[1]) );
endmodule


module PGNetBlock_21 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(gp[1]) );
endmodule


module PGNetBlock_22 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(gp[1]) );
endmodule


module PGNetBlock_23 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(gp[1]) );
endmodule


module PGNetBlock_24 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(a), .A2(b), .ZN(gp[1]) );
endmodule


module PGNetBlock_25 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(a), .A2(b), .ZN(gp[1]) );
endmodule


module PGNetBlock_26 ( a, b, gp );
  output [1:0] gp;
  input a, b;
  wire   n2;

  INV_X1 U1 ( .A(a), .ZN(n2) );
  AND2_X1 U2 ( .A1(b), .A2(a), .ZN(gp[1]) );
  XNOR2_X1 U3 ( .A(b), .B(n2), .ZN(gp[0]) );
endmodule


module PGNetBlock_27 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(gp[1]) );
endmodule


module PGNetBlock_28 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(a), .A2(b), .ZN(gp[1]) );
endmodule


module PGNetBlock_29 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(a), .A2(b), .ZN(gp[1]) );
endmodule


module PGNetBlock_30 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(a), .A2(b), .ZN(gp[1]) );
endmodule


module PGNetBlock_31 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(gp[1]) );
endmodule


module PGNetwork_N32 ( A, B, Cin, gpSignals );
  input [31:0] A;
  input [31:0] B;
  output [63:0] gpSignals;
  input Cin;
  wire   gpSignals_0;
  assign gpSignals[0] = gpSignals_0;
  assign gpSignals[1] = 1'b0;

  SpecialPGBlock SpecBlock_0 ( .a(A[0]), .b(B[0]), .Cin(Cin), .G1_0(
        gpSignals_0) );
  PGNetBlock_0 PGBlock_1 ( .a(A[1]), .b(B[1]), .gp(gpSignals[3:2]) );
  PGNetBlock_31 PGBlock_2 ( .a(A[2]), .b(B[2]), .gp(gpSignals[5:4]) );
  PGNetBlock_30 PGBlock_3 ( .a(A[3]), .b(B[3]), .gp(gpSignals[7:6]) );
  PGNetBlock_29 PGBlock_4 ( .a(A[4]), .b(B[4]), .gp(gpSignals[9:8]) );
  PGNetBlock_28 PGBlock_5 ( .a(A[5]), .b(B[5]), .gp(gpSignals[11:10]) );
  PGNetBlock_27 PGBlock_6 ( .a(A[6]), .b(B[6]), .gp(gpSignals[13:12]) );
  PGNetBlock_26 PGBlock_7 ( .a(A[7]), .b(B[7]), .gp(gpSignals[15:14]) );
  PGNetBlock_25 PGBlock_8 ( .a(A[8]), .b(B[8]), .gp(gpSignals[17:16]) );
  PGNetBlock_24 PGBlock_9 ( .a(A[9]), .b(B[9]), .gp(gpSignals[19:18]) );
  PGNetBlock_23 PGBlock_10 ( .a(A[10]), .b(B[10]), .gp(gpSignals[21:20]) );
  PGNetBlock_22 PGBlock_11 ( .a(A[11]), .b(B[11]), .gp(gpSignals[23:22]) );
  PGNetBlock_21 PGBlock_12 ( .a(A[12]), .b(B[12]), .gp(gpSignals[25:24]) );
  PGNetBlock_20 PGBlock_13 ( .a(A[13]), .b(B[13]), .gp(gpSignals[27:26]) );
  PGNetBlock_19 PGBlock_14 ( .a(A[14]), .b(B[14]), .gp(gpSignals[29:28]) );
  PGNetBlock_18 PGBlock_15 ( .a(A[15]), .b(B[15]), .gp(gpSignals[31:30]) );
  PGNetBlock_17 PGBlock_16 ( .a(A[16]), .b(B[16]), .gp(gpSignals[33:32]) );
  PGNetBlock_16 PGBlock_17 ( .a(A[17]), .b(B[17]), .gp(gpSignals[35:34]) );
  PGNetBlock_15 PGBlock_18 ( .a(A[18]), .b(B[18]), .gp(gpSignals[37:36]) );
  PGNetBlock_14 PGBlock_19 ( .a(A[19]), .b(B[19]), .gp(gpSignals[39:38]) );
  PGNetBlock_13 PGBlock_20 ( .a(A[20]), .b(B[20]), .gp(gpSignals[41:40]) );
  PGNetBlock_12 PGBlock_21 ( .a(A[21]), .b(B[21]), .gp(gpSignals[43:42]) );
  PGNetBlock_11 PGBlock_22 ( .a(A[22]), .b(B[22]), .gp(gpSignals[45:44]) );
  PGNetBlock_10 PGBlock_23 ( .a(A[23]), .b(B[23]), .gp(gpSignals[47:46]) );
  PGNetBlock_9 PGBlock_24 ( .a(A[24]), .b(B[24]), .gp(gpSignals[49:48]) );
  PGNetBlock_8 PGBlock_25 ( .a(A[25]), .b(B[25]), .gp(gpSignals[51:50]) );
  PGNetBlock_7 PGBlock_26 ( .a(A[26]), .b(B[26]), .gp(gpSignals[53:52]) );
  PGNetBlock_6 PGBlock_27 ( .a(A[27]), .b(B[27]), .gp(gpSignals[55:54]) );
  PGNetBlock_5 PGBlock_28 ( .a(A[28]), .b(B[28]), .gp(gpSignals[57:56]) );
  PGNetBlock_4 PGBlock_29 ( .a(A[29]), .b(B[29]), .gp(gpSignals[59:58]) );
  PGNetBlock_3 PGBlock_30 ( .a(A[30]), .b(B[30]), .gp(gpSignals[61:60]) );
  PGNetBlock_2 PGBlock_31 ( .a(A[31]), .b(B[31]), .gp(gpSignals[63:62]) );
endmodule


module GeneralGenerate_1 ( Gk_1, GikPik, Gij );
  input [1:0] GikPik;
  input Gk_1;
  output Gij;
  wire   n3;

  AOI21_X1 U1 ( .B1(Gk_1), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
  INV_X1 U2 ( .A(n3), .ZN(Gij) );
endmodule


module GeneralGenerate_2 ( Gk_1, GikPik, Gij );
  input [1:0] GikPik;
  input Gk_1;
  output Gij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Gk_1), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
endmodule


module GeneralPropagateGenerate_22 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  AND2_X1 U1 ( .A1(GikPik[0]), .A2(Gk_1Pk_1[0]), .ZN(GijPij[0]) );
  INV_X1 U2 ( .A(n3), .ZN(GijPij[1]) );
  AOI21_X1 U3 ( .B1(Gk_1Pk_1[1]), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
endmodule


module triBlockSpecial ( GikPik_left, Gk_1Pk_1_left, GikPik_right, Gk_1_right, 
        Gij );
  input [1:0] GikPik_left;
  input [1:0] Gk_1Pk_1_left;
  input [1:0] GikPik_right;
  input Gk_1_right;
  output Gij;
  wire   G_right_block_out;
  wire   [1:0] PG_left_block_out;

  GeneralPropagateGenerate_22 PG_1 ( .Gk_1Pk_1(Gk_1Pk_1_left), .GikPik(
        GikPik_left), .GijPij(PG_left_block_out) );
  GeneralGenerate_2 G_1 ( .Gk_1(Gk_1_right), .GikPik(GikPik_right), .Gij(
        G_right_block_out) );
  GeneralGenerate_1 G_2 ( .Gk_1(G_right_block_out), .GikPik(PG_left_block_out), 
        .Gij(Gij) );
endmodule


module GeneralPropagateGenerate_19 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  AND2_X1 U1 ( .A1(Gk_1Pk_1[0]), .A2(GikPik[0]), .ZN(GijPij[0]) );
  AOI21_X1 U2 ( .B1(Gk_1Pk_1[1]), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
  INV_X1 U3 ( .A(n3), .ZN(GijPij[1]) );
endmodule


module GeneralPropagateGenerate_20 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(GijPij[1]) );
  AND2_X1 U2 ( .A1(Gk_1Pk_1[0]), .A2(GikPik[0]), .ZN(GijPij[0]) );
  AOI21_X1 U3 ( .B1(Gk_1Pk_1[1]), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
endmodule


module GeneralPropagateGenerate_21 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  AND2_X1 U1 ( .A1(GikPik[0]), .A2(Gk_1Pk_1[0]), .ZN(GijPij[0]) );
  AOI21_X1 U2 ( .B1(GikPik[0]), .B2(Gk_1Pk_1[1]), .A(GikPik[1]), .ZN(n3) );
  INV_X1 U3 ( .A(n3), .ZN(GijPij[1]) );
endmodule


module triBlock_0 ( Gk_1Pk_1_left, GikPik_left, Gk_1Pk_1_right, GikPik_right, 
        GijPij );
  input [1:0] Gk_1Pk_1_left;
  input [1:0] GikPik_left;
  input [1:0] Gk_1Pk_1_right;
  input [1:0] GikPik_right;
  output [1:0] GijPij;

  wire   [1:0] PG_left_block_out;
  wire   [1:0] PG_right_block_out;

  GeneralPropagateGenerate_21 PG_1 ( .Gk_1Pk_1(Gk_1Pk_1_left), .GikPik(
        GikPik_left), .GijPij(PG_left_block_out) );
  GeneralPropagateGenerate_20 PG_2 ( .Gk_1Pk_1(Gk_1Pk_1_right), .GikPik(
        GikPik_right), .GijPij(PG_right_block_out) );
  GeneralPropagateGenerate_19 PG_3 ( .Gk_1Pk_1(PG_right_block_out), .GikPik(
        PG_left_block_out), .GijPij(GijPij) );
endmodule


module GeneralPropagateGenerate_1 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  AOI21_X1 U1 ( .B1(Gk_1Pk_1[1]), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
  INV_X1 U2 ( .A(n3), .ZN(GijPij[1]) );
  AND2_X1 U3 ( .A1(Gk_1Pk_1[0]), .A2(GikPik[0]), .ZN(GijPij[0]) );
endmodule


module GeneralPropagateGenerate_2 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(GijPij[1]) );
  AOI21_X1 U2 ( .B1(Gk_1Pk_1[1]), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
  AND2_X1 U3 ( .A1(Gk_1Pk_1[0]), .A2(GikPik[0]), .ZN(GijPij[0]) );
endmodule


module GeneralPropagateGenerate_3 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(GijPij[1]) );
  AOI21_X1 U2 ( .B1(Gk_1Pk_1[1]), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
  AND2_X1 U3 ( .A1(Gk_1Pk_1[0]), .A2(GikPik[0]), .ZN(GijPij[0]) );
endmodule


module triBlock_1 ( Gk_1Pk_1_left, GikPik_left, Gk_1Pk_1_right, GikPik_right, 
        GijPij );
  input [1:0] Gk_1Pk_1_left;
  input [1:0] GikPik_left;
  input [1:0] Gk_1Pk_1_right;
  input [1:0] GikPik_right;
  output [1:0] GijPij;

  wire   [1:0] PG_left_block_out;
  wire   [1:0] PG_right_block_out;

  GeneralPropagateGenerate_3 PG_1 ( .Gk_1Pk_1(Gk_1Pk_1_left), .GikPik(
        GikPik_left), .GijPij(PG_left_block_out) );
  GeneralPropagateGenerate_2 PG_2 ( .Gk_1Pk_1(Gk_1Pk_1_right), .GikPik(
        GikPik_right), .GijPij(PG_right_block_out) );
  GeneralPropagateGenerate_1 PG_3 ( .Gk_1Pk_1(PG_right_block_out), .GikPik(
        PG_left_block_out), .GijPij(GijPij) );
endmodule


module GeneralPropagateGenerate_4 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  AND2_X1 U1 ( .A1(Gk_1Pk_1[0]), .A2(GikPik[0]), .ZN(GijPij[0]) );
  INV_X1 U2 ( .A(n3), .ZN(GijPij[1]) );
  AOI21_X1 U3 ( .B1(Gk_1Pk_1[1]), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
endmodule


module GeneralPropagateGenerate_5 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(GijPij[1]) );
  AOI21_X1 U2 ( .B1(GikPik[0]), .B2(Gk_1Pk_1[1]), .A(GikPik[1]), .ZN(n3) );
  AND2_X1 U3 ( .A1(GikPik[0]), .A2(Gk_1Pk_1[0]), .ZN(GijPij[0]) );
endmodule


module GeneralPropagateGenerate_6 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(GijPij[1]) );
  AOI21_X1 U2 ( .B1(GikPik[0]), .B2(Gk_1Pk_1[1]), .A(GikPik[1]), .ZN(n3) );
  AND2_X1 U3 ( .A1(Gk_1Pk_1[0]), .A2(GikPik[0]), .ZN(GijPij[0]) );
endmodule


module triBlock_2 ( Gk_1Pk_1_left, GikPik_left, Gk_1Pk_1_right, GikPik_right, 
        GijPij );
  input [1:0] Gk_1Pk_1_left;
  input [1:0] GikPik_left;
  input [1:0] Gk_1Pk_1_right;
  input [1:0] GikPik_right;
  output [1:0] GijPij;

  wire   [1:0] PG_left_block_out;
  wire   [1:0] PG_right_block_out;

  GeneralPropagateGenerate_6 PG_1 ( .Gk_1Pk_1(Gk_1Pk_1_left), .GikPik(
        GikPik_left), .GijPij(PG_left_block_out) );
  GeneralPropagateGenerate_5 PG_2 ( .Gk_1Pk_1(Gk_1Pk_1_right), .GikPik(
        GikPik_right), .GijPij(PG_right_block_out) );
  GeneralPropagateGenerate_4 PG_3 ( .Gk_1Pk_1(PG_right_block_out), .GikPik(
        PG_left_block_out), .GijPij(GijPij) );
endmodule


module GeneralPropagateGenerate_7 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(GijPij[1]) );
  AOI21_X1 U2 ( .B1(Gk_1Pk_1[1]), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
  AND2_X1 U3 ( .A1(Gk_1Pk_1[0]), .A2(GikPik[0]), .ZN(GijPij[0]) );
endmodule


module GeneralPropagateGenerate_8 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(GijPij[1]) );
  AOI21_X1 U2 ( .B1(Gk_1Pk_1[1]), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
  AND2_X1 U3 ( .A1(Gk_1Pk_1[0]), .A2(GikPik[0]), .ZN(GijPij[0]) );
endmodule


module GeneralPropagateGenerate_9 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(GijPij[1]) );
  AOI21_X1 U2 ( .B1(Gk_1Pk_1[1]), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
  AND2_X1 U3 ( .A1(Gk_1Pk_1[0]), .A2(GikPik[0]), .ZN(GijPij[0]) );
endmodule


module triBlock_3 ( Gk_1Pk_1_left, GikPik_left, Gk_1Pk_1_right, GikPik_right, 
        GijPij );
  input [1:0] Gk_1Pk_1_left;
  input [1:0] GikPik_left;
  input [1:0] Gk_1Pk_1_right;
  input [1:0] GikPik_right;
  output [1:0] GijPij;

  wire   [1:0] PG_left_block_out;
  wire   [1:0] PG_right_block_out;

  GeneralPropagateGenerate_9 PG_1 ( .Gk_1Pk_1(Gk_1Pk_1_left), .GikPik(
        GikPik_left), .GijPij(PG_left_block_out) );
  GeneralPropagateGenerate_8 PG_2 ( .Gk_1Pk_1(Gk_1Pk_1_right), .GikPik(
        GikPik_right), .GijPij(PG_right_block_out) );
  GeneralPropagateGenerate_7 PG_3 ( .Gk_1Pk_1(PG_right_block_out), .GikPik(
        PG_left_block_out), .GijPij(GijPij) );
endmodule


module GeneralPropagateGenerate_10 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(GijPij[1]) );
  AOI21_X1 U2 ( .B1(Gk_1Pk_1[1]), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
  AND2_X1 U3 ( .A1(GikPik[0]), .A2(Gk_1Pk_1[0]), .ZN(GijPij[0]) );
endmodule


module GeneralPropagateGenerate_11 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(GijPij[1]) );
  AOI21_X1 U2 ( .B1(GikPik[0]), .B2(Gk_1Pk_1[1]), .A(GikPik[1]), .ZN(n3) );
  AND2_X1 U3 ( .A1(Gk_1Pk_1[0]), .A2(GikPik[0]), .ZN(GijPij[0]) );
endmodule


module GeneralPropagateGenerate_12 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(GijPij[1]) );
  AOI21_X1 U2 ( .B1(GikPik[0]), .B2(Gk_1Pk_1[1]), .A(GikPik[1]), .ZN(n3) );
  AND2_X1 U3 ( .A1(GikPik[0]), .A2(Gk_1Pk_1[0]), .ZN(GijPij[0]) );
endmodule


module triBlock_4 ( Gk_1Pk_1_left, GikPik_left, Gk_1Pk_1_right, GikPik_right, 
        GijPij );
  input [1:0] Gk_1Pk_1_left;
  input [1:0] GikPik_left;
  input [1:0] Gk_1Pk_1_right;
  input [1:0] GikPik_right;
  output [1:0] GijPij;

  wire   [1:0] PG_left_block_out;
  wire   [1:0] PG_right_block_out;

  GeneralPropagateGenerate_12 PG_1 ( .Gk_1Pk_1(Gk_1Pk_1_left), .GikPik(
        GikPik_left), .GijPij(PG_left_block_out) );
  GeneralPropagateGenerate_11 PG_2 ( .Gk_1Pk_1(Gk_1Pk_1_right), .GikPik(
        GikPik_right), .GijPij(PG_right_block_out) );
  GeneralPropagateGenerate_10 PG_3 ( .Gk_1Pk_1(PG_right_block_out), .GikPik(
        PG_left_block_out), .GijPij(GijPij) );
endmodule


module GeneralPropagateGenerate_13 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(GijPij[1]) );
  AOI21_X1 U2 ( .B1(Gk_1Pk_1[1]), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
  AND2_X1 U3 ( .A1(Gk_1Pk_1[0]), .A2(GikPik[0]), .ZN(GijPij[0]) );
endmodule


module GeneralPropagateGenerate_14 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(GijPij[1]) );
  AOI21_X1 U2 ( .B1(Gk_1Pk_1[1]), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
  AND2_X1 U3 ( .A1(Gk_1Pk_1[0]), .A2(GikPik[0]), .ZN(GijPij[0]) );
endmodule


module GeneralPropagateGenerate_15 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  AOI21_X1 U1 ( .B1(GikPik[0]), .B2(Gk_1Pk_1[1]), .A(GikPik[1]), .ZN(n3) );
  AND2_X1 U2 ( .A1(GikPik[0]), .A2(Gk_1Pk_1[0]), .ZN(GijPij[0]) );
  INV_X1 U3 ( .A(n3), .ZN(GijPij[1]) );
endmodule


module triBlock_5 ( Gk_1Pk_1_left, GikPik_left, Gk_1Pk_1_right, GikPik_right, 
        GijPij );
  input [1:0] Gk_1Pk_1_left;
  input [1:0] GikPik_left;
  input [1:0] Gk_1Pk_1_right;
  input [1:0] GikPik_right;
  output [1:0] GijPij;

  wire   [1:0] PG_left_block_out;
  wire   [1:0] PG_right_block_out;

  GeneralPropagateGenerate_15 PG_1 ( .Gk_1Pk_1(Gk_1Pk_1_left), .GikPik(
        GikPik_left), .GijPij(PG_left_block_out) );
  GeneralPropagateGenerate_14 PG_2 ( .Gk_1Pk_1(Gk_1Pk_1_right), .GikPik(
        GikPik_right), .GijPij(PG_right_block_out) );
  GeneralPropagateGenerate_13 PG_3 ( .Gk_1Pk_1(PG_right_block_out), .GikPik(
        PG_left_block_out), .GijPij(GijPij) );
endmodule


module GeneralPropagateGenerate_16 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(GijPij[1]) );
  AOI21_X1 U2 ( .B1(GikPik[0]), .B2(Gk_1Pk_1[1]), .A(GikPik[1]), .ZN(n3) );
  AND2_X1 U3 ( .A1(GikPik[0]), .A2(Gk_1Pk_1[0]), .ZN(GijPij[0]) );
endmodule


module GeneralPropagateGenerate_17 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(GijPij[1]) );
  AOI21_X1 U2 ( .B1(Gk_1Pk_1[1]), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
  AND2_X1 U3 ( .A1(Gk_1Pk_1[0]), .A2(GikPik[0]), .ZN(GijPij[0]) );
endmodule


module GeneralPropagateGenerate_18 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  AND2_X1 U1 ( .A1(Gk_1Pk_1[0]), .A2(GikPik[0]), .ZN(GijPij[0]) );
  INV_X1 U2 ( .A(n3), .ZN(GijPij[1]) );
  AOI21_X1 U3 ( .B1(GikPik[0]), .B2(Gk_1Pk_1[1]), .A(GikPik[1]), .ZN(n3) );
endmodule


module triBlock_6 ( Gk_1Pk_1_left, GikPik_left, Gk_1Pk_1_right, GikPik_right, 
        GijPij );
  input [1:0] Gk_1Pk_1_left;
  input [1:0] GikPik_left;
  input [1:0] Gk_1Pk_1_right;
  input [1:0] GikPik_right;
  output [1:0] GijPij;

  wire   [1:0] PG_left_block_out;
  wire   [1:0] PG_right_block_out;

  GeneralPropagateGenerate_18 PG_1 ( .Gk_1Pk_1(Gk_1Pk_1_left), .GikPik(
        GikPik_left), .GijPij(PG_left_block_out) );
  GeneralPropagateGenerate_17 PG_2 ( .Gk_1Pk_1(Gk_1Pk_1_right), .GikPik(
        GikPik_right), .GijPij(PG_right_block_out) );
  GeneralPropagateGenerate_16 PG_3 ( .Gk_1Pk_1(PG_right_block_out), .GikPik(
        PG_left_block_out), .GijPij(GijPij) );
endmodule


module ST_row1And2_N32 ( \input , \output  );
  input [63:0] \input ;
  output [63:0] \output ;
  wire   input_0, output_55, output_54, output_47, output_46, output_39,
         output_38, output_31, output_30, output_23, output_22, output_15,
         output_14, output_7;
  assign input_0 = \input  [0];
  assign \output  [55] = output_55;
  assign \output  [54] = output_54;
  assign \output  [47] = output_47;
  assign \output  [46] = output_46;
  assign \output  [39] = output_39;
  assign \output  [38] = output_38;
  assign \output  [31] = output_31;
  assign \output  [30] = output_30;
  assign \output  [23] = output_23;
  assign \output  [22] = output_22;
  assign \output  [15] = output_15;
  assign \output  [14] = output_14;
  assign \output  [7] = output_7;

  triBlockSpecial TBS_0 ( .GikPik_left(\input [7:6]), .Gk_1Pk_1_left(
        \input [5:4]), .GikPik_right(\input [3:2]), .Gk_1_right(input_0), 
        .Gij(output_7) );
  triBlock_0 TB_1 ( .Gk_1Pk_1_left(\input [13:12]), .GikPik_left(
        \input [15:14]), .Gk_1Pk_1_right(\input [9:8]), .GikPik_right(
        \input [11:10]), .GijPij({output_15, output_14}) );
  triBlock_6 TB_2 ( .Gk_1Pk_1_left(\input [21:20]), .GikPik_left(
        \input [23:22]), .Gk_1Pk_1_right(\input [17:16]), .GikPik_right(
        \input [19:18]), .GijPij({output_23, output_22}) );
  triBlock_5 TB_3 ( .Gk_1Pk_1_left(\input [29:28]), .GikPik_left(
        \input [31:30]), .Gk_1Pk_1_right(\input [25:24]), .GikPik_right(
        \input [27:26]), .GijPij({output_31, output_30}) );
  triBlock_4 TB_4 ( .Gk_1Pk_1_left(\input [37:36]), .GikPik_left(
        \input [39:38]), .Gk_1Pk_1_right(\input [33:32]), .GikPik_right(
        \input [35:34]), .GijPij({output_39, output_38}) );
  triBlock_3 TB_5 ( .Gk_1Pk_1_left(\input [45:44]), .GikPik_left(
        \input [47:46]), .Gk_1Pk_1_right(\input [41:40]), .GikPik_right(
        \input [43:42]), .GijPij({output_47, output_46}) );
  triBlock_2 TB_6 ( .Gk_1Pk_1_left(\input [53:52]), .GikPik_left(
        \input [55:54]), .Gk_1Pk_1_right(\input [49:48]), .GikPik_right(
        \input [51:50]), .GijPij({output_55, output_54}) );
  triBlock_1 TB_7 ( .Gk_1Pk_1_left(\input [61:60]), .GikPik_left(
        \input [63:62]), .Gk_1Pk_1_right(\input [57:56]), .GikPik_right(
        \input [59:58]), .GijPij(\output [63:62]) );
endmodule


module GeneralGenerate_0 ( Gk_1, GikPik, Gij );
  input [1:0] GikPik;
  input Gk_1;
  output Gij;
  wire   n3, n4;

  NAND2_X1 U1 ( .A1(Gk_1), .A2(GikPik[0]), .ZN(n4) );
  INV_X1 U2 ( .A(GikPik[1]), .ZN(n3) );
  NAND2_X1 U3 ( .A1(n3), .A2(n4), .ZN(Gij) );
endmodule


module GeneralPropagateGenerate_0 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n2;

  AND2_X1 U1 ( .A1(Gk_1Pk_1[0]), .A2(GikPik[0]), .ZN(GijPij[0]) );
  INV_X1 U2 ( .A(n2), .ZN(GijPij[1]) );
  AOI21_X1 U3 ( .B1(Gk_1Pk_1[1]), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n2) );
endmodule


module GeneralGenerate_4 ( Gk_1, GikPik, Gij );
  input [1:0] GikPik;
  input Gk_1;
  output Gij;
  wire   n4;

  OR2_X1 U1 ( .A1(n4), .A2(GikPik[1]), .ZN(Gij) );
  AND2_X1 U2 ( .A1(Gk_1), .A2(GikPik[0]), .ZN(n4) );
endmodule


module GeneralGenerate_5 ( Gk_1, GikPik, Gij );
  input [1:0] GikPik;
  input Gk_1;
  output Gij;
  wire   n3, n4;

  NAND2_X1 U1 ( .A1(n4), .A2(n3), .ZN(Gij) );
  INV_X1 U2 ( .A(GikPik[1]), .ZN(n3) );
  NAND2_X1 U3 ( .A1(Gk_1), .A2(GikPik[0]), .ZN(n4) );
endmodule


module GeneralGenerate_6 ( Gk_1, GikPik, Gij );
  input [1:0] GikPik;
  input Gk_1;
  output Gij;
  wire   n3, n4;

  INV_X1 U1 ( .A(GikPik[1]), .ZN(n3) );
  NAND2_X1 U2 ( .A1(n4), .A2(n3), .ZN(Gij) );
  NAND2_X1 U3 ( .A1(Gk_1), .A2(GikPik[0]), .ZN(n4) );
endmodule


module GeneralGenerate_7 ( Gk_1, GikPik, Gij );
  input [1:0] GikPik;
  input Gk_1;
  output Gij;
  wire   n3, n4;

  INV_X1 U1 ( .A(GikPik[1]), .ZN(n3) );
  NAND2_X1 U2 ( .A1(Gk_1), .A2(GikPik[0]), .ZN(n4) );
  NAND2_X1 U3 ( .A1(n4), .A2(n3), .ZN(Gij) );
endmodule


module GeneralGenerate_8 ( Gk_1, GikPik, Gij );
  input [1:0] GikPik;
  input Gk_1;
  output Gij;
  wire   n3, n4;

  INV_X1 U1 ( .A(GikPik[1]), .ZN(n3) );
  NAND2_X1 U2 ( .A1(n4), .A2(n3), .ZN(Gij) );
  NAND2_X1 U3 ( .A1(Gk_1), .A2(GikPik[0]), .ZN(n4) );
endmodule


module GeneralGenerate_9 ( Gk_1, GikPik, Gij );
  input [1:0] GikPik;
  input Gk_1;
  output Gij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Gk_1), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
endmodule


module GeneralPropagateGenerate_23 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  AND2_X1 U1 ( .A1(Gk_1Pk_1[0]), .A2(GikPik[0]), .ZN(GijPij[0]) );
  INV_X1 U2 ( .A(n3), .ZN(GijPij[1]) );
  AOI21_X1 U3 ( .B1(Gk_1Pk_1[1]), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
endmodule


module GeneralPropagateGenerate_24 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  AND2_X1 U1 ( .A1(Gk_1Pk_1[0]), .A2(GikPik[0]), .ZN(GijPij[0]) );
  INV_X1 U2 ( .A(n3), .ZN(GijPij[1]) );
  AOI21_X1 U3 ( .B1(Gk_1Pk_1[1]), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
endmodule


module GeneralPropagateGenerate_25 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(GijPij[1]) );
  AOI21_X1 U2 ( .B1(Gk_1Pk_1[1]), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
  AND2_X1 U3 ( .A1(Gk_1Pk_1[0]), .A2(GikPik[0]), .ZN(GijPij[0]) );
endmodule


module GeneralPropagateGenerate_26 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(GijPij[1]) );
  AOI21_X1 U2 ( .B1(Gk_1Pk_1[1]), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
  AND2_X1 U3 ( .A1(Gk_1Pk_1[0]), .A2(GikPik[0]), .ZN(GijPij[0]) );
endmodule


module SparseTree_N32_RADIX4 ( A, B, Cin, carryVector );
  input [31:0] A;
  input [31:0] B;
  output [7:0] carryVector;
  input Cin;
  wire   n7, n8, n9, \sigMatrix[0][63] , \sigMatrix[0][62] ,
         \sigMatrix[0][61] , \sigMatrix[0][60] , \sigMatrix[0][59] ,
         \sigMatrix[0][58] , \sigMatrix[0][57] , \sigMatrix[0][56] ,
         \sigMatrix[0][55] , \sigMatrix[0][54] , \sigMatrix[0][53] ,
         \sigMatrix[0][52] , \sigMatrix[0][51] , \sigMatrix[0][50] ,
         \sigMatrix[0][49] , \sigMatrix[0][48] , \sigMatrix[0][47] ,
         \sigMatrix[0][46] , \sigMatrix[0][45] , \sigMatrix[0][44] ,
         \sigMatrix[0][43] , \sigMatrix[0][42] , \sigMatrix[0][41] ,
         \sigMatrix[0][40] , \sigMatrix[0][39] , \sigMatrix[0][38] ,
         \sigMatrix[0][37] , \sigMatrix[0][36] , \sigMatrix[0][35] ,
         \sigMatrix[0][34] , \sigMatrix[0][33] , \sigMatrix[0][32] ,
         \sigMatrix[0][31] , \sigMatrix[0][30] , \sigMatrix[0][29] ,
         \sigMatrix[0][28] , \sigMatrix[0][27] , \sigMatrix[0][26] ,
         \sigMatrix[0][25] , \sigMatrix[0][24] , \sigMatrix[0][23] ,
         \sigMatrix[0][22] , \sigMatrix[0][21] , \sigMatrix[0][20] ,
         \sigMatrix[0][19] , \sigMatrix[0][18] , \sigMatrix[0][17] ,
         \sigMatrix[0][16] , \sigMatrix[0][15] , \sigMatrix[0][14] ,
         \sigMatrix[0][13] , \sigMatrix[0][12] , \sigMatrix[0][11] ,
         \sigMatrix[0][10] , \sigMatrix[0][9] , \sigMatrix[0][8] ,
         \sigMatrix[0][7] , \sigMatrix[0][6] , \sigMatrix[0][5] ,
         \sigMatrix[0][4] , \sigMatrix[0][3] , \sigMatrix[0][2] ,
         \sigMatrix[0][0] , \sigMatrix[1][63] , \sigMatrix[1][62] ,
         \sigMatrix[1][55] , \sigMatrix[1][54] , \sigMatrix[1][47] ,
         \sigMatrix[1][46] , \sigMatrix[1][39] , \sigMatrix[1][38] ,
         \sigMatrix[1][31] , \sigMatrix[1][30] , \sigMatrix[1][23] ,
         \sigMatrix[1][22] , \sigMatrix[1][15] , \sigMatrix[1][14] ,
         \sigMatrix[2][63] , \sigMatrix[2][62] , \sigMatrix[2][47] ,
         \sigMatrix[2][46] , \sigMatrix[2][31] , \sigMatrix[2][30] ,
         \sigMatrix[3][63] , \sigMatrix[3][62] , \sigMatrix[3][55] ,
         \sigMatrix[3][54] , n2, n3;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, SYNOPSYS_UNCONNECTED__7, 
        SYNOPSYS_UNCONNECTED__8, SYNOPSYS_UNCONNECTED__9, 
        SYNOPSYS_UNCONNECTED__10, SYNOPSYS_UNCONNECTED__11, 
        SYNOPSYS_UNCONNECTED__12, SYNOPSYS_UNCONNECTED__13, 
        SYNOPSYS_UNCONNECTED__14, SYNOPSYS_UNCONNECTED__15, 
        SYNOPSYS_UNCONNECTED__16, SYNOPSYS_UNCONNECTED__17, 
        SYNOPSYS_UNCONNECTED__18, SYNOPSYS_UNCONNECTED__19, 
        SYNOPSYS_UNCONNECTED__20, SYNOPSYS_UNCONNECTED__21, 
        SYNOPSYS_UNCONNECTED__22, SYNOPSYS_UNCONNECTED__23, 
        SYNOPSYS_UNCONNECTED__24, SYNOPSYS_UNCONNECTED__25, 
        SYNOPSYS_UNCONNECTED__26, SYNOPSYS_UNCONNECTED__27, 
        SYNOPSYS_UNCONNECTED__28, SYNOPSYS_UNCONNECTED__29, 
        SYNOPSYS_UNCONNECTED__30, SYNOPSYS_UNCONNECTED__31, 
        SYNOPSYS_UNCONNECTED__32, SYNOPSYS_UNCONNECTED__33, 
        SYNOPSYS_UNCONNECTED__34, SYNOPSYS_UNCONNECTED__35, 
        SYNOPSYS_UNCONNECTED__36, SYNOPSYS_UNCONNECTED__37, 
        SYNOPSYS_UNCONNECTED__38, SYNOPSYS_UNCONNECTED__39, 
        SYNOPSYS_UNCONNECTED__40, SYNOPSYS_UNCONNECTED__41, 
        SYNOPSYS_UNCONNECTED__42, SYNOPSYS_UNCONNECTED__43, 
        SYNOPSYS_UNCONNECTED__44, SYNOPSYS_UNCONNECTED__45, 
        SYNOPSYS_UNCONNECTED__46, SYNOPSYS_UNCONNECTED__47, 
        SYNOPSYS_UNCONNECTED__48, SYNOPSYS_UNCONNECTED__49;

  PGNetwork_N32 PGNetwork_1 ( .A(A), .B(B), .Cin(Cin), .gpSignals({
        \sigMatrix[0][63] , \sigMatrix[0][62] , \sigMatrix[0][61] , 
        \sigMatrix[0][60] , \sigMatrix[0][59] , \sigMatrix[0][58] , 
        \sigMatrix[0][57] , \sigMatrix[0][56] , \sigMatrix[0][55] , 
        \sigMatrix[0][54] , \sigMatrix[0][53] , \sigMatrix[0][52] , 
        \sigMatrix[0][51] , \sigMatrix[0][50] , \sigMatrix[0][49] , 
        \sigMatrix[0][48] , \sigMatrix[0][47] , \sigMatrix[0][46] , 
        \sigMatrix[0][45] , \sigMatrix[0][44] , \sigMatrix[0][43] , 
        \sigMatrix[0][42] , \sigMatrix[0][41] , \sigMatrix[0][40] , 
        \sigMatrix[0][39] , \sigMatrix[0][38] , \sigMatrix[0][37] , 
        \sigMatrix[0][36] , \sigMatrix[0][35] , \sigMatrix[0][34] , 
        \sigMatrix[0][33] , \sigMatrix[0][32] , \sigMatrix[0][31] , 
        \sigMatrix[0][30] , \sigMatrix[0][29] , \sigMatrix[0][28] , 
        \sigMatrix[0][27] , \sigMatrix[0][26] , \sigMatrix[0][25] , 
        \sigMatrix[0][24] , \sigMatrix[0][23] , \sigMatrix[0][22] , 
        \sigMatrix[0][21] , \sigMatrix[0][20] , \sigMatrix[0][19] , 
        \sigMatrix[0][18] , \sigMatrix[0][17] , \sigMatrix[0][16] , 
        \sigMatrix[0][15] , \sigMatrix[0][14] , \sigMatrix[0][13] , 
        \sigMatrix[0][12] , \sigMatrix[0][11] , \sigMatrix[0][10] , 
        \sigMatrix[0][9] , \sigMatrix[0][8] , \sigMatrix[0][7] , 
        \sigMatrix[0][6] , \sigMatrix[0][5] , \sigMatrix[0][4] , 
        \sigMatrix[0][3] , \sigMatrix[0][2] , SYNOPSYS_UNCONNECTED__0, 
        \sigMatrix[0][0] }) );
  ST_row1And2_N32 ST_row1And2_1 ( .\input ({\sigMatrix[0][63] , 
        \sigMatrix[0][62] , \sigMatrix[0][61] , \sigMatrix[0][60] , 
        \sigMatrix[0][59] , \sigMatrix[0][58] , \sigMatrix[0][57] , 
        \sigMatrix[0][56] , \sigMatrix[0][55] , \sigMatrix[0][54] , 
        \sigMatrix[0][53] , \sigMatrix[0][52] , \sigMatrix[0][51] , 
        \sigMatrix[0][50] , \sigMatrix[0][49] , \sigMatrix[0][48] , 
        \sigMatrix[0][47] , \sigMatrix[0][46] , \sigMatrix[0][45] , 
        \sigMatrix[0][44] , \sigMatrix[0][43] , \sigMatrix[0][42] , 
        \sigMatrix[0][41] , \sigMatrix[0][40] , \sigMatrix[0][39] , 
        \sigMatrix[0][38] , \sigMatrix[0][37] , \sigMatrix[0][36] , 
        \sigMatrix[0][35] , \sigMatrix[0][34] , \sigMatrix[0][33] , 
        \sigMatrix[0][32] , \sigMatrix[0][31] , \sigMatrix[0][30] , 
        \sigMatrix[0][29] , \sigMatrix[0][28] , \sigMatrix[0][27] , 
        \sigMatrix[0][26] , \sigMatrix[0][25] , \sigMatrix[0][24] , 
        \sigMatrix[0][23] , \sigMatrix[0][22] , \sigMatrix[0][21] , 
        \sigMatrix[0][20] , \sigMatrix[0][19] , \sigMatrix[0][18] , 
        \sigMatrix[0][17] , \sigMatrix[0][16] , \sigMatrix[0][15] , 
        \sigMatrix[0][14] , \sigMatrix[0][13] , \sigMatrix[0][12] , 
        \sigMatrix[0][11] , \sigMatrix[0][10] , \sigMatrix[0][9] , 
        \sigMatrix[0][8] , \sigMatrix[0][7] , \sigMatrix[0][6] , 
        \sigMatrix[0][5] , \sigMatrix[0][4] , \sigMatrix[0][3] , 
        \sigMatrix[0][2] , 1'b0, \sigMatrix[0][0] }), .\output ({
        \sigMatrix[1][63] , \sigMatrix[1][62] , SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, 
        SYNOPSYS_UNCONNECTED__4, SYNOPSYS_UNCONNECTED__5, 
        SYNOPSYS_UNCONNECTED__6, \sigMatrix[1][55] , \sigMatrix[1][54] , 
        SYNOPSYS_UNCONNECTED__7, SYNOPSYS_UNCONNECTED__8, 
        SYNOPSYS_UNCONNECTED__9, SYNOPSYS_UNCONNECTED__10, 
        SYNOPSYS_UNCONNECTED__11, SYNOPSYS_UNCONNECTED__12, \sigMatrix[1][47] , 
        \sigMatrix[1][46] , SYNOPSYS_UNCONNECTED__13, SYNOPSYS_UNCONNECTED__14, 
        SYNOPSYS_UNCONNECTED__15, SYNOPSYS_UNCONNECTED__16, 
        SYNOPSYS_UNCONNECTED__17, SYNOPSYS_UNCONNECTED__18, \sigMatrix[1][39] , 
        \sigMatrix[1][38] , SYNOPSYS_UNCONNECTED__19, SYNOPSYS_UNCONNECTED__20, 
        SYNOPSYS_UNCONNECTED__21, SYNOPSYS_UNCONNECTED__22, 
        SYNOPSYS_UNCONNECTED__23, SYNOPSYS_UNCONNECTED__24, \sigMatrix[1][31] , 
        \sigMatrix[1][30] , SYNOPSYS_UNCONNECTED__25, SYNOPSYS_UNCONNECTED__26, 
        SYNOPSYS_UNCONNECTED__27, SYNOPSYS_UNCONNECTED__28, 
        SYNOPSYS_UNCONNECTED__29, SYNOPSYS_UNCONNECTED__30, \sigMatrix[1][23] , 
        \sigMatrix[1][22] , SYNOPSYS_UNCONNECTED__31, SYNOPSYS_UNCONNECTED__32, 
        SYNOPSYS_UNCONNECTED__33, SYNOPSYS_UNCONNECTED__34, 
        SYNOPSYS_UNCONNECTED__35, SYNOPSYS_UNCONNECTED__36, \sigMatrix[1][15] , 
        \sigMatrix[1][14] , SYNOPSYS_UNCONNECTED__37, SYNOPSYS_UNCONNECTED__38, 
        SYNOPSYS_UNCONNECTED__39, SYNOPSYS_UNCONNECTED__40, 
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, n9, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47, SYNOPSYS_UNCONNECTED__48, 
        SYNOPSYS_UNCONNECTED__49}) );
  GeneralGenerate_0 G_1_0_0_0 ( .Gk_1(n9), .GikPik({\sigMatrix[1][15] , 
        \sigMatrix[1][14] }), .Gij(n8) );
  GeneralPropagateGenerate_0 PG_1_0_1_0 ( .Gk_1Pk_1({\sigMatrix[1][23] , 
        \sigMatrix[1][22] }), .GikPik({\sigMatrix[1][31] , \sigMatrix[1][30] }), .GijPij({\sigMatrix[2][31] , \sigMatrix[2][30] }) );
  GeneralPropagateGenerate_26 PG_1_0_2_0 ( .Gk_1Pk_1({\sigMatrix[1][39] , 
        \sigMatrix[1][38] }), .GikPik({\sigMatrix[1][47] , \sigMatrix[1][46] }), .GijPij({\sigMatrix[2][47] , \sigMatrix[2][46] }) );
  GeneralPropagateGenerate_25 PG_1_0_3_0 ( .Gk_1Pk_1({\sigMatrix[1][55] , 
        \sigMatrix[1][54] }), .GikPik({\sigMatrix[1][63] , \sigMatrix[1][62] }), .GijPij({\sigMatrix[2][63] , \sigMatrix[2][62] }) );
  GeneralGenerate_9 G_1_1_0_0 ( .Gk_1(n2), .GikPik({\sigMatrix[1][23] , 
        \sigMatrix[1][22] }), .Gij(carryVector[2]) );
  GeneralGenerate_8 G_1_1_0_1 ( .Gk_1(n8), .GikPik({\sigMatrix[2][31] , 
        \sigMatrix[2][30] }), .Gij(n7) );
  GeneralPropagateGenerate_24 PG_1_1_1_0 ( .Gk_1Pk_1({\sigMatrix[2][47] , 
        \sigMatrix[2][46] }), .GikPik({\sigMatrix[1][55] , \sigMatrix[1][54] }), .GijPij({\sigMatrix[3][55] , \sigMatrix[3][54] }) );
  GeneralPropagateGenerate_23 PG_1_1_1_1 ( .Gk_1Pk_1({n3, \sigMatrix[2][46] }), 
        .GikPik({\sigMatrix[2][63] , \sigMatrix[2][62] }), .GijPij({
        \sigMatrix[3][63] , \sigMatrix[3][62] }) );
  GeneralGenerate_7 G_1_2_0_0 ( .Gk_1(n7), .GikPik({\sigMatrix[1][39] , 
        \sigMatrix[1][38] }), .Gij(carryVector[4]) );
  GeneralGenerate_6 G_1_2_0_1 ( .Gk_1(n7), .GikPik({n3, \sigMatrix[2][46] }), 
        .Gij(carryVector[5]) );
  GeneralGenerate_5 G_1_2_0_2 ( .Gk_1(n7), .GikPik({\sigMatrix[3][55] , 
        \sigMatrix[3][54] }), .Gij(carryVector[6]) );
  GeneralGenerate_4 G_1_2_0_3 ( .Gk_1(n7), .GikPik({\sigMatrix[3][63] , 
        \sigMatrix[3][62] }), .Gij(carryVector[7]) );
  BUF_X1 U2 ( .A(n2), .Z(carryVector[1]) );
  BUF_X1 U3 ( .A(n8), .Z(n2) );
  BUF_X2 U4 ( .A(n7), .Z(carryVector[3]) );
  CLKBUF_X1 U5 ( .A(\sigMatrix[2][47] ), .Z(n3) );
  CLKBUF_X1 U6 ( .A(n9), .Z(carryVector[0]) );
endmodule


module FA_0 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n2, n3;

  XOR2_X1 U3 ( .A(Ci), .B(n3), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n3) );
  INV_X1 U1 ( .A(n2), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n3), .B2(Ci), .ZN(n2) );
endmodule


module FA_61 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_62 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_63 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_N4_0 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_0 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_63 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_62 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_61 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module MUX21_GENERIC_N4_0 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;
  wire   n6, n7, n8, n9, n5;

  INV_X1 U1 ( .A(n7), .ZN(Y[2]) );
  AOI22_X1 U2 ( .A1(A[2]), .A2(n5), .B1(B[2]), .B2(SEL), .ZN(n7) );
  INV_X1 U3 ( .A(n6), .ZN(Y[3]) );
  AOI22_X1 U4 ( .A1(A[3]), .A2(n5), .B1(B[3]), .B2(SEL), .ZN(n6) );
  INV_X1 U5 ( .A(n8), .ZN(Y[1]) );
  AOI22_X1 U6 ( .A1(A[1]), .A2(n5), .B1(B[1]), .B2(SEL), .ZN(n8) );
  INV_X1 U7 ( .A(n9), .ZN(Y[0]) );
  AOI22_X1 U8 ( .A1(A[0]), .A2(n5), .B1(B[0]), .B2(SEL), .ZN(n9) );
  INV_X1 U9 ( .A(SEL), .ZN(n5) );
endmodule


module FA_57 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_58 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_59 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_60 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  CLKBUF_X1 U1 ( .A(n5), .Z(n4) );
  INV_X1 U2 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(n5), .B2(Ci), .ZN(n6) );
endmodule


module RCA_N4_15 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_60 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_59 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_58 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_57 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module CSB_generic_N4_0 ( A, B, Cin, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;

  wire   [3:0] RCA1toMux;
  wire   [3:0] RCA2toMux;

  RCA_N4_0 RCA_1 ( .A(A), .B(B), .Ci(1'b0), .S(RCA1toMux) );
  RCA_N4_15 RCA_2 ( .A(A), .B(B), .Ci(1'b1), .S(RCA2toMux) );
  MUX21_GENERIC_N4_0 MUX21_1 ( .A(RCA1toMux), .B(RCA2toMux), .SEL(Cin), .Y(S)
         );
endmodule


module FA_49 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  CLKBUF_X1 U1 ( .A(Ci), .Z(n4) );
  INV_X1 U2 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(n5), .B2(n4), .ZN(n6) );
endmodule


module FA_50 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(n4), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  CLKBUF_X1 U1 ( .A(Ci), .Z(n4) );
  INV_X1 U2 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
endmodule


module FA_51 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(n4), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  CLKBUF_X1 U1 ( .A(Ci), .Z(n4) );
  INV_X1 U2 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
endmodule


module FA_52 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(B), .B(A), .Z(n6) );
  CLKBUF_X1 U1 ( .A(B), .Z(n4) );
  CLKBUF_X1 U2 ( .A(n6), .Z(n5) );
  INV_X1 U5 ( .A(n7), .ZN(Co) );
  AOI22_X1 U6 ( .A1(n4), .A2(A), .B1(n6), .B2(Ci), .ZN(n7) );
endmodule


module RCA_N4_13 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_52 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_51 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_50 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_49 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_53 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_54 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_55 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_56 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_N4_14 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_56 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_55 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_54 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_53 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module MUX21_GENERIC_N4_7 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;
  wire   n10, n11, n12, n13, n14;

  INV_X1 U1 ( .A(n11), .ZN(Y[1]) );
  INV_X1 U2 ( .A(n12), .ZN(Y[2]) );
  INV_X1 U3 ( .A(n13), .ZN(Y[3]) );
  INV_X1 U4 ( .A(n10), .ZN(Y[0]) );
  AOI22_X1 U5 ( .A1(A[3]), .A2(n14), .B1(B[3]), .B2(SEL), .ZN(n13) );
  AOI22_X1 U6 ( .A1(A[2]), .A2(n14), .B1(B[2]), .B2(SEL), .ZN(n12) );
  AOI22_X1 U7 ( .A1(A[1]), .A2(n14), .B1(B[1]), .B2(SEL), .ZN(n11) );
  AOI22_X1 U8 ( .A1(A[0]), .A2(n14), .B1(B[0]), .B2(SEL), .ZN(n10) );
  INV_X1 U9 ( .A(SEL), .ZN(n14) );
endmodule


module CSB_generic_N4_7 ( A, B, Cin, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;

  wire   [3:0] RCA1toMux;
  wire   [3:0] RCA2toMux;

  RCA_N4_14 RCA_1 ( .A(A), .B(B), .Ci(1'b0), .S(RCA1toMux) );
  RCA_N4_13 RCA_2 ( .A(A), .B(B), .Ci(1'b1), .S(RCA2toMux) );
  MUX21_GENERIC_N4_7 MUX21_1 ( .A(RCA1toMux), .B(RCA2toMux), .SEL(Cin), .Y(S)
         );
endmodule


module FA_1 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  CLKBUF_X1 U1 ( .A(Ci), .Z(n4) );
  INV_X1 U2 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(n5), .B2(n4), .ZN(n6) );
endmodule


module FA_2 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(Ci), .B2(n4), .ZN(n5) );
endmodule


module FA_3 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(Ci), .B2(n4), .ZN(n5) );
endmodule


module FA_4 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(B), .B(A), .Z(n6) );
  CLKBUF_X1 U1 ( .A(n6), .Z(n4) );
  CLKBUF_X1 U2 ( .A(B), .Z(n5) );
  INV_X1 U5 ( .A(n7), .ZN(Co) );
  AOI22_X1 U6 ( .A1(n5), .A2(A), .B1(n6), .B2(Ci), .ZN(n7) );
endmodule


module RCA_N4_1 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_4 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_3 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_2 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_1 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_5 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_6 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_7 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_8 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_N4_2 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_8 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_7 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_6 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_5 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module MUX21_GENERIC_N4_1 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;


  MUX2_X1 U1 ( .A(A[0]), .B(B[0]), .S(SEL), .Z(Y[0]) );
  MUX2_X1 U2 ( .A(A[1]), .B(B[1]), .S(SEL), .Z(Y[1]) );
  MUX2_X1 U3 ( .A(A[2]), .B(B[2]), .S(SEL), .Z(Y[2]) );
  MUX2_X1 U4 ( .A(A[3]), .B(B[3]), .S(SEL), .Z(Y[3]) );
endmodule


module CSB_generic_N4_1 ( A, B, Cin, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;

  wire   [3:0] RCA1toMux;
  wire   [3:0] RCA2toMux;

  RCA_N4_2 RCA_1 ( .A(A), .B(B), .Ci(1'b0), .S(RCA1toMux) );
  RCA_N4_1 RCA_2 ( .A(A), .B(B), .Ci(1'b1), .S(RCA2toMux) );
  MUX21_GENERIC_N4_1 MUX21_1 ( .A(RCA1toMux), .B(RCA2toMux), .SEL(Cin), .Y(S)
         );
endmodule


module FA_9 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_10 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(n4), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  CLKBUF_X1 U1 ( .A(Ci), .Z(n4) );
  INV_X1 U2 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(Ci), .B2(n5), .ZN(n6) );
endmodule


module FA_11 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(Ci), .B2(n4), .ZN(n5) );
endmodule


module FA_12 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(B), .B(A), .Z(n6) );
  CLKBUF_X1 U1 ( .A(n6), .Z(n4) );
  CLKBUF_X1 U2 ( .A(B), .Z(n5) );
  INV_X1 U5 ( .A(n7), .ZN(Co) );
  AOI22_X1 U6 ( .A1(n5), .A2(A), .B1(n6), .B2(Ci), .ZN(n7) );
endmodule


module RCA_N4_3 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_12 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_11 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_10 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_9 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_13 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_14 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_15 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_16 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_N4_4 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_16 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_15 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_14 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_13 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module MUX21_GENERIC_N4_2 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;


  MUX2_X1 U1 ( .A(A[1]), .B(B[1]), .S(SEL), .Z(Y[1]) );
  MUX2_X1 U2 ( .A(A[2]), .B(B[2]), .S(SEL), .Z(Y[2]) );
  MUX2_X1 U3 ( .A(A[0]), .B(B[0]), .S(SEL), .Z(Y[0]) );
  MUX2_X1 U4 ( .A(A[3]), .B(B[3]), .S(SEL), .Z(Y[3]) );
endmodule


module CSB_generic_N4_2 ( A, B, Cin, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;

  wire   [3:0] RCA1toMux;
  wire   [3:0] RCA2toMux;

  RCA_N4_4 RCA_1 ( .A(A), .B(B), .Ci(1'b0), .S(RCA1toMux) );
  RCA_N4_3 RCA_2 ( .A(A), .B(B), .Ci(1'b1), .S(RCA2toMux) );
  MUX21_GENERIC_N4_2 MUX21_1 ( .A(RCA1toMux), .B(RCA2toMux), .SEL(Cin), .Y(S)
         );
endmodule


module FA_17 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n5) );
  CLKBUF_X1 U1 ( .A(Ci), .Z(n4) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n5), .B2(n4), .ZN(n6) );
  INV_X1 U5 ( .A(n6), .ZN(Co) );
endmodule


module FA_18 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_19 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(Ci), .B2(n4), .ZN(n5) );
endmodule


module FA_20 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6, n7;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n6) );
  CLKBUF_X1 U1 ( .A(B), .Z(n4) );
  CLKBUF_X1 U2 ( .A(n6), .Z(n5) );
  INV_X1 U5 ( .A(n7), .ZN(Co) );
  AOI22_X1 U6 ( .A1(n4), .A2(A), .B1(n6), .B2(Ci), .ZN(n7) );
endmodule


module RCA_N4_5 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_20 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_19 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_18 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_17 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_21 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  AOI22_X1 U1 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
  INV_X1 U2 ( .A(n5), .ZN(Co) );
endmodule


module FA_22 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_23 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_24 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_N4_6 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_24 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_23 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_22 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_21 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module MUX21_GENERIC_N4_3 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;


  MUX2_X1 U1 ( .A(A[0]), .B(B[0]), .S(SEL), .Z(Y[0]) );
  MUX2_X1 U2 ( .A(A[1]), .B(B[1]), .S(SEL), .Z(Y[1]) );
  MUX2_X1 U3 ( .A(A[2]), .B(B[2]), .S(SEL), .Z(Y[2]) );
  MUX2_X1 U4 ( .A(A[3]), .B(B[3]), .S(SEL), .Z(Y[3]) );
endmodule


module CSB_generic_N4_3 ( A, B, Cin, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;

  wire   [3:0] RCA1toMux;
  wire   [3:0] RCA2toMux;

  RCA_N4_6 RCA_1 ( .A(A), .B(B), .Ci(1'b0), .S(RCA1toMux) );
  RCA_N4_5 RCA_2 ( .A(A), .B(B), .Ci(1'b1), .S(RCA2toMux) );
  MUX21_GENERIC_N4_3 MUX21_1 ( .A(RCA1toMux), .B(RCA2toMux), .SEL(Cin), .Y(S)
         );
endmodule


module FA_25 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_26 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(Ci), .B2(n4), .ZN(n5) );
endmodule


module FA_27 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(Ci), .B2(n4), .ZN(n5) );
endmodule


module FA_28 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(B), .B(A), .Z(n5) );
  CLKBUF_X1 U1 ( .A(n5), .Z(n4) );
  INV_X1 U2 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(B), .A2(A), .B1(n5), .B2(Ci), .ZN(n6) );
endmodule


module RCA_N4_7 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_28 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_27 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_26 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_25 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_29 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_30 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_31 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_32 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_N4_8 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_32 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_31 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_30 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_29 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module MUX21_GENERIC_N4_4 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;
  wire   n8, net2964, n5, n6, n10, n11;

  INV_X1 U1 ( .A(A[1]), .ZN(n5) );
  INV_X1 U2 ( .A(B[1]), .ZN(n6) );
  MUX2_X1 U3 ( .A(n5), .B(n6), .S(SEL), .Z(n8) );
  MUX2_X1 U4 ( .A(A[3]), .B(B[3]), .S(SEL), .Z(Y[3]) );
  INV_X1 U5 ( .A(SEL), .ZN(net2964) );
  INV_X1 U6 ( .A(n8), .ZN(Y[1]) );
  INV_X1 U7 ( .A(n11), .ZN(Y[2]) );
  INV_X1 U8 ( .A(n10), .ZN(Y[0]) );
  AOI22_X1 U9 ( .A1(net2964), .A2(A[2]), .B1(SEL), .B2(B[2]), .ZN(n11) );
  AOI22_X1 U10 ( .A1(net2964), .A2(A[0]), .B1(SEL), .B2(B[0]), .ZN(n10) );
endmodule


module CSB_generic_N4_4 ( A, B, Cin, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;

  wire   [3:0] RCA1toMux;
  wire   [3:0] RCA2toMux;

  RCA_N4_8 RCA_1 ( .A(A), .B(B), .Ci(1'b0), .S(RCA1toMux) );
  RCA_N4_7 RCA_2 ( .A(A), .B(B), .Ci(1'b1), .S(RCA2toMux) );
  MUX21_GENERIC_N4_4 MUX21_1 ( .A(RCA1toMux), .B(RCA2toMux), .SEL(Cin), .Y(S)
         );
endmodule


module FA_33 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  AOI22_X1 U1 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
  INV_X1 U2 ( .A(n5), .ZN(Co) );
endmodule


module FA_34 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(Ci), .B2(n4), .ZN(n5) );
endmodule


module FA_35 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  AOI22_X1 U1 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
  INV_X1 U2 ( .A(n5), .ZN(Co) );
endmodule


module FA_36 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(B), .B(A), .Z(n5) );
  CLKBUF_X1 U1 ( .A(B), .Z(n4) );
  INV_X1 U2 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(n4), .A2(A), .B1(n5), .B2(Ci), .ZN(n6) );
endmodule


module RCA_N4_9 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_36 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_35 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_34 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_33 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_37 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  AOI22_X1 U1 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
  INV_X1 U2 ( .A(n5), .ZN(Co) );
endmodule


module FA_38 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_39 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  AOI22_X1 U1 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
  INV_X1 U2 ( .A(n5), .ZN(Co) );
endmodule


module FA_40 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_N4_10 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_40 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_39 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_38 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_37 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module MUX21_GENERIC_N4_5 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;
  wire   n10, n11, n12, n13, n14, n15;

  INV_X1 U1 ( .A(SEL), .ZN(n10) );
  INV_X1 U2 ( .A(SEL), .ZN(n15) );
  INV_X1 U3 ( .A(n12), .ZN(Y[1]) );
  AOI22_X1 U4 ( .A1(n15), .A2(A[1]), .B1(SEL), .B2(B[1]), .ZN(n12) );
  INV_X1 U5 ( .A(n13), .ZN(Y[2]) );
  AOI22_X1 U6 ( .A1(n15), .A2(A[2]), .B1(SEL), .B2(B[2]), .ZN(n13) );
  INV_X1 U7 ( .A(n14), .ZN(Y[3]) );
  AOI22_X1 U8 ( .A1(n10), .A2(A[3]), .B1(B[3]), .B2(SEL), .ZN(n14) );
  INV_X1 U9 ( .A(n11), .ZN(Y[0]) );
  AOI22_X1 U10 ( .A1(n10), .A2(A[0]), .B1(SEL), .B2(B[0]), .ZN(n11) );
endmodule


module CSB_generic_N4_5 ( A, B, Cin, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;

  wire   [3:0] RCA1toMux;
  wire   [3:0] RCA2toMux;

  RCA_N4_10 RCA_1 ( .A(A), .B(B), .Ci(1'b0), .S(RCA1toMux) );
  RCA_N4_9 RCA_2 ( .A(A), .B(B), .Ci(1'b1), .S(RCA2toMux) );
  MUX21_GENERIC_N4_5 MUX21_1 ( .A(RCA1toMux), .B(RCA2toMux), .SEL(Cin), .Y(S)
         );
endmodule


module FA_41 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_42 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(Ci), .B2(n4), .ZN(n5) );
endmodule


module FA_43 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  AOI22_X1 U1 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
  INV_X1 U2 ( .A(n5), .ZN(Co) );
endmodule


module FA_44 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5, n6;

  XOR2_X1 U3 ( .A(Ci), .B(n5), .Z(S) );
  XOR2_X1 U4 ( .A(B), .B(A), .Z(n5) );
  CLKBUF_X1 U1 ( .A(B), .Z(n4) );
  INV_X1 U2 ( .A(n6), .ZN(Co) );
  AOI22_X1 U5 ( .A1(n4), .A2(A), .B1(n5), .B2(Ci), .ZN(n6) );
endmodule


module RCA_N4_11 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_44 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_43 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_42 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_41 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module FA_45 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_46 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_47 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  AOI22_X1 U1 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
  INV_X1 U2 ( .A(n5), .ZN(Co) );
endmodule


module FA_48 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module RCA_N4_12 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire   [3:1] CTMP;

  FA_48 FAI_1 ( .A(A[0]), .B(B[0]), .Ci(Ci), .S(S[0]), .Co(CTMP[1]) );
  FA_47 FAI_2 ( .A(A[1]), .B(B[1]), .Ci(CTMP[1]), .S(S[1]), .Co(CTMP[2]) );
  FA_46 FAI_3 ( .A(A[2]), .B(B[2]), .Ci(CTMP[2]), .S(S[2]), .Co(CTMP[3]) );
  FA_45 FAI_4 ( .A(A[3]), .B(B[3]), .Ci(CTMP[3]), .S(S[3]), .Co(Co) );
endmodule


module MUX21_GENERIC_N4_6 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;
  wire   n5, n10, n11, n12, n13;

  INV_X1 U1 ( .A(SEL), .ZN(n5) );
  INV_X1 U2 ( .A(n11), .ZN(Y[1]) );
  INV_X1 U3 ( .A(n12), .ZN(Y[2]) );
  INV_X1 U4 ( .A(n13), .ZN(Y[3]) );
  INV_X1 U5 ( .A(n10), .ZN(Y[0]) );
  AOI22_X1 U6 ( .A1(A[3]), .A2(n5), .B1(B[3]), .B2(SEL), .ZN(n13) );
  AOI22_X1 U7 ( .A1(A[2]), .A2(n5), .B1(B[2]), .B2(SEL), .ZN(n12) );
  AOI22_X1 U8 ( .A1(A[1]), .A2(n5), .B1(B[1]), .B2(SEL), .ZN(n11) );
  AOI22_X1 U9 ( .A1(A[0]), .A2(n5), .B1(B[0]), .B2(SEL), .ZN(n10) );
endmodule


module CSB_generic_N4_6 ( A, B, Cin, S );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;

  wire   [3:0] RCA1toMux;
  wire   [3:0] RCA2toMux;

  RCA_N4_12 RCA_1 ( .A(A), .B(B), .Ci(1'b0), .S(RCA1toMux) );
  RCA_N4_11 RCA_2 ( .A(A), .B(B), .Ci(1'b1), .S(RCA2toMux) );
  MUX21_GENERIC_N4_6 MUX21_1 ( .A(RCA1toMux), .B(RCA2toMux), .SEL(Cin), .Y(S)
         );
endmodule


module CSSG_generic_N32_RADIX4 ( A, B, Cin, carry_vector, Cout, S );
  input [31:0] A;
  input [31:0] B;
  input [7:0] carry_vector;
  output [31:0] S;
  input Cin;
  output Cout;

  assign Cout = carry_vector[7];

  CSB_generic_N4_0 CSB_0 ( .A(A[3:0]), .B(B[3:0]), .Cin(Cin), .S(S[3:0]) );
  CSB_generic_N4_7 CSB_1 ( .A(A[7:4]), .B(B[7:4]), .Cin(carry_vector[0]), .S(
        S[7:4]) );
  CSB_generic_N4_6 CSB_2 ( .A(A[11:8]), .B(B[11:8]), .Cin(carry_vector[1]), 
        .S(S[11:8]) );
  CSB_generic_N4_5 CSB_3 ( .A(A[15:12]), .B(B[15:12]), .Cin(carry_vector[2]), 
        .S(S[15:12]) );
  CSB_generic_N4_4 CSB_4 ( .A(A[19:16]), .B(B[19:16]), .Cin(carry_vector[3]), 
        .S(S[19:16]) );
  CSB_generic_N4_3 CSB_5 ( .A(A[23:20]), .B(B[23:20]), .Cin(carry_vector[4]), 
        .S(S[23:20]) );
  CSB_generic_N4_2 CSB_6 ( .A(A[27:24]), .B(B[27:24]), .Cin(carry_vector[5]), 
        .S(S[27:24]) );
  CSB_generic_N4_1 CSB_7 ( .A(A[31:28]), .B(B[31:28]), .Cin(carry_vector[6]), 
        .S(S[31:28]) );
endmodule


module completeAdder ( A, B, Cin, Cout, Sum );
  input [31:0] A;
  input [31:0] B;
  output [31:0] Sum;
  input Cin;
  output Cout;
  wire   net1646, net1650, net1652, net1654, net1662, net1664, net1681,
         net1683, net1815, net1841, net1884, net1660, n1, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16;
  wire   [31:0] B_XORed;
  wire   [7:0] carryConnect;

  SparseTree_N32_RADIX4 ST ( .A(A), .B({B_XORed[31:29], n7, B_XORed[27:25], 
        n10, B_XORed[23:3], n14, B_XORed[1:0]}), .Cin(net1652), .carryVector(
        carryConnect) );
  CSSG_generic_N32_RADIX4 CSSG ( .A(A), .B({B_XORed[31:22], net1815, 
        B_XORed[20], net1841, n12, n11, n5, n2, net1884, B_XORed[13], n4, n6, 
        n8, B_XORed[9], n3, net1683, n9, B_XORed[5:4], n16, n13, n15, net1681}), .Cin(net1646), .carry_vector(carryConnect), .Cout(Cout), .S(Sum) );
  XOR2_X1 U34 ( .A(net1652), .B(B[8]), .Z(B_XORed[8]) );
  XOR2_X1 U37 ( .A(Cin), .B(B[5]), .Z(B_XORed[5]) );
  XOR2_X1 U38 ( .A(net1662), .B(B[4]), .Z(B_XORed[4]) );
  XOR2_X1 U40 ( .A(net1652), .B(B[31]), .Z(B_XORed[31]) );
  XOR2_X1 U41 ( .A(net1650), .B(B[30]), .Z(B_XORed[30]) );
  XOR2_X1 U43 ( .A(net1652), .B(B[29]), .Z(B_XORed[29]) );
  XOR2_X1 U44 ( .A(net1662), .B(B[28]), .Z(B_XORed[28]) );
  XOR2_X1 U45 ( .A(net1652), .B(B[27]), .Z(B_XORed[27]) );
  XOR2_X1 U46 ( .A(n1), .B(B[26]), .Z(B_XORed[26]) );
  XOR2_X1 U48 ( .A(net1652), .B(B[24]), .Z(B_XORed[24]) );
  XOR2_X1 U50 ( .A(net1654), .B(B[22]), .Z(B_XORed[22]) );
  XOR2_X1 U52 ( .A(net1660), .B(B[20]), .Z(B_XORed[20]) );
  XOR2_X1 U55 ( .A(net1652), .B(B[18]), .Z(B_XORed[18]) );
  XOR2_X1 U57 ( .A(net1652), .B(B[16]), .Z(B_XORed[16]) );
  XOR2_X1 U61 ( .A(net1654), .B(B[12]), .Z(B_XORed[12]) );
  XOR2_X1 U63 ( .A(net1654), .B(B[10]), .Z(B_XORed[10]) );
  XOR2_X1 U59 ( .A(net1660), .B(B[14]), .Z(B_XORed[14]) );
  XOR2_X1 U64 ( .A(Cin), .B(B[0]), .Z(B_XORed[0]) );
  CLKBUF_X1 U65 ( .A(net1652), .Z(n1) );
  CLKBUF_X1 U66 ( .A(B_XORed[15]), .Z(n2) );
  BUF_X1 U67 ( .A(B_XORed[0]), .Z(net1681) );
  XOR2_X1 U68 ( .A(net1652), .B(B[25]), .Z(B_XORed[25]) );
  CLKBUF_X1 U69 ( .A(B_XORed[17]), .Z(n11) );
  BUF_X1 U70 ( .A(net1650), .Z(net1646) );
  XOR2_X1 U71 ( .A(net1662), .B(B[8]), .Z(n3) );
  CLKBUF_X1 U72 ( .A(B_XORed[24]), .Z(n10) );
  XOR2_X1 U73 ( .A(net1660), .B(B[12]), .Z(n4) );
  XOR2_X1 U74 ( .A(net1652), .B(B[16]), .Z(n5) );
  XOR2_X1 U75 ( .A(Cin), .B(B[15]), .Z(B_XORed[15]) );
  BUF_X2 U76 ( .A(Cin), .Z(net1660) );
  XOR2_X1 U77 ( .A(net1654), .B(B[19]), .Z(B_XORed[19]) );
  CLKBUF_X1 U78 ( .A(B_XORed[19]), .Z(net1841) );
  BUF_X2 U79 ( .A(Cin), .Z(net1662) );
  XOR2_X1 U80 ( .A(net1662), .B(B[21]), .Z(B_XORed[21]) );
  CLKBUF_X1 U81 ( .A(B_XORed[21]), .Z(net1815) );
  XOR2_X1 U82 ( .A(net1660), .B(B[7]), .Z(B_XORed[7]) );
  CLKBUF_X1 U83 ( .A(B_XORed[7]), .Z(net1683) );
  CLKBUF_X1 U84 ( .A(B_XORed[14]), .Z(net1884) );
  BUF_X1 U85 ( .A(Cin), .Z(net1664) );
  XOR2_X1 U86 ( .A(net1646), .B(B[11]), .Z(n6) );
  CLKBUF_X1 U87 ( .A(B_XORed[28]), .Z(n7) );
  CLKBUF_X1 U88 ( .A(B_XORed[10]), .Z(n8) );
  CLKBUF_X1 U89 ( .A(B_XORed[6]), .Z(n9) );
  XOR2_X1 U90 ( .A(net1654), .B(B[6]), .Z(B_XORed[6]) );
  CLKBUF_X1 U91 ( .A(B_XORed[18]), .Z(n12) );
  XOR2_X1 U92 ( .A(net1646), .B(B[2]), .Z(n13) );
  XOR2_X1 U93 ( .A(net1660), .B(B[2]), .Z(n14) );
  CLKBUF_X1 U94 ( .A(B_XORed[1]), .Z(n15) );
  XOR2_X1 U95 ( .A(net1662), .B(B[1]), .Z(B_XORed[1]) );
  XOR2_X1 U96 ( .A(net1654), .B(B[17]), .Z(B_XORed[17]) );
  CLKBUF_X1 U97 ( .A(B_XORed[3]), .Z(n16) );
  XOR2_X1 U98 ( .A(net1664), .B(B[3]), .Z(B_XORed[3]) );
  XOR2_X1 U99 ( .A(net1664), .B(B[11]), .Z(B_XORed[11]) );
  CLKBUF_X1 U100 ( .A(net1652), .Z(net1650) );
  XOR2_X1 U101 ( .A(Cin), .B(B[9]), .Z(B_XORed[9]) );
  XOR2_X1 U102 ( .A(Cin), .B(B[23]), .Z(B_XORed[23]) );
  XOR2_X1 U103 ( .A(Cin), .B(B[13]), .Z(B_XORed[13]) );
  BUF_X2 U104 ( .A(Cin), .Z(net1654) );
  BUF_X4 U105 ( .A(Cin), .Z(net1652) );
endmodule

