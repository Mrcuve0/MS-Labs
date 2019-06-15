
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


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(a), .A2(b), .ZN(gp[1]) );
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


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(a), .A2(b), .ZN(gp[1]) );
endmodule


module PGNetBlock_13 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(a), .A2(b), .ZN(gp[1]) );
endmodule


module PGNetBlock_14 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(gp[1]) );
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

  INV_X1 U1 ( .A(a), .ZN(n1) );
  XNOR2_X1 U2 ( .A(b), .B(n1), .ZN(gp[0]) );
  AND2_X1 U3 ( .A1(b), .A2(a), .ZN(gp[1]) );
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
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(gp[1]) );
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
  wire   n1;

  INV_X1 U1 ( .A(a), .ZN(n1) );
  XNOR2_X1 U2 ( .A(b), .B(n1), .ZN(gp[0]) );
  AND2_X1 U3 ( .A1(b), .A2(a), .ZN(gp[1]) );
endmodule


module PGNetBlock_23 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(a), .A2(b), .ZN(gp[1]) );
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
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(gp[1]) );
endmodule


module PGNetBlock_26 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(gp[1]) );
endmodule


module PGNetBlock_27 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(a), .A2(b), .ZN(gp[1]) );
endmodule


module PGNetBlock_28 ( a, b, gp );
  output [1:0] gp;
  input a, b;
  wire   n1;

  INV_X1 U1 ( .A(a), .ZN(n1) );
  XNOR2_X1 U2 ( .A(b), .B(n1), .ZN(gp[0]) );
  AND2_X1 U3 ( .A1(b), .A2(a), .ZN(gp[1]) );
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
  AND2_X1 U1 ( .A1(b), .A2(a), .ZN(gp[1]) );
endmodule


module PGNetBlock_31 ( a, b, gp );
  output [1:0] gp;
  input a, b;


  XOR2_X1 U2 ( .A(b), .B(a), .Z(gp[0]) );
  AND2_X1 U1 ( .A1(a), .A2(b), .ZN(gp[1]) );
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

  AOI21_X1 U1 ( .B1(Gk_1), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
  INV_X1 U2 ( .A(n3), .ZN(Gij) );
endmodule


module GeneralPropagateGenerate_22 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  AND2_X1 U1 ( .A1(Gk_1Pk_1[0]), .A2(GikPik[0]), .ZN(GijPij[0]) );
  INV_X1 U2 ( .A(n3), .ZN(GijPij[1]) );
  AOI21_X1 U3 ( .B1(GikPik[0]), .B2(Gk_1Pk_1[1]), .A(GikPik[1]), .ZN(n3) );
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
  AOI21_X1 U2 ( .B1(GikPik[0]), .B2(Gk_1Pk_1[1]), .A(GikPik[1]), .ZN(n3) );
  AND2_X1 U3 ( .A1(Gk_1Pk_1[0]), .A2(GikPik[0]), .ZN(GijPij[0]) );
endmodule


module GeneralPropagateGenerate_21 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(GijPij[1]) );
  AOI21_X1 U2 ( .B1(GikPik[0]), .B2(Gk_1Pk_1[1]), .A(GikPik[1]), .ZN(n3) );
  AND2_X1 U3 ( .A1(GikPik[0]), .A2(Gk_1Pk_1[0]), .ZN(GijPij[0]) );
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
  AOI21_X1 U2 ( .B1(Gk_1Pk_1[1]), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
  AND2_X1 U3 ( .A1(Gk_1Pk_1[0]), .A2(GikPik[0]), .ZN(GijPij[0]) );
endmodule


module GeneralPropagateGenerate_6 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(GijPij[1]) );
  AOI21_X1 U2 ( .B1(Gk_1Pk_1[1]), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
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

  AND2_X1 U1 ( .A1(GikPik[0]), .A2(Gk_1Pk_1[0]), .ZN(GijPij[0]) );
  INV_X1 U2 ( .A(n3), .ZN(GijPij[1]) );
  AOI21_X1 U3 ( .B1(Gk_1Pk_1[1]), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
endmodule


module GeneralPropagateGenerate_9 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(GijPij[1]) );
  AOI21_X1 U2 ( .B1(GikPik[0]), .B2(Gk_1Pk_1[1]), .A(GikPik[1]), .ZN(n3) );
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
  AND2_X1 U3 ( .A1(Gk_1Pk_1[0]), .A2(GikPik[0]), .ZN(GijPij[0]) );
endmodule


module GeneralPropagateGenerate_11 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(GijPij[1]) );
  AOI21_X1 U2 ( .B1(Gk_1Pk_1[1]), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
  AND2_X1 U3 ( .A1(Gk_1Pk_1[0]), .A2(GikPik[0]), .ZN(GijPij[0]) );
endmodule


module GeneralPropagateGenerate_12 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(GijPij[1]) );
  AOI21_X1 U2 ( .B1(GikPik[0]), .B2(Gk_1Pk_1[1]), .A(GikPik[1]), .ZN(n3) );
  AND2_X1 U3 ( .A1(Gk_1Pk_1[0]), .A2(GikPik[0]), .ZN(GijPij[0]) );
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
  AOI21_X1 U2 ( .B1(GikPik[0]), .B2(Gk_1Pk_1[1]), .A(GikPik[1]), .ZN(n3) );
  AND2_X1 U3 ( .A1(Gk_1Pk_1[0]), .A2(GikPik[0]), .ZN(GijPij[0]) );
endmodule


module GeneralPropagateGenerate_15 ( Gk_1Pk_1, GikPik, GijPij );
  input [1:0] Gk_1Pk_1;
  input [1:0] GikPik;
  output [1:0] GijPij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(GijPij[1]) );
  AND2_X1 U2 ( .A1(GikPik[0]), .A2(Gk_1Pk_1[0]), .ZN(GijPij[0]) );
  AOI21_X1 U3 ( .B1(GikPik[0]), .B2(Gk_1Pk_1[1]), .A(GikPik[1]), .ZN(n3) );
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
  AOI21_X1 U2 ( .B1(Gk_1Pk_1[1]), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
  AND2_X1 U3 ( .A1(Gk_1Pk_1[0]), .A2(GikPik[0]), .ZN(GijPij[0]) );
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

  INV_X1 U1 ( .A(n3), .ZN(GijPij[1]) );
  AND2_X1 U2 ( .A1(GikPik[0]), .A2(Gk_1Pk_1[0]), .ZN(GijPij[0]) );
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
  wire   n2;

  INV_X1 U1 ( .A(n2), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Gk_1), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n2) );
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
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Gk_1), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
endmodule


