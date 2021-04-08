
module PG_NET_0 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(P) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module G_BLOCK_0 ( PIK, GIK, GK1J, GIJ );
  input PIK, GIK, GK1J;
  output GIJ;
  wire   n2;

  INV_X1 U1 ( .A(n2), .ZN(GIJ) );
  AOI21_X1 U2 ( .B1(PIK), .B2(GK1J), .A(GIK), .ZN(n2) );
endmodule


module PG_BLOCK_0 ( PIK, GIK, PK1J, GK1J, GIJ, PIJ );
  input PIK, GIK, PK1J, GK1J;
  output GIJ, PIJ;
  wire   n2;

  INV_X1 U1 ( .A(n2), .ZN(GIJ) );
  AND2_X1 U2 ( .A1(PK1J), .A2(PIK), .ZN(PIJ) );
  AOI21_X1 U3 ( .B1(PIK), .B2(GK1J), .A(GIK), .ZN(n2) );
endmodule


module PG_NET_1 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(P) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module PG_NET_2 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(P) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module PG_NET_3 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(P) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module PG_NET_4 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(P) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module PG_NET_5 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(P) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module PG_NET_6 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(P) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module PG_NET_7 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(P) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module PG_NET_8 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(P) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module PG_NET_9 ( A, B, P, G );
  input A, B;
  output P, G;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(n2), .A2(B), .ZN(n3) );
  NAND2_X1 U2 ( .A1(n1), .A2(A), .ZN(n4) );
  NAND2_X1 U3 ( .A1(n4), .A2(n3), .ZN(P) );
  INV_X1 U4 ( .A(B), .ZN(n1) );
  INV_X1 U5 ( .A(A), .ZN(n2) );
  AND2_X1 U6 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module PG_NET_10 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(P) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module PG_NET_11 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(P) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module PG_NET_12 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(P) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module PG_NET_13 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(P) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module PG_NET_14 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(P) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module PG_NET_15 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(P) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module PG_NET_16 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(P) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module PG_NET_17 ( A, B, P, G );
  input A, B;
  output P, G;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(n2), .A2(B), .ZN(n3) );
  NAND2_X1 U2 ( .A1(n1), .A2(A), .ZN(n4) );
  NAND2_X1 U3 ( .A1(n3), .A2(n4), .ZN(P) );
  INV_X1 U4 ( .A(B), .ZN(n1) );
  INV_X1 U5 ( .A(A), .ZN(n2) );
  AND2_X1 U6 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module PG_NET_18 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(P) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module PG_NET_19 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(P) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module PG_NET_20 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(P) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module PG_NET_21 ( A, B, P, G );
  input A, B;
  output P, G;
  wire   n1, n2, n3, n4;

  NAND2_X1 U1 ( .A1(B), .A2(n2), .ZN(n3) );
  NAND2_X1 U2 ( .A1(n1), .A2(A), .ZN(n4) );
  NAND2_X1 U3 ( .A1(n3), .A2(n4), .ZN(P) );
  INV_X1 U4 ( .A(B), .ZN(n1) );
  INV_X1 U5 ( .A(A), .ZN(n2) );
  AND2_X1 U6 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module PG_NET_22 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(P) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module PG_NET_23 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(P) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module PG_NET_24 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(P) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module PG_NET_25 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(P) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module PG_NET_26 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(P) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module PG_NET_27 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(P) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module PG_NET_28 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(P) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module PG_NET_29 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(P) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module PG_NET_30 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(P) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module PG_NET_31 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2_X1 U2 ( .A(B), .B(A), .Z(P) );
  AND2_X1 U1 ( .A1(B), .A2(A), .ZN(G) );
endmodule


module G_BLOCK_1 ( PIK, GIK, GK1J, GIJ );
  input PIK, GIK, GK1J;
  output GIJ;
  wire   n7;

  INV_X1 U1 ( .A(n7), .ZN(GIJ) );
  AOI21_X1 U2 ( .B1(PIK), .B2(GK1J), .A(GIK), .ZN(n7) );
endmodule


module G_BLOCK_2 ( PIK, GIK, GK1J, GIJ );
  input PIK, GIK, GK1J;
  output GIJ;
  wire   n7, n8;

  INV_X1 U1 ( .A(GIK), .ZN(n7) );
  NAND2_X2 U2 ( .A1(n7), .A2(n8), .ZN(GIJ) );
  NAND2_X1 U3 ( .A1(GK1J), .A2(PIK), .ZN(n8) );
endmodule


module G_BLOCK_3 ( PIK, GIK, GK1J, GIJ );
  input PIK, GIK, GK1J;
  output GIJ;
  wire   n7, n8;

  INV_X1 U1 ( .A(GIK), .ZN(n7) );
  NAND2_X2 U2 ( .A1(n7), .A2(n8), .ZN(GIJ) );
  NAND2_X1 U3 ( .A1(GK1J), .A2(PIK), .ZN(n8) );
endmodule


module G_BLOCK_4 ( PIK, GIK, GK1J, GIJ );
  input PIK, GIK, GK1J;
  output GIJ;
  wire   n7, n8;

  INV_X1 U1 ( .A(GIK), .ZN(n7) );
  NAND2_X2 U2 ( .A1(n7), .A2(n8), .ZN(GIJ) );
  NAND2_X1 U3 ( .A1(GK1J), .A2(PIK), .ZN(n8) );
endmodule


module G_BLOCK_5 ( PIK, GIK, GK1J, GIJ );
  input PIK, GIK, GK1J;
  output GIJ;
  wire   n7, n8;

  INV_X1 U1 ( .A(GIK), .ZN(n7) );
  NAND2_X1 U2 ( .A1(n7), .A2(n8), .ZN(GIJ) );
  NAND2_X1 U3 ( .A1(GK1J), .A2(PIK), .ZN(n8) );
endmodule


module G_BLOCK_6 ( PIK, GIK, GK1J, GIJ );
  input PIK, GIK, GK1J;
  output GIJ;
  wire   n7;

  INV_X1 U1 ( .A(n7), .ZN(GIJ) );
  AOI21_X1 U2 ( .B1(PIK), .B2(GK1J), .A(GIK), .ZN(n7) );
endmodule


module G_BLOCK_7 ( PIK, GIK, GK1J, GIJ );
  input PIK, GIK, GK1J;
  output GIJ;
  wire   n7;

  INV_X1 U1 ( .A(n7), .ZN(GIJ) );
  AOI21_X1 U2 ( .B1(PIK), .B2(GK1J), .A(GIK), .ZN(n7) );
endmodule


module G_BLOCK_8 ( PIK, GIK, GK1J, GIJ );
  input PIK, GIK, GK1J;
  output GIJ;
  wire   n7;

  AOI21_X1 U1 ( .B1(PIK), .B2(GK1J), .A(GIK), .ZN(n7) );
  INV_X1 U2 ( .A(n7), .ZN(GIJ) );
endmodule


module PG_BLOCK_1 ( PIK, GIK, PK1J, GK1J, GIJ, PIJ );
  input PIK, GIK, PK1J, GK1J;
  output GIJ, PIJ;
  wire   n7;

  AND2_X1 U1 ( .A1(PK1J), .A2(PIK), .ZN(PIJ) );
  INV_X1 U2 ( .A(n7), .ZN(GIJ) );
  AOI21_X1 U3 ( .B1(PIK), .B2(GK1J), .A(GIK), .ZN(n7) );
endmodule


module PG_BLOCK_2 ( PIK, GIK, PK1J, GK1J, GIJ, PIJ );
  input PIK, GIK, PK1J, GK1J;
  output GIJ, PIJ;
  wire   n7;

  AND2_X1 U1 ( .A1(PK1J), .A2(PIK), .ZN(PIJ) );
  INV_X1 U2 ( .A(n7), .ZN(GIJ) );
  AOI21_X1 U3 ( .B1(GK1J), .B2(PIK), .A(GIK), .ZN(n7) );
endmodule


module PG_BLOCK_3 ( PIK, GIK, PK1J, GK1J, GIJ, PIJ );
  input PIK, GIK, PK1J, GK1J;
  output GIJ, PIJ;
  wire   n7;

  INV_X1 U1 ( .A(n7), .ZN(GIJ) );
  AOI21_X1 U2 ( .B1(PIK), .B2(GK1J), .A(GIK), .ZN(n7) );
  AND2_X1 U3 ( .A1(PK1J), .A2(PIK), .ZN(PIJ) );
endmodule


module PG_BLOCK_4 ( PIK, GIK, PK1J, GK1J, GIJ, PIJ );
  input PIK, GIK, PK1J, GK1J;
  output GIJ, PIJ;
  wire   n7;

  AND2_X1 U1 ( .A1(PK1J), .A2(PIK), .ZN(PIJ) );
  INV_X1 U2 ( .A(n7), .ZN(GIJ) );
  AOI21_X1 U3 ( .B1(PIK), .B2(GK1J), .A(GIK), .ZN(n7) );
endmodule


module PG_BLOCK_5 ( PIK, GIK, PK1J, GK1J, GIJ, PIJ );
  input PIK, GIK, PK1J, GK1J;
  output GIJ, PIJ;
  wire   n7;

  AND2_X1 U1 ( .A1(PK1J), .A2(PIK), .ZN(PIJ) );
  AOI21_X1 U2 ( .B1(GK1J), .B2(PIK), .A(GIK), .ZN(n7) );
  INV_X1 U3 ( .A(n7), .ZN(GIJ) );