module GeneralGenerate_5 ( Gk_1, GikPik, Gij );
  input [1:0] GikPik;
  input Gk_1;
  output Gij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Gk_1), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
endmodule


module GeneralGenerate_6 ( Gk_1, GikPik, Gij );
  input [1:0] GikPik;
  input Gk_1;
  output Gij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Gk_1), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
endmodule


module GeneralGenerate_7 ( Gk_1, GikPik, Gij );
  input [1:0] GikPik;
  input Gk_1;
  output Gij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Gk_1), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
endmodule


module GeneralGenerate_8 ( Gk_1, GikPik, Gij );
  input [1:0] GikPik;
  input Gk_1;
  output Gij;
  wire   n3;

  INV_X1 U1 ( .A(n3), .ZN(Gij) );
  AOI21_X1 U2 ( .B1(Gk_1), .B2(GikPik[0]), .A(GikPik[1]), .ZN(n3) );
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
  wire   n6, n7, n8, \sigMatrix[0][63] , \sigMatrix[0][62] ,
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
         \sigMatrix[3][54] , n2;
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
        SYNOPSYS_UNCONNECTED__41, SYNOPSYS_UNCONNECTED__42, n8, 
        SYNOPSYS_UNCONNECTED__43, SYNOPSYS_UNCONNECTED__44, 
        SYNOPSYS_UNCONNECTED__45, SYNOPSYS_UNCONNECTED__46, 
        SYNOPSYS_UNCONNECTED__47, SYNOPSYS_UNCONNECTED__48, 
        SYNOPSYS_UNCONNECTED__49}) );
  GeneralGenerate_0 G_1_0_0_0 ( .Gk_1(n8), .GikPik({\sigMatrix[1][15] , 
        \sigMatrix[1][14] }), .Gij(n7) );
  GeneralPropagateGenerate_0 PG_1_0_1_0 ( .Gk_1Pk_1({\sigMatrix[1][23] , 
        \sigMatrix[1][22] }), .GikPik({\sigMatrix[1][31] , \sigMatrix[1][30] }), .GijPij({\sigMatrix[2][31] , \sigMatrix[2][30] }) );
  GeneralPropagateGenerate_26 PG_1_0_2_0 ( .Gk_1Pk_1({\sigMatrix[1][39] , 
        \sigMatrix[1][38] }), .GikPik({\sigMatrix[1][47] , \sigMatrix[1][46] }), .GijPij({\sigMatrix[2][47] , \sigMatrix[2][46] }) );
  GeneralPropagateGenerate_25 PG_1_0_3_0 ( .Gk_1Pk_1({\sigMatrix[1][55] , 
        \sigMatrix[1][54] }), .GikPik({\sigMatrix[1][63] , \sigMatrix[1][62] }), .GijPij({\sigMatrix[2][63] , \sigMatrix[2][62] }) );
  GeneralGenerate_9 G_1_1_0_0 ( .Gk_1(carryVector[1]), .GikPik({n2, 
        \sigMatrix[1][22] }), .Gij(carryVector[2]) );
  GeneralGenerate_8 G_1_1_0_1 ( .Gk_1(n7), .GikPik({\sigMatrix[2][31] , 
        \sigMatrix[2][30] }), .Gij(n6) );
  GeneralPropagateGenerate_24 PG_1_1_1_0 ( .Gk_1Pk_1({\sigMatrix[2][47] , 
        \sigMatrix[2][46] }), .GikPik({\sigMatrix[1][55] , \sigMatrix[1][54] }), .GijPij({\sigMatrix[3][55] , \sigMatrix[3][54] }) );
  GeneralPropagateGenerate_23 PG_1_1_1_1 ( .Gk_1Pk_1({\sigMatrix[2][47] , 
        \sigMatrix[2][46] }), .GikPik({\sigMatrix[2][63] , \sigMatrix[2][62] }), .GijPij({\sigMatrix[3][63] , \sigMatrix[3][62] }) );
  GeneralGenerate_7 G_1_2_0_0 ( .Gk_1(n6), .GikPik({\sigMatrix[1][39] , 
        \sigMatrix[1][38] }), .Gij(carryVector[4]) );
  GeneralGenerate_6 G_1_2_0_1 ( .Gk_1(n6), .GikPik({\sigMatrix[2][47] , 
        \sigMatrix[2][46] }), .Gij(carryVector[5]) );
  GeneralGenerate_5 G_1_2_0_2 ( .Gk_1(n6), .GikPik({\sigMatrix[3][55] , 
        \sigMatrix[3][54] }), .Gij(carryVector[6]) );
  GeneralGenerate_4 G_1_2_0_3 ( .Gk_1(carryVector[3]), .GikPik({
        \sigMatrix[3][63] , \sigMatrix[3][62] }), .Gij(carryVector[7]) );
  BUF_X1 U2 ( .A(n6), .Z(carryVector[3]) );
  BUF_X1 U3 ( .A(n7), .Z(carryVector[1]) );
  CLKBUF_X1 U4 ( .A(\sigMatrix[1][23] ), .Z(n2) );
  CLKBUF_X1 U5 ( .A(n8), .Z(carryVector[0]) );
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

  INV_X1 U1 ( .A(n6), .ZN(Y[3]) );
  AOI22_X1 U2 ( .A1(A[3]), .A2(n5), .B1(SEL), .B2(B[3]), .ZN(n6) );
  INV_X1 U3 ( .A(n8), .ZN(Y[1]) );
  AOI22_X1 U4 ( .A1(A[1]), .A2(n5), .B1(B[1]), .B2(SEL), .ZN(n8) );
  INV_X1 U5 ( .A(n7), .ZN(Y[2]) );
  AOI22_X1 U6 ( .A1(A[2]), .A2(n5), .B1(B[2]), .B2(SEL), .ZN(n7) );
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
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
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
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_50 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_51 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_52 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(B), .B(A), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
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
  INV_X1 U2 ( .A(n13), .ZN(Y[3]) );
  INV_X1 U3 ( .A(n12), .ZN(Y[2]) );
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
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_2 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_3 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_4 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
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


  MUX2_X1 U1 ( .A(A[3]), .B(B[3]), .S(SEL), .Z(Y[3]) );
  MUX2_X1 U2 ( .A(A[1]), .B(B[1]), .S(SEL), .Z(Y[1]) );
  MUX2_X1 U3 ( .A(A[0]), .B(B[0]), .S(SEL), .Z(Y[0]) );
  MUX2_X1 U4 ( .A(A[2]), .B(B[2]), .S(SEL), .Z(Y[2]) );
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
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_11 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_12 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
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
  wire   net2754, n7;

  MUX2_X1 U1 ( .A(A[0]), .B(B[0]), .S(SEL), .Z(Y[0]) );
  MUX2_X1 U2 ( .A(A[1]), .B(B[1]), .S(SEL), .Z(Y[1]) );
  MUX2_X1 U3 ( .A(A[2]), .B(B[2]), .S(SEL), .Z(Y[2]) );
  INV_X1 U4 ( .A(SEL), .ZN(net2754) );
  INV_X1 U5 ( .A(n7), .ZN(Y[3]) );
  AOI22_X1 U6 ( .A1(net2754), .A2(A[3]), .B1(SEL), .B2(B[3]), .ZN(n7) );
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
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
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
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_20 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
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
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
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
  wire   net4293, n6;

  MUX2_X1 U1 ( .A(A[1]), .B(B[1]), .S(SEL), .Z(Y[1]) );
  INV_X1 U2 ( .A(SEL), .ZN(net4293) );
  MUX2_X1 U3 ( .A(A[3]), .B(B[3]), .S(SEL), .Z(Y[3]) );
  MUX2_X1 U4 ( .A(A[2]), .B(B[2]), .S(SEL), .Z(Y[2]) );
  AOI22_X1 U5 ( .A1(net4293), .A2(A[0]), .B1(SEL), .B2(B[0]), .ZN(n6) );
  INV_X1 U6 ( .A(n6), .ZN(Y[0]) );
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
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_27 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_28 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
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
  wire   n5, n7, n6, n10, n11, n12;

  INV_X1 U1 ( .A(B[2]), .ZN(n10) );
  INV_X1 U2 ( .A(A[2]), .ZN(n6) );
  MUX2_X1 U3 ( .A(n6), .B(n10), .S(SEL), .Z(n7) );
  MUX2_X1 U4 ( .A(A[3]), .B(B[3]), .S(SEL), .Z(Y[3]) );
  INV_X1 U5 ( .A(n12), .ZN(Y[1]) );
  INV_X1 U6 ( .A(n7), .ZN(Y[2]) );
  INV_X1 U7 ( .A(n11), .ZN(Y[0]) );
  AOI22_X1 U8 ( .A1(n5), .A2(A[1]), .B1(SEL), .B2(B[1]), .ZN(n12) );
  AOI22_X1 U9 ( .A1(n5), .A2(A[0]), .B1(SEL), .B2(B[0]), .ZN(n11) );
  INV_X1 U10 ( .A(SEL), .ZN(n5) );
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
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_34 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_35 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
endmodule