endmodule


module PG_BLOCK_6 ( PIK, GIK, PK1J, GK1J, GIJ, PIJ );
  input PIK, GIK, PK1J, GK1J;
  output GIJ, PIJ;
  wire   n7;

  INV_X1 U1 ( .A(n7), .ZN(GIJ) );
  AOI21_X1 U2 ( .B1(PIK), .B2(GK1J), .A(GIK), .ZN(n7) );
  AND2_X1 U3 ( .A1(PK1J), .A2(PIK), .ZN(PIJ) );
endmodule


module PG_BLOCK_7 ( PIK, GIK, PK1J, GK1J, GIJ, PIJ );
  input PIK, GIK, PK1J, GK1J;
  output GIJ, PIJ;
  wire   n7;

  INV_X1 U1 ( .A(n7), .ZN(GIJ) );
  AOI21_X1 U2 ( .B1(PIK), .B2(GK1J), .A(GIK), .ZN(n7) );
  AND2_X1 U3 ( .A1(PK1J), .A2(PIK), .ZN(PIJ) );
endmodule


module PG_BLOCK_8 ( PIK, GIK, PK1J, GK1J, GIJ, PIJ );
  input PIK, GIK, PK1J, GK1J;
  output GIJ, PIJ;
  wire   n7;

  AOI21_X1 U1 ( .B1(PIK), .B2(GK1J), .A(GIK), .ZN(n7) );
  AND2_X1 U2 ( .A1(PK1J), .A2(PIK), .ZN(PIJ) );
  INV_X1 U3 ( .A(n7), .ZN(GIJ) );
endmodule


module PG_BLOCK_9 ( PIK, GIK, PK1J, GK1J, GIJ, PIJ );
  input PIK, GIK, PK1J, GK1J;
  output GIJ, PIJ;
  wire   n7;

  AOI21_X1 U1 ( .B1(PIK), .B2(GK1J), .A(GIK), .ZN(n7) );
  AND2_X1 U2 ( .A1(PK1J), .A2(PIK), .ZN(PIJ) );
  INV_X1 U3 ( .A(n7), .ZN(GIJ) );
endmodule


module PG_BLOCK_10 ( PIK, GIK, PK1J, GK1J, GIJ, PIJ );
  input PIK, GIK, PK1J, GK1J;
  output GIJ, PIJ;
  wire   n7;

  AND2_X1 U1 ( .A1(PK1J), .A2(PIK), .ZN(PIJ) );
  AOI21_X1 U2 ( .B1(PIK), .B2(GK1J), .A(GIK), .ZN(n7) );
  INV_X1 U3 ( .A(n7), .ZN(GIJ) );
endmodule


module PG_BLOCK_11 ( PIK, GIK, PK1J, GK1J, GIJ, PIJ );
  input PIK, GIK, PK1J, GK1J;
  output GIJ, PIJ;
  wire   n7;

  AND2_X1 U1 ( .A1(PK1J), .A2(PIK), .ZN(PIJ) );
  AOI21_X1 U2 ( .B1(PIK), .B2(GK1J), .A(GIK), .ZN(n7) );
  INV_X1 U3 ( .A(n7), .ZN(GIJ) );
endmodule


module PG_BLOCK_12 ( PIK, GIK, PK1J, GK1J, GIJ, PIJ );
  input PIK, GIK, PK1J, GK1J;
  output GIJ, PIJ;
  wire   n7;

  AND2_X1 U1 ( .A1(PK1J), .A2(PIK), .ZN(PIJ) );
  INV_X1 U2 ( .A(n7), .ZN(GIJ) );
  AOI21_X1 U3 ( .B1(PIK), .B2(GK1J), .A(GIK), .ZN(n7) );
endmodule


module PG_BLOCK_13 ( PIK, GIK, PK1J, GK1J, GIJ, PIJ );
  input PIK, GIK, PK1J, GK1J;
  output GIJ, PIJ;
  wire   n7;

  INV_X1 U1 ( .A(n7), .ZN(GIJ) );
  AOI21_X1 U2 ( .B1(PIK), .B2(GK1J), .A(GIK), .ZN(n7) );
  AND2_X1 U3 ( .A1(PK1J), .A2(PIK), .ZN(PIJ) );
endmodule


module PG_BLOCK_14 ( PIK, GIK, PK1J, GK1J, GIJ, PIJ );
  input PIK, GIK, PK1J, GK1J;
  output GIJ, PIJ;
  wire   n7;

  INV_X1 U1 ( .A(n7), .ZN(GIJ) );
  AOI21_X1 U2 ( .B1(PIK), .B2(GK1J), .A(GIK), .ZN(n7) );
  AND2_X1 U3 ( .A1(PK1J), .A2(PIK), .ZN(PIJ) );
endmodule


module PG_BLOCK_15 ( PIK, GIK, PK1J, GK1J, GIJ, PIJ );
  input PIK, GIK, PK1J, GK1J;
  output GIJ, PIJ;
  wire   n7;

  INV_X1 U1 ( .A(n7), .ZN(GIJ) );
  AOI21_X1 U2 ( .B1(PIK), .B2(GK1J), .A(GIK), .ZN(n7) );
  AND2_X1 U3 ( .A1(PK1J), .A2(PIK), .ZN(PIJ) );
endmodule


module PG_BLOCK_16 ( PIK, GIK, PK1J, GK1J, GIJ, PIJ );
  input PIK, GIK, PK1J, GK1J;
  output GIJ, PIJ;
  wire   n7;

  INV_X1 U1 ( .A(n7), .ZN(GIJ) );
  AOI21_X1 U2 ( .B1(PIK), .B2(GK1J), .A(GIK), .ZN(n7) );
  AND2_X1 U3 ( .A1(PK1J), .A2(PIK), .ZN(PIJ) );
endmodule


module PG_BLOCK_17 ( PIK, GIK, PK1J, GK1J, GIJ, PIJ );
  input PIK, GIK, PK1J, GK1J;
  output GIJ, PIJ;
  wire   n7;

  INV_X1 U1 ( .A(n7), .ZN(GIJ) );
  AOI21_X1 U2 ( .B1(PIK), .B2(GK1J), .A(GIK), .ZN(n7) );
  AND2_X1 U3 ( .A1(PIK), .A2(PK1J), .ZN(PIJ) );
endmodule


module PG_BLOCK_18 ( PIK, GIK, PK1J, GK1J, GIJ, PIJ );
  input PIK, GIK, PK1J, GK1J;
  output GIJ, PIJ;
  wire   n7;

  INV_X1 U1 ( .A(n7), .ZN(GIJ) );
  AOI21_X1 U2 ( .B1(PIK), .B2(GK1J), .A(GIK), .ZN(n7) );
  AND2_X1 U3 ( .A1(PK1J), .A2(PIK), .ZN(PIJ) );
endmodule


module PG_BLOCK_19 ( PIK, GIK, PK1J, GK1J, GIJ, PIJ );
  input PIK, GIK, PK1J, GK1J;
  output GIJ, PIJ;
  wire   n7;

  AND2_X1 U1 ( .A1(PK1J), .A2(PIK), .ZN(PIJ) );
  INV_X1 U2 ( .A(n7), .ZN(GIJ) );
  AOI21_X1 U3 ( .B1(PIK), .B2(GK1J), .A(GIK), .ZN(n7) );
endmodule


module PG_BLOCK_20 ( PIK, GIK, PK1J, GK1J, GIJ, PIJ );
  input PIK, GIK, PK1J, GK1J;
  output GIJ, PIJ;
  wire   n7;

  INV_X1 U1 ( .A(n7), .ZN(GIJ) );
  AOI21_X1 U2 ( .B1(PIK), .B2(GK1J), .A(GIK), .ZN(n7) );
  AND2_X1 U3 ( .A1(PK1J), .A2(PIK), .ZN(PIJ) );
endmodule


module PG_BLOCK_21 ( PIK, GIK, PK1J, GK1J, GIJ, PIJ );
  input PIK, GIK, PK1J, GK1J;
  output GIJ, PIJ;
  wire   n7;

  INV_X1 U1 ( .A(n7), .ZN(GIJ) );
  AND2_X1 U2 ( .A1(PIK), .A2(PK1J), .ZN(PIJ) );
  AOI21_X1 U3 ( .B1(PIK), .B2(GK1J), .A(GIK), .ZN(n7) );
endmodule


module PG_BLOCK_22 ( PIK, GIK, PK1J, GK1J, GIJ, PIJ );
  input PIK, GIK, PK1J, GK1J;
  output GIJ, PIJ;
  wire   n7;

  AND2_X1 U1 ( .A1(PK1J), .A2(PIK), .ZN(PIJ) );
  INV_X1 U2 ( .A(n7), .ZN(GIJ) );
  AOI21_X1 U3 ( .B1(PIK), .B2(GK1J), .A(GIK), .ZN(n7) );
endmodule


module PG_BLOCK_23 ( PIK, GIK, PK1J, GK1J, GIJ, PIJ );
  input PIK, GIK, PK1J, GK1J;
  output GIJ, PIJ;
  wire   n7;

  AND2_X1 U1 ( .A1(PK1J), .A2(PIK), .ZN(PIJ) );
  INV_X1 U2 ( .A(n7), .ZN(GIJ) );
  AOI21_X1 U3 ( .B1(PIK), .B2(GK1J), .A(GIK), .ZN(n7) );