module FA_36 ( A, B, Ci, S, Co );
  input A, B, Ci;
  output S, Co;
  wire   n4, n5;

  XOR2_X1 U3 ( .A(Ci), .B(n4), .Z(S) );
  XOR2_X1 U4 ( .A(A), .B(B), .Z(n4) );
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
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
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
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
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
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
  wire   n7, n8, n9, n5, n6, n10, n11, n12, n13;

  INV_X1 U1 ( .A(A[0]), .ZN(n5) );
  INV_X1 U2 ( .A(B[1]), .ZN(n11) );
  INV_X1 U3 ( .A(B[2]), .ZN(n13) );
  INV_X1 U4 ( .A(B[0]), .ZN(n6) );
  INV_X1 U5 ( .A(A[1]), .ZN(n10) );
  INV_X1 U6 ( .A(A[2]), .ZN(n12) );
  MUX2_X1 U7 ( .A(n5), .B(n6), .S(SEL), .Z(n9) );
  MUX2_X1 U8 ( .A(n10), .B(n11), .S(SEL), .Z(n8) );
  MUX2_X1 U9 ( .A(n12), .B(n13), .S(SEL), .Z(n7) );
  MUX2_X1 U10 ( .A(A[3]), .B(B[3]), .S(SEL), .Z(Y[3]) );
  INV_X1 U11 ( .A(n7), .ZN(Y[2]) );
  INV_X1 U12 ( .A(n8), .ZN(Y[1]) );
  INV_X1 U13 ( .A(n9), .ZN(Y[0]) );
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
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
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
  INV_X1 U1 ( .A(n5), .ZN(Co) );
  AOI22_X1 U2 ( .A1(B), .A2(A), .B1(n4), .B2(Ci), .ZN(n5) );
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
  wire   n10, n11, n12, n13, n14;

  INV_X1 U1 ( .A(n13), .ZN(Y[3]) );
  INV_X1 U2 ( .A(n11), .ZN(Y[1]) );
  INV_X1 U3 ( .A(n12), .ZN(Y[2]) );
  INV_X1 U4 ( .A(n10), .ZN(Y[0]) );
  AOI22_X1 U5 ( .A1(A[3]), .A2(n14), .B1(B[3]), .B2(SEL), .ZN(n13) );
  AOI22_X1 U6 ( .A1(A[2]), .A2(n14), .B1(B[2]), .B2(SEL), .ZN(n12) );
  AOI22_X1 U7 ( .A1(A[1]), .A2(n14), .B1(B[1]), .B2(SEL), .ZN(n11) );
  AOI22_X1 U8 ( .A1(A[0]), .A2(n14), .B1(B[0]), .B2(SEL), .ZN(n10) );
  INV_X1 U9 ( .A(SEL), .ZN(n14) );
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