endmodule


module PG_BLOCK_24 ( PIK, GIK, PK1J, GK1J, GIJ, PIJ );
  input PIK, GIK, PK1J, GK1J;
  output GIJ, PIJ;
  wire   n7;

  AOI21_X1 U1 ( .B1(PIK), .B2(GK1J), .A(GIK), .ZN(n7) );
  AND2_X1 U2 ( .A1(PK1J), .A2(PIK), .ZN(PIJ) );
  INV_X1 U3 ( .A(n7), .ZN(GIJ) );
endmodule


module PG_BLOCK_25 ( PIK, GIK, PK1J, GK1J, GIJ, PIJ );
  input PIK, GIK, PK1J, GK1J;
  output GIJ, PIJ;
  wire   n7, n8;

  CLKBUF_X1 U1 ( .A(PIK), .Z(n7) );
  INV_X1 U2 ( .A(n8), .ZN(GIJ) );
  AOI21_X1 U3 ( .B1(PIK), .B2(GK1J), .A(GIK), .ZN(n8) );
  AND2_X1 U4 ( .A1(n7), .A2(PK1J), .ZN(PIJ) );
endmodule


module PG_BLOCK_26 ( PIK, GIK, PK1J, GK1J, GIJ, PIJ );
  input PIK, GIK, PK1J, GK1J;
  output GIJ, PIJ;
  wire   n7;

  AND2_X1 U1 ( .A1(PK1J), .A2(PIK), .ZN(PIJ) );
  INV_X1 U2 ( .A(n7), .ZN(GIJ) );
  AOI21_X1 U3 ( .B1(PIK), .B2(GK1J), .A(GIK), .ZN(n7) );
endmodule


module CARRY_GENERATOR_NBIT32_NBLOCK4 ( A, B, Cin, Co );
  input [31:0] A;
  input [31:0] B;
  output [8:0] Co;
  input Cin;
  wire   Cin, n8, n9, n10, \PGNET_G[4][31] , \PGNET_G[4][27] ,
         \PGNET_G[3][31] , \PGNET_G[3][23] , \PGNET_G[3][15] ,
         \PGNET_G[3][11] , \PGNET_G[2][31] , \PGNET_G[2][27] ,
         \PGNET_G[2][23] , \PGNET_G[2][19] , \PGNET_G[2][15] , \PGNET_G[2][7] ,
         \PGNET_G[1][31] , \PGNET_G[1][29] , \PGNET_G[1][27] ,
         \PGNET_G[1][25] , \PGNET_G[1][23] , \PGNET_G[1][21] ,
         \PGNET_G[1][19] , \PGNET_G[1][17] , \PGNET_G[1][15] ,
         \PGNET_G[1][13] , \PGNET_G[1][11] , \PGNET_G[1][9] , \PGNET_G[1][7] ,
         \PGNET_G[1][5] , \PGNET_G[1][3] , \PGNET_G[0][31] , \PGNET_G[0][30] ,
         \PGNET_G[0][29] , \PGNET_G[0][28] , \PGNET_G[0][27] ,
         \PGNET_G[0][26] , \PGNET_G[0][25] , \PGNET_G[0][24] ,
         \PGNET_G[0][23] , \PGNET_G[0][22] , \PGNET_G[0][21] ,
         \PGNET_G[0][20] , \PGNET_G[0][19] , \PGNET_G[0][18] ,
         \PGNET_G[0][17] , \PGNET_G[0][16] , \PGNET_G[0][15] ,
         \PGNET_G[0][14] , \PGNET_G[0][13] , \PGNET_G[0][12] ,
         \PGNET_G[0][11] , \PGNET_G[0][10] , \PGNET_G[0][9] , \PGNET_G[0][8] ,
         \PGNET_G[0][7] , \PGNET_G[0][6] , \PGNET_G[0][5] , \PGNET_G[0][4] ,
         \PGNET_G[0][3] , \PGNET_G[0][2] , \PGNET_G[0][1] , \PGNET_G[0][0] ,
         \PGNET_P[4][31] , \PGNET_P[4][27] , \PGNET_P[3][31] ,
         \PGNET_P[3][23] , \PGNET_P[3][15] , \PGNET_P[3][11] ,
         \PGNET_P[2][31] , \PGNET_P[2][27] , \PGNET_P[2][23] ,
         \PGNET_P[2][19] , \PGNET_P[2][15] , \PGNET_P[2][7] , \PGNET_P[1][31] ,
         \PGNET_P[1][29] , \PGNET_P[1][27] , \PGNET_P[1][25] ,
         \PGNET_P[1][23] , \PGNET_P[1][21] , \PGNET_P[1][19] ,
         \PGNET_P[1][17] , \PGNET_P[1][15] , \PGNET_P[1][13] ,
         \PGNET_P[1][11] , \PGNET_P[1][9] , \PGNET_P[1][7] , \PGNET_P[1][5] ,
         \PGNET_P[1][3] , \PGNET_P[0][31] , \PGNET_P[0][30] , \PGNET_P[0][29] ,
         \PGNET_P[0][28] , \PGNET_P[0][27] , \PGNET_P[0][26] ,
         \PGNET_P[0][25] , \PGNET_P[0][24] , \PGNET_P[0][23] ,
         \PGNET_P[0][22] , \PGNET_P[0][21] , \PGNET_P[0][20] ,
         \PGNET_P[0][19] , \PGNET_P[0][18] , \PGNET_P[0][17] ,
         \PGNET_P[0][16] , \PGNET_P[0][15] , \PGNET_P[0][14] ,
         \PGNET_P[0][13] , \PGNET_P[0][12] , \PGNET_P[0][11] ,
         \PGNET_P[0][10] , \PGNET_P[0][9] , \PGNET_P[0][8] , \PGNET_P[0][7] ,
         \PGNET_P[0][6] , \PGNET_P[0][5] , \PGNET_P[0][4] , \PGNET_P[0][3] ,
         \PGNET_P[0][2] , \PGNET_P[0][1] , \carries[1] , n11, n12, n14, n16;
  assign Co[0] = Cin;

  PG_NET_0 pgport_0 ( .A(A[0]), .B(B[0]), .G(\PGNET_G[0][0] ) );
  PG_NET_31 pgport_1 ( .A(A[1]), .B(B[1]), .P(\PGNET_P[0][1] ), .G(
        \PGNET_G[0][1] ) );
  PG_NET_30 pgport_2 ( .A(A[2]), .B(B[2]), .P(\PGNET_P[0][2] ), .G(
        \PGNET_G[0][2] ) );
  PG_NET_29 pgport_3 ( .A(A[3]), .B(B[3]), .P(\PGNET_P[0][3] ), .G(
        \PGNET_G[0][3] ) );
  PG_NET_28 pgport_4 ( .A(A[4]), .B(B[4]), .P(\PGNET_P[0][4] ), .G(
        \PGNET_G[0][4] ) );
  PG_NET_27 pgport_5 ( .A(A[5]), .B(B[5]), .P(\PGNET_P[0][5] ), .G(
        \PGNET_G[0][5] ) );
  PG_NET_26 pgport_6 ( .A(A[6]), .B(B[6]), .P(\PGNET_P[0][6] ), .G(
        \PGNET_G[0][6] ) );
  PG_NET_25 pgport_7 ( .A(A[7]), .B(B[7]), .P(\PGNET_P[0][7] ), .G(
        \PGNET_G[0][7] ) );
  PG_NET_24 pgport_8 ( .A(A[8]), .B(B[8]), .P(\PGNET_P[0][8] ), .G(
        \PGNET_G[0][8] ) );
  PG_NET_23 pgport_9 ( .A(A[9]), .B(B[9]), .P(\PGNET_P[0][9] ), .G(
        \PGNET_G[0][9] ) );
  PG_NET_22 pgport_10 ( .A(A[10]), .B(B[10]), .P(\PGNET_P[0][10] ), .G(
        \PGNET_G[0][10] ) );
  PG_NET_21 pgport_11 ( .A(A[11]), .B(B[11]), .P(\PGNET_P[0][11] ), .G(
        \PGNET_G[0][11] ) );
  PG_NET_20 pgport_12 ( .A(A[12]), .B(B[12]), .P(\PGNET_P[0][12] ), .G(
        \PGNET_G[0][12] ) );
  PG_NET_19 pgport_13 ( .A(A[13]), .B(B[13]), .P(\PGNET_P[0][13] ), .G(
        \PGNET_G[0][13] ) );
  PG_NET_18 pgport_14 ( .A(A[14]), .B(B[14]), .P(\PGNET_P[0][14] ), .G(
        \PGNET_G[0][14] ) );
  PG_NET_17 pgport_15 ( .A(A[15]), .B(B[15]), .P(\PGNET_P[0][15] ), .G(
        \PGNET_G[0][15] ) );
  PG_NET_16 pgport_16 ( .A(A[16]), .B(B[16]), .P(\PGNET_P[0][16] ), .G(
        \PGNET_G[0][16] ) );
  PG_NET_15 pgport_17 ( .A(A[17]), .B(B[17]), .P(\PGNET_P[0][17] ), .G(
        \PGNET_G[0][17] ) );
  PG_NET_14 pgport_18 ( .A(A[18]), .B(B[18]), .P(\PGNET_P[0][18] ), .G(
        \PGNET_G[0][18] ) );
  PG_NET_13 pgport_19 ( .A(A[19]), .B(B[19]), .P(\PGNET_P[0][19] ), .G(
        \PGNET_G[0][19] ) );
  PG_NET_12 pgport_20 ( .A(A[20]), .B(B[20]), .P(\PGNET_P[0][20] ), .G(
        \PGNET_G[0][20] ) );
  PG_NET_11 pgport_21 ( .A(A[21]), .B(B[21]), .P(\PGNET_P[0][21] ), .G(
        \PGNET_G[0][21] ) );
  PG_NET_10 pgport_22 ( .A(A[22]), .B(B[22]), .P(\PGNET_P[0][22] ), .G(
        \PGNET_G[0][22] ) );
  PG_NET_9 pgport_23 ( .A(A[23]), .B(B[23]), .P(\PGNET_P[0][23] ), .G(
        \PGNET_G[0][23] ) );
  PG_NET_8 pgport_24 ( .A(A[24]), .B(B[24]), .P(\PGNET_P[0][24] ), .G(
        \PGNET_G[0][24] ) );
  PG_NET_7 pgport_25 ( .A(A[25]), .B(B[25]), .P(\PGNET_P[0][25] ), .G(
        \PGNET_G[0][25] ) );
  PG_NET_6 pgport_26 ( .A(A[26]), .B(B[26]), .P(\PGNET_P[0][26] ), .G(
        \PGNET_G[0][26] ) );
  PG_NET_5 pgport_27 ( .A(A[27]), .B(B[27]), .P(\PGNET_P[0][27] ), .G(
        \PGNET_G[0][27] ) );
  PG_NET_4 pgport_28 ( .A(A[28]), .B(B[28]), .P(\PGNET_P[0][28] ), .G(
        \PGNET_G[0][28] ) );
  PG_NET_3 pgport_29 ( .A(A[29]), .B(B[29]), .P(\PGNET_P[0][29] ), .G(
        \PGNET_G[0][29] ) );
  PG_NET_2 pgport_30 ( .A(A[30]), .B(B[30]), .P(\PGNET_P[0][30] ), .G(
        \PGNET_G[0][30] ) );
  PG_NET_1 pgport_31 ( .A(A[31]), .B(B[31]), .P(\PGNET_P[0][31] ), .G(
        \PGNET_G[0][31] ) );
  G_BLOCK_0 gi_1_1 ( .PIK(\PGNET_P[0][1] ), .GIK(\PGNET_G[0][1] ), .GK1J(
        \PGNET_G[0][0] ), .GIJ(\carries[1] ) );
  PG_BLOCK_0 pgi_1_3 ( .PIK(\PGNET_P[0][3] ), .GIK(\PGNET_G[0][3] ), .PK1J(
        \PGNET_P[0][2] ), .GK1J(\PGNET_G[0][2] ), .GIJ(\PGNET_G[1][3] ), .PIJ(
        \PGNET_P[1][3] ) );
  PG_BLOCK_26 pgi_1_5 ( .PIK(\PGNET_P[0][5] ), .GIK(\PGNET_G[0][5] ), .PK1J(
        \PGNET_P[0][4] ), .GK1J(\PGNET_G[0][4] ), .GIJ(\PGNET_G[1][5] ), .PIJ(
        \PGNET_P[1][5] ) );
  PG_BLOCK_25 pgi_1_7 ( .PIK(\PGNET_P[0][7] ), .GIK(\PGNET_G[0][7] ), .PK1J(
        \PGNET_P[0][6] ), .GK1J(\PGNET_G[0][6] ), .GIJ(\PGNET_G[1][7] ), .PIJ(
        \PGNET_P[1][7] ) );
  PG_BLOCK_24 pgi_1_9 ( .PIK(\PGNET_P[0][9] ), .GIK(\PGNET_G[0][9] ), .PK1J(
        \PGNET_P[0][8] ), .GK1J(\PGNET_G[0][8] ), .GIJ(\PGNET_G[1][9] ), .PIJ(
        \PGNET_P[1][9] ) );
  PG_BLOCK_23 pgi_1_11 ( .PIK(\PGNET_P[0][11] ), .GIK(\PGNET_G[0][11] ), 
        .PK1J(\PGNET_P[0][10] ), .GK1J(\PGNET_G[0][10] ), .GIJ(
        \PGNET_G[1][11] ), .PIJ(\PGNET_P[1][11] ) );
  PG_BLOCK_22 pgi_1_13 ( .PIK(\PGNET_P[0][13] ), .GIK(\PGNET_G[0][13] ), 
        .PK1J(\PGNET_P[0][12] ), .GK1J(\PGNET_G[0][12] ), .GIJ(
        \PGNET_G[1][13] ), .PIJ(\PGNET_P[1][13] ) );
  PG_BLOCK_21 pgi_1_15 ( .PIK(\PGNET_P[0][15] ), .GIK(\PGNET_G[0][15] ), 
        .PK1J(\PGNET_P[0][14] ), .GK1J(\PGNET_G[0][14] ), .GIJ(
        \PGNET_G[1][15] ), .PIJ(\PGNET_P[1][15] ) );
  PG_BLOCK_20 pgi_1_17 ( .PIK(\PGNET_P[0][17] ), .GIK(\PGNET_G[0][17] ), 
        .PK1J(\PGNET_P[0][16] ), .GK1J(\PGNET_G[0][16] ), .GIJ(
        \PGNET_G[1][17] ), .PIJ(\PGNET_P[1][17] ) );
  PG_BLOCK_19 pgi_1_19 ( .PIK(\PGNET_P[0][19] ), .GIK(\PGNET_G[0][19] ), 
        .PK1J(\PGNET_P[0][18] ), .GK1J(\PGNET_G[0][18] ), .GIJ(
        \PGNET_G[1][19] ), .PIJ(\PGNET_P[1][19] ) );
  PG_BLOCK_18 pgi_1_21 ( .PIK(\PGNET_P[0][21] ), .GIK(\PGNET_G[0][21] ), 
        .PK1J(\PGNET_P[0][20] ), .GK1J(\PGNET_G[0][20] ), .GIJ(
        \PGNET_G[1][21] ), .PIJ(\PGNET_P[1][21] ) );
  PG_BLOCK_17 pgi_1_23 ( .PIK(\PGNET_P[0][23] ), .GIK(\PGNET_G[0][23] ), 
        .PK1J(\PGNET_P[0][22] ), .GK1J(\PGNET_G[0][22] ), .GIJ(
        \PGNET_G[1][23] ), .PIJ(\PGNET_P[1][23] ) );
  PG_BLOCK_16 pgi_1_25 ( .PIK(\PGNET_P[0][25] ), .GIK(\PGNET_G[0][25] ), 
        .PK1J(\PGNET_P[0][24] ), .GK1J(\PGNET_G[0][24] ), .GIJ(
        \PGNET_G[1][25] ), .PIJ(\PGNET_P[1][25] ) );
  PG_BLOCK_15 pgi_1_27 ( .PIK(\PGNET_P[0][27] ), .GIK(\PGNET_G[0][27] ), 
        .PK1J(\PGNET_P[0][26] ), .GK1J(\PGNET_G[0][26] ), .GIJ(
        \PGNET_G[1][27] ), .PIJ(\PGNET_P[1][27] ) );
  PG_BLOCK_14 pgi_1_29 ( .PIK(\PGNET_P[0][29] ), .GIK(\PGNET_G[0][29] ), 
        .PK1J(\PGNET_P[0][28] ), .GK1J(\PGNET_G[0][28] ), .GIJ(
        \PGNET_G[1][29] ), .PIJ(\PGNET_P[1][29] ) );
  PG_BLOCK_13 pgi_1_31 ( .PIK(\PGNET_P[0][31] ), .GIK(\PGNET_G[0][31] ), 
        .PK1J(\PGNET_P[0][30] ), .GK1J(\PGNET_G[0][30] ), .GIJ(
        \PGNET_G[1][31] ), .PIJ(\PGNET_P[1][31] ) );
  G_BLOCK_8 gi_2_3 ( .PIK(\PGNET_P[1][3] ), .GIK(\PGNET_G[1][3] ), .GK1J(
        \carries[1] ), .GIJ(n10) );
  PG_BLOCK_12 pgi_2_7 ( .PIK(\PGNET_P[1][7] ), .GIK(\PGNET_G[1][7] ), .PK1J(
        \PGNET_P[1][5] ), .GK1J(\PGNET_G[1][5] ), .GIJ(\PGNET_G[2][7] ), .PIJ(
        \PGNET_P[2][7] ) );
  PG_BLOCK_11 pgi_2_11 ( .PIK(\PGNET_P[1][11] ), .GIK(\PGNET_G[1][11] ), 
        .PK1J(\PGNET_P[1][9] ), .GK1J(\PGNET_G[1][9] ), .GIJ(\PGNET_G[3][11] ), 
        .PIJ(\PGNET_P[3][11] ) );
  PG_BLOCK_10 pgi_2_15 ( .PIK(\PGNET_P[1][15] ), .GIK(\PGNET_G[1][15] ), 
        .PK1J(\PGNET_P[1][13] ), .GK1J(\PGNET_G[1][13] ), .GIJ(
        \PGNET_G[2][15] ), .PIJ(\PGNET_P[2][15] ) );
  PG_BLOCK_9 pgi_2_19 ( .PIK(\PGNET_P[1][19] ), .GIK(\PGNET_G[1][19] ), .PK1J(
        \PGNET_P[1][17] ), .GK1J(\PGNET_G[1][17] ), .GIJ(\PGNET_G[2][19] ), 
        .PIJ(\PGNET_P[2][19] ) );
  PG_BLOCK_8 pgi_2_23 ( .PIK(\PGNET_P[1][23] ), .GIK(\PGNET_G[1][23] ), .PK1J(
        \PGNET_P[1][21] ), .GK1J(\PGNET_G[1][21] ), .GIJ(\PGNET_G[2][23] ), 
        .PIJ(\PGNET_P[2][23] ) );
  PG_BLOCK_7 pgi_2_27 ( .PIK(\PGNET_P[1][27] ), .GIK(\PGNET_G[1][27] ), .PK1J(
        \PGNET_P[1][25] ), .GK1J(\PGNET_G[1][25] ), .GIJ(\PGNET_G[2][27] ), 
        .PIJ(\PGNET_P[2][27] ) );
  PG_BLOCK_6 pgi_2_31 ( .PIK(\PGNET_P[1][31] ), .GIK(\PGNET_G[1][31] ), .PK1J(
        \PGNET_P[1][29] ), .GK1J(\PGNET_G[1][29] ), .GIJ(\PGNET_G[2][31] ), 
        .PIJ(\PGNET_P[2][31] ) );
  G_BLOCK_7 gi_3_7 ( .PIK(\PGNET_P[2][7] ), .GIK(\PGNET_G[2][7] ), .GK1J(n10), 
        .GIJ(n9) );
  PG_BLOCK_5 pgi_3_15 ( .PIK(\PGNET_P[2][15] ), .GIK(\PGNET_G[2][15] ), .PK1J(
        \PGNET_P[3][11] ), .GK1J(\PGNET_G[3][11] ), .GIJ(\PGNET_G[3][15] ), 
        .PIJ(\PGNET_P[3][15] ) );
  PG_BLOCK_4 pgi_3_23 ( .PIK(\PGNET_P[2][23] ), .GIK(\PGNET_G[2][23] ), .PK1J(
        \PGNET_P[2][19] ), .GK1J(\PGNET_G[2][19] ), .GIJ(\PGNET_G[3][23] ), 
        .PIJ(\PGNET_P[3][23] ) );
  PG_BLOCK_3 pgi_3_31 ( .PIK(\PGNET_P[2][31] ), .GIK(\PGNET_G[2][31] ), .PK1J(
        \PGNET_P[2][27] ), .GK1J(\PGNET_G[2][27] ), .GIJ(\PGNET_G[3][31] ), 
        .PIJ(\PGNET_P[3][31] ) );
  G_BLOCK_6 gi_4_11 ( .PIK(\PGNET_P[3][11] ), .GIK(\PGNET_G[3][11] ), .GK1J(
        n12), .GIJ(Co[3]) );
  G_BLOCK_5 gi_4_15 ( .PIK(\PGNET_P[3][15] ), .GIK(\PGNET_G[3][15] ), .GK1J(n9), .GIJ(n8) );
  PG_BLOCK_2 pgi_4_27 ( .PIK(\PGNET_P[2][27] ), .GIK(\PGNET_G[2][27] ), .PK1J(
        \PGNET_P[3][23] ), .GK1J(\PGNET_G[3][23] ), .GIJ(\PGNET_G[4][27] ), 
        .PIJ(\PGNET_P[4][27] ) );
  PG_BLOCK_1 pgi_4_31 ( .PIK(\PGNET_P[3][31] ), .GIK(\PGNET_G[3][31] ), .PK1J(
        \PGNET_P[3][23] ), .GK1J(n11), .GIJ(\PGNET_G[4][31] ), .PIJ(
        \PGNET_P[4][31] ) );
  G_BLOCK_4 gi_5_19 ( .PIK(\PGNET_P[2][19] ), .GIK(\PGNET_G[2][19] ), .GK1J(n8), .GIJ(Co[5]) );
  G_BLOCK_3 gi_5_23 ( .PIK(\PGNET_P[3][23] ), .GIK(n11), .GK1J(n8), .GIJ(Co[6]) );
  G_BLOCK_2 gi_5_27 ( .PIK(\PGNET_P[4][27] ), .GIK(\PGNET_G[4][27] ), .GK1J(n8), .GIJ(Co[7]) );
  G_BLOCK_1 gi_5_31 ( .PIK(\PGNET_P[4][31] ), .GIK(\PGNET_G[4][31] ), .GK1J(
        Co[4]), .GIJ(Co[8]) );
  CLKBUF_X1 U1 ( .A(\PGNET_G[3][23] ), .Z(n11) );
  INV_X1 U2 ( .A(n16), .ZN(n12) );
  BUF_X2 U3 ( .A(n14), .Z(Co[4]) );
  CLKBUF_X1 U4 ( .A(n8), .Z(n14) );
  CLKBUF_X1 U5 ( .A(n10), .Z(Co[1]) );
  INV_X1 U6 ( .A(n9), .ZN(n16) );
  INV_X1 U7 ( .A(n16), .ZN(Co[2]) );