module completeAdder_N32_RADIX4 ( A, B, Cin, Cout, Sum );
  input [31:0] A;
  input [31:0] B;
  output [31:0] Sum;
  input Cin;
  output Cout;
  wire   net2362, net2408, net2410, net2412, net2414, net2734, net2773,
         net2772, net2771, net2822, net3125, net3132, net3138, net3144,
         net3143, net3142, net2783, net3867, net4132, net2787, net2709,
         net2782, net2710, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15;
  wire   [31:0] B_XORed;
  wire   [7:0] carryConnect;

  SparseTree_N32_RADIX4 ST ( .A(A), .B({B_XORed[31:29], n5, B_XORed[27:25], n2, 
        B_XORed[23:17], n7, B_XORed[15:0]}), .Cin(net3867), .carryVector(
        carryConnect) );
  CSSG_generic_N32_RADIX4 CSSG ( .A(A), .B({B_XORed[31:24], net3125, net3138, 
        n13, n4, n8, B_XORed[18], n12, B_XORed[16], net2412, n11, n14, n3, 
        net2822, n6, net2734, B_XORed[8], net2410, n9, net2414, n1, n15, n10, 
        B_XORed[1], net2408}), .Cin(net3867), .carry_vector(carryConnect), 
        .Cout(Cout), .S(Sum) );
  XOR2_X1 U2 ( .A(net3142), .B(B[8]), .Z(B_XORed[8]) );
  XOR2_X1 U4 ( .A(net3143), .B(B[6]), .Z(B_XORed[6]) );
  XOR2_X1 U7 ( .A(net2787), .B(B[3]), .Z(B_XORed[3]) );
  XOR2_X1 U9 ( .A(net2772), .B(B[30]), .Z(B_XORed[30]) );
  XOR2_X1 U10 ( .A(net3143), .B(B[2]), .Z(B_XORed[2]) );
  XOR2_X1 U11 ( .A(net3144), .B(B[29]), .Z(B_XORed[29]) );
  XOR2_X1 U12 ( .A(net2783), .B(B[28]), .Z(B_XORed[28]) );
  XOR2_X1 U13 ( .A(net3144), .B(B[27]), .Z(B_XORed[27]) );
  XOR2_X1 U14 ( .A(net4132), .B(B[26]), .Z(B_XORed[26]) );
  XOR2_X1 U15 ( .A(net3144), .B(B[25]), .Z(B_XORed[25]) );
  XOR2_X1 U16 ( .A(net3142), .B(B[24]), .Z(B_XORed[24]) );
  XOR2_X1 U19 ( .A(net2771), .B(B[21]), .Z(B_XORed[21]) );
  XOR2_X1 U20 ( .A(net2772), .B(B[20]), .Z(B_XORed[20]) );
  XOR2_X1 U22 ( .A(net3144), .B(B[19]), .Z(B_XORed[19]) );
  XOR2_X1 U23 ( .A(net3144), .B(B[18]), .Z(B_XORed[18]) );
  XOR2_X1 U24 ( .A(net3143), .B(B[17]), .Z(B_XORed[17]) );
  XOR2_X1 U25 ( .A(net2772), .B(B[16]), .Z(B_XORed[16]) );
  XOR2_X1 U27 ( .A(net3143), .B(B[14]), .Z(B_XORed[14]) );
  XOR2_X1 U28 ( .A(net2773), .B(B[13]), .Z(B_XORed[13]) );
  XOR2_X1 U29 ( .A(net2783), .B(B[12]), .Z(B_XORed[12]) );
  XOR2_X1 U31 ( .A(net3144), .B(B[10]), .Z(B_XORed[10]) );
  XOR2_X1 U3 ( .A(net3132), .B(B[7]), .Z(B_XORed[7]) );
  XOR2_X1 U18 ( .A(net2783), .B(B[22]), .Z(B_XORed[22]) );
  XOR2_X1 U8 ( .A(net2783), .B(B[31]), .Z(B_XORed[31]) );
  XOR2_X1 U5 ( .A(net3142), .B(B[5]), .Z(B_XORed[5]) );
  XOR2_X1 U21 ( .A(net2362), .B(B[1]), .Z(B_XORed[1]) );
  XOR2_X1 U17 ( .A(net2787), .B(B[23]), .Z(B_XORed[23]) );
  XOR2_X1 U26 ( .A(net2773), .B(B[15]), .Z(B_XORed[15]) );
  XOR2_X1 U6 ( .A(net2771), .B(B[4]), .Z(B_XORed[4]) );
  XOR2_X1 U1 ( .A(net2782), .B(B[9]), .Z(B_XORed[9]) );
  XOR2_X1 U30 ( .A(net2782), .B(B[11]), .Z(B_XORed[11]) );
  XOR2_X1 U32 ( .A(net2710), .B(B[0]), .Z(B_XORed[0]) );
  CLKBUF_X1 U33 ( .A(B_XORed[0]), .Z(net2408) );
  BUF_X1 U34 ( .A(Cin), .Z(net2710) );
  BUF_X1 U35 ( .A(net2710), .Z(net2773) );
  BUF_X1 U36 ( .A(net2710), .Z(net2782) );
  BUF_X1 U37 ( .A(Cin), .Z(net2362) );
  BUF_X1 U38 ( .A(Cin), .Z(net2709) );
  BUF_X2 U39 ( .A(net2771), .Z(net3867) );
  CLKBUF_X1 U40 ( .A(net2782), .Z(net4132) );
  XOR2_X1 U41 ( .A(net3867), .B(B[11]), .Z(net2822) );
  XOR2_X1 U42 ( .A(net2771), .B(B[4]), .Z(n1) );
  BUF_X1 U43 ( .A(net2362), .Z(net2771) );
  BUF_X2 U44 ( .A(net2709), .Z(net3144) );
  BUF_X1 U45 ( .A(net2709), .Z(net3132) );
  CLKBUF_X1 U46 ( .A(net2362), .Z(net2783) );
  BUF_X2 U47 ( .A(net2709), .Z(net3142) );
  BUF_X1 U48 ( .A(net2709), .Z(net2787) );
  CLKBUF_X1 U49 ( .A(B_XORed[15]), .Z(net2412) );
  BUF_X1 U50 ( .A(net2362), .Z(net2772) );
  CLKBUF_X1 U51 ( .A(B_XORed[24]), .Z(n2) );
  CLKBUF_X1 U52 ( .A(B_XORed[17]), .Z(n12) );
  CLKBUF_X1 U53 ( .A(B_XORed[21]), .Z(n13) );
  CLKBUF_X1 U54 ( .A(B_XORed[5]), .Z(net2414) );
  XOR2_X1 U55 ( .A(net3867), .B(B[22]), .Z(net3138) );
  XOR2_X1 U56 ( .A(net3142), .B(B[12]), .Z(n3) );
  CLKBUF_X1 U57 ( .A(B_XORed[3]), .Z(n15) );
  BUF_X1 U58 ( .A(net2362), .Z(net3143) );
  CLKBUF_X1 U59 ( .A(B_XORed[7]), .Z(net2410) );
  XOR2_X1 U60 ( .A(net2772), .B(B[20]), .Z(n4) );
  CLKBUF_X1 U61 ( .A(B_XORed[23]), .Z(net3125) );
  CLKBUF_X1 U62 ( .A(B_XORed[28]), .Z(n5) );
  CLKBUF_X1 U63 ( .A(B_XORed[13]), .Z(n14) );
  CLKBUF_X1 U64 ( .A(B_XORed[10]), .Z(n6) );
  XOR2_X1 U65 ( .A(net2772), .B(B[16]), .Z(n7) );
  XOR2_X1 U66 ( .A(net4132), .B(B[19]), .Z(n8) );
  CLKBUF_X1 U67 ( .A(B_XORed[6]), .Z(n9) );
  CLKBUF_X1 U68 ( .A(B_XORed[2]), .Z(n10) );
  CLKBUF_X1 U69 ( .A(B_XORed[14]), .Z(n11) );
  BUF_X1 U70 ( .A(B_XORed[9]), .Z(net2734) );