endmodule


module FA_0 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n2, n3;

  XOR2_X1 U3 ( .A(c_in), .B(n2), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n2) );
  INV_X1 U1 ( .A(n3), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n2), .B2(c_in), .ZN(n3) );
endmodule


module FA_61 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_62 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_63 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module RCA_size4_0 ( a, b, c_in, c_out, sum );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input c_in;
  output c_out;

  wire   [3:1] temp;

  FA_0 fa_i_0 ( .a(a[0]), .b(b[0]), .c_in(c_in), .c_out(temp[1]), .s(sum[0])
         );
  FA_63 fa_i_1 ( .a(a[1]), .b(b[1]), .c_in(temp[1]), .c_out(temp[2]), .s(
        sum[1]) );
  FA_62 fa_i_2 ( .a(a[2]), .b(b[2]), .c_in(temp[2]), .c_out(temp[3]), .s(
        sum[2]) );
  FA_61 fa_i_3 ( .a(a[3]), .b(b[3]), .c_in(temp[3]), .c_out(c_out), .s(sum[3])
         );
endmodule


module IV_0 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_0 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_94 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_95 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_0 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_0 UIV ( .A(S), .Y(SB) );
  ND2_0 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_95 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_94 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module IV_29 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_85 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_86 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_87 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_29 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_29 UIV ( .A(S), .Y(SB) );
  ND2_87 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_86 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_85 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module IV_30 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_88 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_89 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_90 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_30 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_30 UIV ( .A(S), .Y(SB) );
  ND2_90 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_89 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_88 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module IV_31 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_91 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_92 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_93 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_31 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_31 UIV ( .A(S), .Y(SB) );
  ND2_93 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_92 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_91 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module MUX21_GENERIC_NBIT4_0 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;


  MUX21_0 MUX21GENI_0 ( .A(A[0]), .B(B[0]), .S(SEL), .Y(Y[0]) );
  MUX21_31 MUX21GENI_1 ( .A(A[1]), .B(B[1]), .S(SEL), .Y(Y[1]) );
  MUX21_30 MUX21GENI_2 ( .A(A[2]), .B(B[2]), .S(SEL), .Y(Y[2]) );
  MUX21_29 MUX21GENI_3 ( .A(A[3]), .B(B[3]), .S(SEL), .Y(Y[3]) );
endmodule


module FA_57 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_58 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_59 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_60 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module RCA_size4_15 ( a, b, c_in, c_out, sum );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input c_in;
  output c_out;

  wire   [3:1] temp;

  FA_60 fa_i_0 ( .a(a[0]), .b(b[0]), .c_in(c_in), .c_out(temp[1]), .s(sum[0])
         );
  FA_59 fa_i_1 ( .a(a[1]), .b(b[1]), .c_in(temp[1]), .c_out(temp[2]), .s(
        sum[1]) );
  FA_58 fa_i_2 ( .a(a[2]), .b(b[2]), .c_in(temp[2]), .c_out(temp[3]), .s(
        sum[2]) );
  FA_57 fa_i_3 ( .a(a[3]), .b(b[3]), .c_in(temp[3]), .c_out(c_out), .s(sum[3])
         );
endmodule


module SUM_BLOCK_K4_0 ( a, b, C_gen, sum );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input C_gen;

  wire   [3:0] SUM1;
  wire   [3:0] SUM2;

  RCA_size4_0 RCA_CIN0 ( .a(a), .b(b), .c_in(1'b0), .sum(SUM1) );
  RCA_size4_15 RCA_CIN1 ( .a(a), .b(b), .c_in(1'b1), .sum(SUM2) );
  MUX21_GENERIC_NBIT4_0 MPX ( .A(SUM2), .B(SUM1), .SEL(C_gen), .Y(sum) );
endmodule


module FA_1 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_2 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_3 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_4 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module RCA_size4_1 ( a, b, c_in, c_out, sum );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input c_in;
  output c_out;

  wire   [3:1] temp;

  FA_4 fa_i_0 ( .a(a[0]), .b(b[0]), .c_in(c_in), .c_out(temp[1]), .s(sum[0])
         );
  FA_3 fa_i_1 ( .a(a[1]), .b(b[1]), .c_in(temp[1]), .c_out(temp[2]), .s(sum[1]) );
  FA_2 fa_i_2 ( .a(a[2]), .b(b[2]), .c_in(temp[2]), .c_out(temp[3]), .s(sum[2]) );
  FA_1 fa_i_3 ( .a(a[3]), .b(b[3]), .c_in(temp[3]), .c_out(c_out), .s(sum[3])
         );
endmodule


module FA_5 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_6 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_7 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_8 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module RCA_size4_2 ( a, b, c_in, c_out, sum );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input c_in;
  output c_out;

  wire   [3:1] temp;

  FA_8 fa_i_0 ( .a(a[0]), .b(b[0]), .c_in(c_in), .c_out(temp[1]), .s(sum[0])
         );
  FA_7 fa_i_1 ( .a(a[1]), .b(b[1]), .c_in(temp[1]), .c_out(temp[2]), .s(sum[1]) );
  FA_6 fa_i_2 ( .a(a[2]), .b(b[2]), .c_in(temp[2]), .c_out(temp[3]), .s(sum[2]) );
  FA_5 fa_i_3 ( .a(a[3]), .b(b[3]), .c_in(temp[3]), .c_out(c_out), .s(sum[3])
         );
endmodule


module IV_1 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_1 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_2 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_3 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_1 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_1 UIV ( .A(S), .Y(SB) );
  ND2_3 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_2 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_1 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module IV_2 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_4 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_5 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_6 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_2 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_2 UIV ( .A(S), .Y(SB) );
  ND2_6 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_5 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_4 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module IV_3 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_7 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_8 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_9 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_3 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_3 UIV ( .A(S), .Y(SB) );
  ND2_9 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_8 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_7 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module IV_4 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_10 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_11 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_12 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_4 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_4 UIV ( .A(S), .Y(SB) );
  ND2_12 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_11 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_10 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module MUX21_GENERIC_NBIT4_1 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;


  MUX21_4 MUX21GENI_0 ( .A(A[0]), .B(B[0]), .S(SEL), .Y(Y[0]) );
  MUX21_3 MUX21GENI_1 ( .A(A[1]), .B(B[1]), .S(SEL), .Y(Y[1]) );
  MUX21_2 MUX21GENI_2 ( .A(A[2]), .B(B[2]), .S(SEL), .Y(Y[2]) );
  MUX21_1 MUX21GENI_3 ( .A(A[3]), .B(B[3]), .S(SEL), .Y(Y[3]) );
endmodule


module SUM_BLOCK_K4_1 ( a, b, C_gen, sum );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input C_gen;

  wire   [3:0] SUM1;
  wire   [3:0] SUM2;

  RCA_size4_2 RCA_CIN0 ( .a(a), .b(b), .c_in(1'b0), .sum(SUM1) );
  RCA_size4_1 RCA_CIN1 ( .a(a), .b(b), .c_in(1'b1), .sum(SUM2) );
  MUX21_GENERIC_NBIT4_1 MPX ( .A(SUM2), .B(SUM1), .SEL(C_gen), .Y(sum) );
endmodule


module FA_9 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_10 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_11 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_12 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module RCA_size4_3 ( a, b, c_in, c_out, sum );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input c_in;
  output c_out;

  wire   [3:1] temp;

  FA_12 fa_i_0 ( .a(a[0]), .b(b[0]), .c_in(c_in), .c_out(temp[1]), .s(sum[0])
         );
  FA_11 fa_i_1 ( .a(a[1]), .b(b[1]), .c_in(temp[1]), .c_out(temp[2]), .s(
        sum[1]) );
  FA_10 fa_i_2 ( .a(a[2]), .b(b[2]), .c_in(temp[2]), .c_out(temp[3]), .s(
        sum[2]) );
  FA_9 fa_i_3 ( .a(a[3]), .b(b[3]), .c_in(temp[3]), .c_out(c_out), .s(sum[3])
         );
endmodule


module FA_13 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_14 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_15 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_16 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module RCA_size4_4 ( a, b, c_in, c_out, sum );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input c_in;
  output c_out;

  wire   [3:1] temp;

  FA_16 fa_i_0 ( .a(a[0]), .b(b[0]), .c_in(c_in), .c_out(temp[1]), .s(sum[0])
         );
  FA_15 fa_i_1 ( .a(a[1]), .b(b[1]), .c_in(temp[1]), .c_out(temp[2]), .s(
        sum[1]) );
  FA_14 fa_i_2 ( .a(a[2]), .b(b[2]), .c_in(temp[2]), .c_out(temp[3]), .s(
        sum[2]) );
  FA_13 fa_i_3 ( .a(a[3]), .b(b[3]), .c_in(temp[3]), .c_out(c_out), .s(sum[3])
         );
endmodule


module IV_5 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_13 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_14 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_15 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_5 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_5 UIV ( .A(S), .Y(SB) );
  ND2_15 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_14 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_13 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module IV_6 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_16 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_17 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_18 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_6 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_6 UIV ( .A(S), .Y(SB) );
  ND2_18 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_17 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_16 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module IV_7 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_19 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_20 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_21 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_7 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_7 UIV ( .A(S), .Y(SB) );
  ND2_21 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_20 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_19 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module IV_8 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_22 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_23 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_24 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_8 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_8 UIV ( .A(S), .Y(SB) );
  ND2_24 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_23 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_22 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module MUX21_GENERIC_NBIT4_2 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;


  MUX21_8 MUX21GENI_0 ( .A(A[0]), .B(B[0]), .S(SEL), .Y(Y[0]) );
  MUX21_7 MUX21GENI_1 ( .A(A[1]), .B(B[1]), .S(SEL), .Y(Y[1]) );
  MUX21_6 MUX21GENI_2 ( .A(A[2]), .B(B[2]), .S(SEL), .Y(Y[2]) );
  MUX21_5 MUX21GENI_3 ( .A(A[3]), .B(B[3]), .S(SEL), .Y(Y[3]) );
endmodule


module SUM_BLOCK_K4_2 ( a, b, C_gen, sum );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input C_gen;

  wire   [3:0] SUM1;
  wire   [3:0] SUM2;

  RCA_size4_4 RCA_CIN0 ( .a(a), .b(b), .c_in(1'b0), .sum(SUM1) );
  RCA_size4_3 RCA_CIN1 ( .a(a), .b(b), .c_in(1'b1), .sum(SUM2) );
  MUX21_GENERIC_NBIT4_2 MPX ( .A(SUM2), .B(SUM1), .SEL(C_gen), .Y(sum) );
endmodule


module FA_17 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_18 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_19 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_20 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module RCA_size4_5 ( a, b, c_in, c_out, sum );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input c_in;
  output c_out;

  wire   [3:1] temp;

  FA_20 fa_i_0 ( .a(a[0]), .b(b[0]), .c_in(c_in), .c_out(temp[1]), .s(sum[0])
         );
  FA_19 fa_i_1 ( .a(a[1]), .b(b[1]), .c_in(temp[1]), .c_out(temp[2]), .s(
        sum[1]) );
  FA_18 fa_i_2 ( .a(a[2]), .b(b[2]), .c_in(temp[2]), .c_out(temp[3]), .s(
        sum[2]) );
  FA_17 fa_i_3 ( .a(a[3]), .b(b[3]), .c_in(temp[3]), .c_out(c_out), .s(sum[3])
         );
endmodule


module FA_21 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_22 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_23 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_24 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module RCA_size4_6 ( a, b, c_in, c_out, sum );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input c_in;
  output c_out;

  wire   [3:1] temp;

  FA_24 fa_i_0 ( .a(a[0]), .b(b[0]), .c_in(c_in), .c_out(temp[1]), .s(sum[0])
         );
  FA_23 fa_i_1 ( .a(a[1]), .b(b[1]), .c_in(temp[1]), .c_out(temp[2]), .s(
        sum[1]) );
  FA_22 fa_i_2 ( .a(a[2]), .b(b[2]), .c_in(temp[2]), .c_out(temp[3]), .s(
        sum[2]) );
  FA_21 fa_i_3 ( .a(a[3]), .b(b[3]), .c_in(temp[3]), .c_out(c_out), .s(sum[3])
         );
endmodule


module IV_9 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_25 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_26 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_27 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_9 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_9 UIV ( .A(S), .Y(SB) );
  ND2_27 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_26 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_25 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module IV_10 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_28 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_29 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_30 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_10 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_10 UIV ( .A(S), .Y(SB) );
  ND2_30 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_29 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_28 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module IV_11 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_31 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_32 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_33 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_11 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_11 UIV ( .A(S), .Y(SB) );
  ND2_33 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_32 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_31 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module IV_12 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_34 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_35 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_36 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_12 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_12 UIV ( .A(S), .Y(SB) );
  ND2_36 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_35 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_34 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module MUX21_GENERIC_NBIT4_3 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;


  MUX21_12 MUX21GENI_0 ( .A(A[0]), .B(B[0]), .S(SEL), .Y(Y[0]) );
  MUX21_11 MUX21GENI_1 ( .A(A[1]), .B(B[1]), .S(SEL), .Y(Y[1]) );
  MUX21_10 MUX21GENI_2 ( .A(A[2]), .B(B[2]), .S(SEL), .Y(Y[2]) );
  MUX21_9 MUX21GENI_3 ( .A(A[3]), .B(B[3]), .S(SEL), .Y(Y[3]) );
endmodule


module SUM_BLOCK_K4_3 ( a, b, C_gen, sum );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input C_gen;

  wire   [3:0] SUM1;
  wire   [3:0] SUM2;

  RCA_size4_6 RCA_CIN0 ( .a(a), .b(b), .c_in(1'b0), .sum(SUM1) );
  RCA_size4_5 RCA_CIN1 ( .a(a), .b(b), .c_in(1'b1), .sum(SUM2) );
  MUX21_GENERIC_NBIT4_3 MPX ( .A(SUM2), .B(SUM1), .SEL(C_gen), .Y(sum) );
endmodule


module FA_25 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_26 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_27 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_28 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module RCA_size4_7 ( a, b, c_in, c_out, sum );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input c_in;
  output c_out;

  wire   [3:1] temp;

  FA_28 fa_i_0 ( .a(a[0]), .b(b[0]), .c_in(c_in), .c_out(temp[1]), .s(sum[0])
         );
  FA_27 fa_i_1 ( .a(a[1]), .b(b[1]), .c_in(temp[1]), .c_out(temp[2]), .s(
        sum[1]) );
  FA_26 fa_i_2 ( .a(a[2]), .b(b[2]), .c_in(temp[2]), .c_out(temp[3]), .s(
        sum[2]) );
  FA_25 fa_i_3 ( .a(a[3]), .b(b[3]), .c_in(temp[3]), .c_out(c_out), .s(sum[3])
         );
endmodule


module FA_29 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_30 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_31 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_32 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module RCA_size4_8 ( a, b, c_in, c_out, sum );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input c_in;
  output c_out;

  wire   [3:1] temp;

  FA_32 fa_i_0 ( .a(a[0]), .b(b[0]), .c_in(c_in), .c_out(temp[1]), .s(sum[0])
         );
  FA_31 fa_i_1 ( .a(a[1]), .b(b[1]), .c_in(temp[1]), .c_out(temp[2]), .s(
        sum[1]) );
  FA_30 fa_i_2 ( .a(a[2]), .b(b[2]), .c_in(temp[2]), .c_out(temp[3]), .s(
        sum[2]) );
  FA_29 fa_i_3 ( .a(a[3]), .b(b[3]), .c_in(temp[3]), .c_out(c_out), .s(sum[3])
         );
endmodule


module IV_13 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_37 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_38 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_39 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_13 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_13 UIV ( .A(S), .Y(SB) );
  ND2_39 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_38 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_37 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module IV_14 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_40 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_41 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_42 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_14 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_14 UIV ( .A(S), .Y(SB) );
  ND2_42 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_41 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_40 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module IV_15 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_43 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_44 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_45 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_15 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_15 UIV ( .A(S), .Y(SB) );
  ND2_45 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_44 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_43 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module IV_16 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_46 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_47 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_48 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_16 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_16 UIV ( .A(S), .Y(SB) );
  ND2_48 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_47 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_46 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module MUX21_GENERIC_NBIT4_4 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;


  MUX21_16 MUX21GENI_0 ( .A(A[0]), .B(B[0]), .S(SEL), .Y(Y[0]) );
  MUX21_15 MUX21GENI_1 ( .A(A[1]), .B(B[1]), .S(SEL), .Y(Y[1]) );
  MUX21_14 MUX21GENI_2 ( .A(A[2]), .B(B[2]), .S(SEL), .Y(Y[2]) );
  MUX21_13 MUX21GENI_3 ( .A(A[3]), .B(B[3]), .S(SEL), .Y(Y[3]) );
endmodule


module SUM_BLOCK_K4_4 ( a, b, C_gen, sum );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input C_gen;

  wire   [3:0] SUM1;
  wire   [3:0] SUM2;

  RCA_size4_8 RCA_CIN0 ( .a(a), .b(b), .c_in(1'b0), .sum(SUM1) );
  RCA_size4_7 RCA_CIN1 ( .a(a), .b(b), .c_in(1'b1), .sum(SUM2) );
  MUX21_GENERIC_NBIT4_4 MPX ( .A(SUM2), .B(SUM1), .SEL(C_gen), .Y(sum) );
endmodule


module FA_33 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_34 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_35 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_36 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module RCA_size4_9 ( a, b, c_in, c_out, sum );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input c_in;
  output c_out;

  wire   [3:1] temp;

  FA_36 fa_i_0 ( .a(a[0]), .b(b[0]), .c_in(c_in), .c_out(temp[1]), .s(sum[0])
         );
  FA_35 fa_i_1 ( .a(a[1]), .b(b[1]), .c_in(temp[1]), .c_out(temp[2]), .s(
        sum[1]) );
  FA_34 fa_i_2 ( .a(a[2]), .b(b[2]), .c_in(temp[2]), .c_out(temp[3]), .s(
        sum[2]) );
  FA_33 fa_i_3 ( .a(a[3]), .b(b[3]), .c_in(temp[3]), .c_out(c_out), .s(sum[3])
         );
endmodule


module FA_37 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_38 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_39 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_40 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module RCA_size4_10 ( a, b, c_in, c_out, sum );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input c_in;
  output c_out;

  wire   [3:1] temp;

  FA_40 fa_i_0 ( .a(a[0]), .b(b[0]), .c_in(c_in), .c_out(temp[1]), .s(sum[0])
         );
  FA_39 fa_i_1 ( .a(a[1]), .b(b[1]), .c_in(temp[1]), .c_out(temp[2]), .s(
        sum[1]) );
  FA_38 fa_i_2 ( .a(a[2]), .b(b[2]), .c_in(temp[2]), .c_out(temp[3]), .s(
        sum[2]) );
  FA_37 fa_i_3 ( .a(a[3]), .b(b[3]), .c_in(temp[3]), .c_out(c_out), .s(sum[3])
         );
endmodule


module IV_17 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_49 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_50 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_51 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_17 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_17 UIV ( .A(S), .Y(SB) );
  ND2_51 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_50 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_49 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module IV_18 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_52 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_53 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_54 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_18 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_18 UIV ( .A(S), .Y(SB) );
  ND2_54 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_53 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_52 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module IV_19 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_55 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_56 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_57 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_19 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_19 UIV ( .A(S), .Y(SB) );
  ND2_57 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_56 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_55 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module IV_20 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_58 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_59 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_60 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_20 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_20 UIV ( .A(S), .Y(SB) );
  ND2_60 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_59 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_58 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module MUX21_GENERIC_NBIT4_5 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;


  MUX21_20 MUX21GENI_0 ( .A(A[0]), .B(B[0]), .S(SEL), .Y(Y[0]) );
  MUX21_19 MUX21GENI_1 ( .A(A[1]), .B(B[1]), .S(SEL), .Y(Y[1]) );
  MUX21_18 MUX21GENI_2 ( .A(A[2]), .B(B[2]), .S(SEL), .Y(Y[2]) );
  MUX21_17 MUX21GENI_3 ( .A(A[3]), .B(B[3]), .S(SEL), .Y(Y[3]) );
endmodule


module SUM_BLOCK_K4_5 ( a, b, C_gen, sum );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input C_gen;

  wire   [3:0] SUM1;
  wire   [3:0] SUM2;

  RCA_size4_10 RCA_CIN0 ( .a(a), .b(b), .c_in(1'b0), .sum(SUM1) );
  RCA_size4_9 RCA_CIN1 ( .a(a), .b(b), .c_in(1'b1), .sum(SUM2) );
  MUX21_GENERIC_NBIT4_5 MPX ( .A(SUM2), .B(SUM1), .SEL(C_gen), .Y(sum) );
endmodule


module FA_41 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_42 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_43 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_44 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module RCA_size4_11 ( a, b, c_in, c_out, sum );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input c_in;
  output c_out;

  wire   [3:1] temp;

  FA_44 fa_i_0 ( .a(a[0]), .b(b[0]), .c_in(c_in), .c_out(temp[1]), .s(sum[0])
         );
  FA_43 fa_i_1 ( .a(a[1]), .b(b[1]), .c_in(temp[1]), .c_out(temp[2]), .s(
        sum[1]) );
  FA_42 fa_i_2 ( .a(a[2]), .b(b[2]), .c_in(temp[2]), .c_out(temp[3]), .s(
        sum[2]) );
  FA_41 fa_i_3 ( .a(a[3]), .b(b[3]), .c_in(temp[3]), .c_out(c_out), .s(sum[3])
         );
endmodule


module FA_45 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_46 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_47 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_48 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module RCA_size4_12 ( a, b, c_in, c_out, sum );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input c_in;
  output c_out;

  wire   [3:1] temp;

  FA_48 fa_i_0 ( .a(a[0]), .b(b[0]), .c_in(c_in), .c_out(temp[1]), .s(sum[0])
         );
  FA_47 fa_i_1 ( .a(a[1]), .b(b[1]), .c_in(temp[1]), .c_out(temp[2]), .s(
        sum[1]) );
  FA_46 fa_i_2 ( .a(a[2]), .b(b[2]), .c_in(temp[2]), .c_out(temp[3]), .s(
        sum[2]) );
  FA_45 fa_i_3 ( .a(a[3]), .b(b[3]), .c_in(temp[3]), .c_out(c_out), .s(sum[3])
         );
endmodule


module IV_21 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_61 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_62 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_63 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_21 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_21 UIV ( .A(S), .Y(SB) );
  ND2_63 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_62 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_61 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module IV_22 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_64 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_65 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_66 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_22 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_22 UIV ( .A(S), .Y(SB) );
  ND2_66 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_65 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_64 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module IV_23 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_67 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_68 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_69 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_23 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_23 UIV ( .A(S), .Y(SB) );
  ND2_69 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_68 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_67 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module IV_24 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_70 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_71 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_72 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_24 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_24 UIV ( .A(S), .Y(SB) );
  ND2_72 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_71 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_70 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module MUX21_GENERIC_NBIT4_6 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;


  MUX21_24 MUX21GENI_0 ( .A(A[0]), .B(B[0]), .S(SEL), .Y(Y[0]) );
  MUX21_23 MUX21GENI_1 ( .A(A[1]), .B(B[1]), .S(SEL), .Y(Y[1]) );
  MUX21_22 MUX21GENI_2 ( .A(A[2]), .B(B[2]), .S(SEL), .Y(Y[2]) );
  MUX21_21 MUX21GENI_3 ( .A(A[3]), .B(B[3]), .S(SEL), .Y(Y[3]) );
endmodule


module SUM_BLOCK_K4_6 ( a, b, C_gen, sum );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input C_gen;

  wire   [3:0] SUM1;
  wire   [3:0] SUM2;

  RCA_size4_12 RCA_CIN0 ( .a(a), .b(b), .c_in(1'b0), .sum(SUM1) );
  RCA_size4_11 RCA_CIN1 ( .a(a), .b(b), .c_in(1'b1), .sum(SUM2) );
  MUX21_GENERIC_NBIT4_6 MPX ( .A(SUM2), .B(SUM1), .SEL(C_gen), .Y(sum) );
endmodule


module FA_49 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_50 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_51 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_52 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module RCA_size4_13 ( a, b, c_in, c_out, sum );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input c_in;
  output c_out;

  wire   [3:1] temp;

  FA_52 fa_i_0 ( .a(a[0]), .b(b[0]), .c_in(c_in), .c_out(temp[1]), .s(sum[0])
         );
  FA_51 fa_i_1 ( .a(a[1]), .b(b[1]), .c_in(temp[1]), .c_out(temp[2]), .s(
        sum[1]) );
  FA_50 fa_i_2 ( .a(a[2]), .b(b[2]), .c_in(temp[2]), .c_out(temp[3]), .s(
        sum[2]) );
  FA_49 fa_i_3 ( .a(a[3]), .b(b[3]), .c_in(temp[3]), .c_out(c_out), .s(sum[3])
         );
endmodule


module FA_53 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_54 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_55 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module FA_56 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n10, n11;

  XOR2_X1 U3 ( .A(c_in), .B(n11), .Z(s) );
  XOR2_X1 U4 ( .A(a), .B(b), .Z(n11) );
  INV_X1 U1 ( .A(n10), .ZN(c_out) );
  AOI22_X1 U2 ( .A1(b), .A2(a), .B1(n11), .B2(c_in), .ZN(n10) );
endmodule


module RCA_size4_14 ( a, b, c_in, c_out, sum );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input c_in;
  output c_out;

  wire   [3:1] temp;

  FA_56 fa_i_0 ( .a(a[0]), .b(b[0]), .c_in(c_in), .c_out(temp[1]), .s(sum[0])
         );
  FA_55 fa_i_1 ( .a(a[1]), .b(b[1]), .c_in(temp[1]), .c_out(temp[2]), .s(
        sum[1]) );
  FA_54 fa_i_2 ( .a(a[2]), .b(b[2]), .c_in(temp[2]), .c_out(temp[3]), .s(
        sum[2]) );
  FA_53 fa_i_3 ( .a(a[3]), .b(b[3]), .c_in(temp[3]), .c_out(c_out), .s(sum[3])
         );
endmodule


module IV_25 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_73 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_74 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_75 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_25 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_25 UIV ( .A(S), .Y(SB) );
  ND2_75 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_74 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_73 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module IV_26 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_76 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_77 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_78 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_26 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_26 UIV ( .A(S), .Y(SB) );
  ND2_78 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_77 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_76 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module IV_27 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_79 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_80 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_81 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_27 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_27 UIV ( .A(S), .Y(SB) );
  ND2_81 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_80 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_79 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module IV_28 ( A, Y );
  input A;
  output Y;


  INV_X1 U1 ( .A(A), .ZN(Y) );
endmodule


module ND2_82 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_83 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module ND2_84 ( A, B, Y );
  input A, B;
  output Y;


  NAND2_X1 U1 ( .A1(B), .A2(A), .ZN(Y) );
endmodule


module MUX21_28 ( A, B, S, Y );
  input A, B, S;
  output Y;
  wire   SB, Y1, Y2;

  IV_28 UIV ( .A(S), .Y(SB) );
  ND2_84 UND1 ( .A(A), .B(S), .Y(Y1) );
  ND2_83 UND2 ( .A(B), .B(SB), .Y(Y2) );
  ND2_82 UND3 ( .A(Y1), .B(Y2), .Y(Y) );
endmodule


module MUX21_GENERIC_NBIT4_7 ( A, B, SEL, Y );
  input [3:0] A;
  input [3:0] B;
  output [3:0] Y;
  input SEL;


  MUX21_28 MUX21GENI_0 ( .A(A[0]), .B(B[0]), .S(SEL), .Y(Y[0]) );
  MUX21_27 MUX21GENI_1 ( .A(A[1]), .B(B[1]), .S(SEL), .Y(Y[1]) );
  MUX21_26 MUX21GENI_2 ( .A(A[2]), .B(B[2]), .S(SEL), .Y(Y[2]) );
  MUX21_25 MUX21GENI_3 ( .A(A[3]), .B(B[3]), .S(SEL), .Y(Y[3]) );
endmodule


module SUM_BLOCK_K4_7 ( a, b, C_gen, sum );
  input [3:0] a;
  input [3:0] b;
  output [3:0] sum;
  input C_gen;

  wire   [3:0] SUM1;
  wire   [3:0] SUM2;

  RCA_size4_14 RCA_CIN0 ( .a(a), .b(b), .c_in(1'b0), .sum(SUM1) );
  RCA_size4_13 RCA_CIN1 ( .a(a), .b(b), .c_in(1'b1), .sum(SUM2) );
  MUX21_GENERIC_NBIT4_7 MPX ( .A(SUM2), .B(SUM1), .SEL(C_gen), .Y(sum) );
endmodule


module SUM_GENERATOR_N32_K4 ( carries, A, B, SUM );
  input [7:0] carries;
  input [31:0] A;
  input [31:0] B;
  output [31:0] SUM;


  SUM_BLOCK_K4_0 SBi_0 ( .a(A[3:0]), .b(B[3:0]), .C_gen(carries[0]), .sum(
        SUM[3:0]) );
  SUM_BLOCK_K4_7 SBi_1 ( .a(A[7:4]), .b(B[7:4]), .C_gen(carries[1]), .sum(
        SUM[7:4]) );
  SUM_BLOCK_K4_6 SBi_2 ( .a(A[11:8]), .b(B[11:8]), .C_gen(carries[2]), .sum(
        SUM[11:8]) );
  SUM_BLOCK_K4_5 SBi_3 ( .a(A[15:12]), .b(B[15:12]), .C_gen(carries[3]), .sum(
        SUM[15:12]) );
  SUM_BLOCK_K4_4 SBi_4 ( .a(A[19:16]), .b(B[19:16]), .C_gen(carries[4]), .sum(
        SUM[19:16]) );
  SUM_BLOCK_K4_3 SBi_5 ( .a(A[23:20]), .b(B[23:20]), .C_gen(carries[5]), .sum(
        SUM[23:20]) );
  SUM_BLOCK_K4_2 SBi_6 ( .a(A[27:24]), .b(B[27:24]), .C_gen(carries[6]), .sum(
        SUM[27:24]) );
  SUM_BLOCK_K4_1 SBi_7 ( .a(A[31:28]), .b(B[31:28]), .C_gen(carries[7]), .sum(
        SUM[31:28]) );
endmodule


module P4Adder ( A, B, CIN, Cout, SUM );
  input [31:0] A;
  input [31:0] B;
  output [31:0] SUM;
  input CIN;
  output Cout;
  wire   n1, n2, n3, n4;
  wire   [7:0] carries_s;

  CARRY_GENERATOR_NBIT32_NBLOCK4 CG ( .A(A), .B(B), .Cin(CIN), .Co({Cout, 
        carries_s}) );
  SUM_GENERATOR_N32_K4 SG ( .carries(carries_s), .A({A[31:16], n2, A[14:8], n4, 
        A[6:4], n3, A[2:0]}), .B({B[31:16], n1, B[14:0]}), .SUM(SUM) );
  BUF_X1 U1 ( .A(B[15]), .Z(n1) );
  BUF_X1 U2 ( .A(A[15]), .Z(n2) );
  BUF_X1 U3 ( .A(A[3]), .Z(n3) );
  BUF_X1 U4 ( .A(A[7]), .Z(n4) );
endmodule