endmodule


module completeAdderSynchronous ( A_tle, B_tle, Cin_tle, Cout_tle, Sum_tle, 
        Clk, rst );
  input [31:0] A_tle;
  input [31:0] B_tle;
  output [31:0] Sum_tle;
  input Cin_tle, Clk, rst;
  output Cout_tle;
  wire   coutFromCAtoReg, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148;
  wire   [31:0] Qa;
  wire   [31:0] Qb;
  wire   [31:0] sumFromCAtoReg;

  completeAdder_N32_RADIX4 completeAdder_1 ( .A(Qa), .B(Qb), .Cin(n103), 
        .Cout(coutFromCAtoReg), .Sum(sumFromCAtoReg) );
  SDFF_X1 Qcin_reg ( .D(1'b0), .SI(n142), .SE(Cin_tle), .CK(Clk), .Q(n103) );
  SDFF_X1 \Qa_reg[31]  ( .D(1'b0), .SI(n142), .SE(A_tle[31]), .CK(Clk), .Q(
        Qa[31]) );
  SDFF_X1 \Qa_reg[30]  ( .D(1'b0), .SI(n142), .SE(A_tle[30]), .CK(Clk), .Q(
        Qa[30]) );
  SDFF_X1 \Qa_reg[29]  ( .D(1'b0), .SI(n142), .SE(A_tle[29]), .CK(Clk), .Q(
        Qa[29]) );
  SDFF_X1 \Qa_reg[28]  ( .D(1'b0), .SI(n142), .SE(A_tle[28]), .CK(Clk), .Q(
        Qa[28]) );
  SDFF_X1 \Qa_reg[27]  ( .D(1'b0), .SI(n142), .SE(A_tle[27]), .CK(Clk), .Q(
        Qa[27]) );
  SDFF_X1 \Qa_reg[26]  ( .D(1'b0), .SI(n142), .SE(A_tle[26]), .CK(Clk), .Q(
        Qa[26]) );
  SDFF_X1 \Qa_reg[25]  ( .D(1'b0), .SI(n143), .SE(A_tle[25]), .CK(Clk), .Q(
        Qa[25]) );
  SDFF_X1 \Qa_reg[24]  ( .D(1'b0), .SI(n143), .SE(A_tle[24]), .CK(Clk), .Q(
        Qa[24]) );
  SDFF_X1 \Qa_reg[23]  ( .D(1'b0), .SI(n143), .SE(A_tle[23]), .CK(Clk), .Q(
        Qa[23]) );
  SDFF_X1 \Qa_reg[22]  ( .D(1'b0), .SI(n143), .SE(A_tle[22]), .CK(Clk), .Q(
        Qa[22]) );
  SDFF_X1 \Qa_reg[21]  ( .D(1'b0), .SI(n143), .SE(A_tle[21]), .CK(Clk), .Q(
        Qa[21]) );
  SDFF_X1 \Qa_reg[20]  ( .D(1'b0), .SI(n143), .SE(A_tle[20]), .CK(Clk), .Q(
        Qa[20]) );
  SDFF_X1 \Qa_reg[19]  ( .D(1'b0), .SI(n143), .SE(A_tle[19]), .CK(Clk), .Q(
        Qa[19]) );
  SDFF_X1 \Qa_reg[18]  ( .D(1'b0), .SI(n143), .SE(A_tle[18]), .CK(Clk), .Q(
        Qa[18]) );
  SDFF_X1 \Qa_reg[17]  ( .D(1'b0), .SI(n143), .SE(A_tle[17]), .CK(Clk), .Q(
        Qa[17]) );
  SDFF_X1 \Qa_reg[16]  ( .D(1'b0), .SI(n143), .SE(A_tle[16]), .CK(Clk), .Q(
        Qa[16]) );
  SDFF_X1 \Qa_reg[15]  ( .D(1'b0), .SI(n144), .SE(A_tle[15]), .CK(Clk), .Q(
        Qa[15]) );
  SDFF_X1 \Qa_reg[14]  ( .D(1'b0), .SI(n144), .SE(A_tle[14]), .CK(Clk), .Q(
        Qa[14]) );
  SDFF_X1 \Qa_reg[13]  ( .D(1'b0), .SI(n144), .SE(A_tle[13]), .CK(Clk), .Q(
        Qa[13]) );
  SDFF_X1 \Qa_reg[12]  ( .D(1'b0), .SI(n144), .SE(A_tle[12]), .CK(Clk), .Q(
        Qa[12]) );
  SDFF_X1 \Qa_reg[11]  ( .D(1'b0), .SI(n144), .SE(A_tle[11]), .CK(Clk), .Q(
        Qa[11]) );
  SDFF_X1 \Qa_reg[10]  ( .D(1'b0), .SI(n144), .SE(A_tle[10]), .CK(Clk), .Q(
        Qa[10]) );
  SDFF_X1 \Qa_reg[9]  ( .D(1'b0), .SI(n144), .SE(A_tle[9]), .CK(Clk), .Q(Qa[9]) );
  SDFF_X1 \Qa_reg[8]  ( .D(1'b0), .SI(n144), .SE(A_tle[8]), .CK(Clk), .Q(Qa[8]) );
  SDFF_X1 \Qa_reg[7]  ( .D(1'b0), .SI(n144), .SE(A_tle[7]), .CK(Clk), .Q(Qa[7]) );
  SDFF_X1 \Qa_reg[6]  ( .D(1'b0), .SI(n144), .SE(A_tle[6]), .CK(Clk), .Q(Qa[6]) );
  SDFF_X1 \Qa_reg[5]  ( .D(1'b0), .SI(n145), .SE(A_tle[5]), .CK(Clk), .Q(Qa[5]) );
  SDFF_X1 \Qa_reg[4]  ( .D(1'b0), .SI(n145), .SE(A_tle[4]), .CK(Clk), .Q(Qa[4]) );
  SDFF_X1 \Qa_reg[3]  ( .D(1'b0), .SI(n145), .SE(A_tle[3]), .CK(Clk), .Q(Qa[3]) );
  SDFF_X1 \Qa_reg[2]  ( .D(1'b0), .SI(n145), .SE(A_tle[2]), .CK(Clk), .Q(Qa[2]) );
  SDFF_X1 \Qa_reg[1]  ( .D(1'b0), .SI(n145), .SE(A_tle[1]), .CK(Clk), .Q(Qa[1]) );
  SDFF_X1 \Qa_reg[0]  ( .D(1'b0), .SI(n145), .SE(A_tle[0]), .CK(Clk), .Q(Qa[0]) );
  SDFF_X1 \Qb_reg[31]  ( .D(1'b0), .SI(n145), .SE(B_tle[31]), .CK(Clk), .Q(
        Qb[31]) );
  SDFF_X1 \Qb_reg[30]  ( .D(1'b0), .SI(n145), .SE(B_tle[30]), .CK(Clk), .Q(
        Qb[30]) );
  SDFF_X1 \Qb_reg[29]  ( .D(1'b0), .SI(n145), .SE(B_tle[29]), .CK(Clk), .Q(
        Qb[29]) );
  SDFF_X1 \Qb_reg[28]  ( .D(1'b0), .SI(n145), .SE(B_tle[28]), .CK(Clk), .Q(
        Qb[28]) );
  SDFF_X1 \Qb_reg[27]  ( .D(1'b0), .SI(n146), .SE(B_tle[27]), .CK(Clk), .Q(
        Qb[27]) );
  SDFF_X1 \Qb_reg[26]  ( .D(1'b0), .SI(n146), .SE(B_tle[26]), .CK(Clk), .Q(
        Qb[26]) );
  SDFF_X1 \Qb_reg[25]  ( .D(1'b0), .SI(n146), .SE(B_tle[25]), .CK(Clk), .Q(
        Qb[25]) );
  SDFF_X1 \Qb_reg[24]  ( .D(1'b0), .SI(n146), .SE(B_tle[24]), .CK(Clk), .Q(
        Qb[24]) );
  SDFF_X1 \Qb_reg[23]  ( .D(1'b0), .SI(n146), .SE(B_tle[23]), .CK(Clk), .Q(
        Qb[23]) );
  SDFF_X1 \Qb_reg[22]  ( .D(1'b0), .SI(n146), .SE(B_tle[22]), .CK(Clk), .Q(
        Qb[22]) );
  SDFF_X1 \Qb_reg[21]  ( .D(1'b0), .SI(n146), .SE(B_tle[21]), .CK(Clk), .Q(
        Qb[21]) );
  SDFF_X1 \Qb_reg[20]  ( .D(1'b0), .SI(n146), .SE(B_tle[20]), .CK(Clk), .Q(
        Qb[20]) );
  SDFF_X1 \Qb_reg[19]  ( .D(1'b0), .SI(n146), .SE(B_tle[19]), .CK(Clk), .Q(
        Qb[19]) );
  SDFF_X1 \Qb_reg[18]  ( .D(1'b0), .SI(n146), .SE(B_tle[18]), .CK(Clk), .Q(
        Qb[18]) );
  SDFF_X1 \Qb_reg[17]  ( .D(1'b0), .SI(n147), .SE(B_tle[17]), .CK(Clk), .Q(
        Qb[17]) );
  SDFF_X1 \Qb_reg[16]  ( .D(1'b0), .SI(n147), .SE(B_tle[16]), .CK(Clk), .Q(
        Qb[16]) );
  SDFF_X1 \Qb_reg[15]  ( .D(1'b0), .SI(n147), .SE(B_tle[15]), .CK(Clk), .Q(
        Qb[15]) );
  SDFF_X1 \Qb_reg[14]  ( .D(1'b0), .SI(n147), .SE(B_tle[14]), .CK(Clk), .Q(
        Qb[14]) );
  SDFF_X1 \Qb_reg[13]  ( .D(1'b0), .SI(n147), .SE(B_tle[13]), .CK(Clk), .Q(
        Qb[13]) );
  SDFF_X1 \Qb_reg[12]  ( .D(1'b0), .SI(n147), .SE(B_tle[12]), .CK(Clk), .Q(
        Qb[12]) );
  SDFF_X1 \Qb_reg[11]  ( .D(1'b0), .SI(n147), .SE(B_tle[11]), .CK(Clk), .Q(
        Qb[11]) );
  SDFF_X1 \Qb_reg[10]  ( .D(1'b0), .SI(n147), .SE(B_tle[10]), .CK(Clk), .Q(
        Qb[10]) );
  SDFF_X1 \Qb_reg[9]  ( .D(1'b0), .SI(n147), .SE(B_tle[9]), .CK(Clk), .Q(Qb[9]) );
  SDFF_X1 \Qb_reg[8]  ( .D(1'b0), .SI(n147), .SE(B_tle[8]), .CK(Clk), .Q(Qb[8]) );
  SDFF_X1 \Qb_reg[7]  ( .D(1'b0), .SI(n148), .SE(B_tle[7]), .CK(Clk), .Q(Qb[7]) );
  SDFF_X1 \Qb_reg[6]  ( .D(1'b0), .SI(n148), .SE(B_tle[6]), .CK(Clk), .Q(Qb[6]) );
  SDFF_X1 \Qb_reg[5]  ( .D(1'b0), .SI(n148), .SE(B_tle[5]), .CK(Clk), .Q(Qb[5]) );
  SDFF_X1 \Qb_reg[4]  ( .D(1'b0), .SI(n148), .SE(B_tle[4]), .CK(Clk), .Q(Qb[4]) );
  SDFF_X1 \Qb_reg[3]  ( .D(1'b0), .SI(n148), .SE(B_tle[3]), .CK(Clk), .Q(Qb[3]) );
  SDFF_X1 \Qb_reg[2]  ( .D(1'b0), .SI(n148), .SE(B_tle[2]), .CK(Clk), .Q(Qb[2]) );
  SDFF_X1 \Qb_reg[1]  ( .D(1'b0), .SI(n148), .SE(B_tle[1]), .CK(Clk), .Q(Qb[1]) );
  SDFF_X1 \Qb_reg[0]  ( .D(1'b0), .SI(n148), .SE(B_tle[0]), .CK(Clk), .Q(Qb[0]) );
  DFF_X1 \Sum_tle_reg[19]  ( .D(n124), .CK(Clk), .Q(Sum_tle[19]) );
  DFF_X1 \Sum_tle_reg[31]  ( .D(n133), .CK(Clk), .Q(Sum_tle[31]) );
  DFF_X1 \Sum_tle_reg[0]  ( .D(n123), .CK(Clk), .Q(Sum_tle[0]) );
  DFF_X1 \Sum_tle_reg[1]  ( .D(n122), .CK(Clk), .Q(Sum_tle[1]) );
  DFF_X1 \Sum_tle_reg[4]  ( .D(n121), .CK(Clk), .Q(Sum_tle[4]) );
  DFF_X1 \Sum_tle_reg[5]  ( .D(n120), .CK(Clk), .Q(Sum_tle[5]) );
  DFF_X1 \Sum_tle_reg[6]  ( .D(n119), .CK(Clk), .Q(Sum_tle[6]) );
  DFF_X1 \Sum_tle_reg[2]  ( .D(n118), .CK(Clk), .Q(Sum_tle[2]) );
  DFF_X1 \Sum_tle_reg[15]  ( .D(n117), .CK(Clk), .Q(Sum_tle[15]) );
  DFF_X1 \Sum_tle_reg[14]  ( .D(n116), .CK(Clk), .Q(Sum_tle[14]) );
  DFF_X1 \Sum_tle_reg[13]  ( .D(n115), .CK(Clk), .Q(Sum_tle[13]) );
  DFF_X1 \Sum_tle_reg[12]  ( .D(n114), .CK(Clk), .Q(Sum_tle[12]) );
  DFF_X1 \Sum_tle_reg[7]  ( .D(n113), .CK(Clk), .Q(Sum_tle[7]) );
  DFF_X1 Cout_tle_reg ( .D(n112), .CK(Clk), .Q(Cout_tle) );
  DFF_X1 \Sum_tle_reg[8]  ( .D(n111), .CK(Clk), .Q(Sum_tle[8]) );
  DFF_X1 \Sum_tle_reg[9]  ( .D(n110), .CK(Clk), .Q(Sum_tle[9]) );
  DFF_X1 \Sum_tle_reg[10]  ( .D(n109), .CK(Clk), .Q(Sum_tle[10]) );
  DFF_X1 \Sum_tle_reg[18]  ( .D(n108), .CK(Clk), .Q(Sum_tle[18]) );
  DFF_X1 \Sum_tle_reg[17]  ( .D(n107), .CK(Clk), .Q(Sum_tle[17]) );
  DFF_X1 \Sum_tle_reg[16]  ( .D(n106), .CK(Clk), .Q(Sum_tle[16]) );
  DFF_X1 \Sum_tle_reg[11]  ( .D(n105), .CK(Clk), .Q(Sum_tle[11]) );
  DFF_X1 \Sum_tle_reg[3]  ( .D(n104), .CK(Clk), .Q(Sum_tle[3]) );
  DFF_X1 \Sum_tle_reg[27]  ( .D(n125), .CK(Clk), .Q(Sum_tle[27]) );
  DFF_X1 \Sum_tle_reg[24]  ( .D(n134), .CK(Clk), .Q(Sum_tle[24]) );
  DFF_X1 \Sum_tle_reg[25]  ( .D(n136), .CK(Clk), .Q(Sum_tle[25]) );
  DFF_X1 \Sum_tle_reg[26]  ( .D(n135), .CK(Clk), .Q(Sum_tle[26]) );
  DFF_X1 \Sum_tle_reg[30]  ( .D(n130), .CK(Clk), .Q(Sum_tle[30]) );
  DFF_X1 \Sum_tle_reg[29]  ( .D(n129), .CK(Clk), .Q(Sum_tle[29]) );
  DFF_X1 \Sum_tle_reg[28]  ( .D(n128), .CK(Clk), .Q(Sum_tle[28]) );
  DFF_X1 \Sum_tle_reg[21]  ( .D(n131), .CK(Clk), .Q(Sum_tle[21]) );
  DFF_X1 \Sum_tle_reg[23]  ( .D(n132), .CK(Clk), .Q(Sum_tle[23]) );
  DFF_X1 \Sum_tle_reg[22]  ( .D(n127), .CK(Clk), .Q(Sum_tle[22]) );
  DFF_X1 \Sum_tle_reg[20]  ( .D(n126), .CK(Clk), .Q(Sum_tle[20]) );
  AND2_X1 U103 ( .A1(sumFromCAtoReg[3]), .A2(n142), .ZN(n104) );
  AND2_X1 U104 ( .A1(sumFromCAtoReg[11]), .A2(n139), .ZN(n105) );
  AND2_X1 U105 ( .A1(sumFromCAtoReg[16]), .A2(n139), .ZN(n106) );
  AND2_X1 U106 ( .A1(sumFromCAtoReg[17]), .A2(n139), .ZN(n107) );
  AND2_X1 U107 ( .A1(sumFromCAtoReg[18]), .A2(n140), .ZN(n108) );
  AND2_X1 U108 ( .A1(sumFromCAtoReg[10]), .A2(n139), .ZN(n109) );
  AND2_X1 U109 ( .A1(sumFromCAtoReg[9]), .A2(n139), .ZN(n110) );
  AND2_X1 U110 ( .A1(sumFromCAtoReg[8]), .A2(n139), .ZN(n111) );
  AND2_X1 U111 ( .A1(coutFromCAtoReg), .A2(n140), .ZN(n112) );
  AND2_X1 U112 ( .A1(sumFromCAtoReg[7]), .A2(n139), .ZN(n113) );
  AND2_X1 U113 ( .A1(sumFromCAtoReg[12]), .A2(n141), .ZN(n114) );
  AND2_X1 U114 ( .A1(sumFromCAtoReg[13]), .A2(n141), .ZN(n115) );
  AND2_X1 U115 ( .A1(sumFromCAtoReg[14]), .A2(n141), .ZN(n116) );
  AND2_X1 U116 ( .A1(sumFromCAtoReg[15]), .A2(n141), .ZN(n117) );
  AND2_X1 U117 ( .A1(sumFromCAtoReg[2]), .A2(n142), .ZN(n118) );
  AND2_X1 U118 ( .A1(sumFromCAtoReg[6]), .A2(n139), .ZN(n119) );
  AND2_X1 U119 ( .A1(sumFromCAtoReg[5]), .A2(n139), .ZN(n120) );
  AND2_X1 U120 ( .A1(sumFromCAtoReg[4]), .A2(n139), .ZN(n121) );
  AND2_X1 U121 ( .A1(sumFromCAtoReg[1]), .A2(n142), .ZN(n122) );
  AND2_X1 U122 ( .A1(sumFromCAtoReg[0]), .A2(n141), .ZN(n123) );
  AND2_X1 U123 ( .A1(sumFromCAtoReg[19]), .A2(n140), .ZN(n124) );
  BUF_X1 U124 ( .A(n137), .Z(n140) );
  BUF_X1 U125 ( .A(n137), .Z(n141) );
  BUF_X1 U126 ( .A(n137), .Z(n139) );
  BUF_X1 U127 ( .A(n137), .Z(n144) );
  BUF_X1 U128 ( .A(n137), .Z(n143) );
  BUF_X1 U129 ( .A(n138), .Z(n147) );
  BUF_X1 U130 ( .A(n138), .Z(n146) );
  BUF_X1 U131 ( .A(n138), .Z(n145) );
  BUF_X1 U132 ( .A(n102), .Z(n137) );
  BUF_X1 U133 ( .A(n102), .Z(n138) );
  INV_X1 U134 ( .A(rst), .ZN(n102) );
  AND2_X1 U135 ( .A1(sumFromCAtoReg[27]), .A2(n141), .ZN(n125) );
  AND2_X1 U136 ( .A1(sumFromCAtoReg[20]), .A2(n141), .ZN(n126) );
  AND2_X1 U137 ( .A1(sumFromCAtoReg[22]), .A2(n141), .ZN(n127) );
  AND2_X1 U138 ( .A1(sumFromCAtoReg[28]), .A2(n140), .ZN(n128) );
  AND2_X1 U139 ( .A1(sumFromCAtoReg[29]), .A2(n140), .ZN(n129) );
  AND2_X1 U140 ( .A1(sumFromCAtoReg[30]), .A2(n140), .ZN(n130) );
  AND2_X1 U141 ( .A1(sumFromCAtoReg[21]), .A2(n141), .ZN(n131) );
  AND2_X1 U142 ( .A1(sumFromCAtoReg[23]), .A2(n141), .ZN(n132) );
  AND2_X1 U143 ( .A1(sumFromCAtoReg[31]), .A2(n140), .ZN(n133) );
  AND2_X1 U144 ( .A1(sumFromCAtoReg[24]), .A2(n140), .ZN(n134) );
  AND2_X1 U145 ( .A1(sumFromCAtoReg[26]), .A2(n140), .ZN(n135) );
  AND2_X1 U146 ( .A1(sumFromCAtoReg[25]), .A2(n140), .ZN(n136) );
  BUF_X1 U147 ( .A(n137), .Z(n142) );
  CLKBUF_X1 U148 ( .A(n138), .Z(n148) );
endmodule

