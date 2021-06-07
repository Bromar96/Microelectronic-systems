
module FA_0 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n2, n1, n3, n4, n5;

  XOR2_X1 U3 ( .A(c_in), .B(n2), .Z(s) );
  OAI22_X1 U1 ( .A1(n1), .A2(n3), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U4 ( .A(a), .ZN(n4) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  XNOR2_X1 U6 ( .A(a), .B(b), .ZN(n1) );
  INV_X1 U7 ( .A(n1), .ZN(n2) );
endmodule


module FA_1 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4;

  XNOR2_X1 U1 ( .A(c_in), .B(n1), .ZN(s) );
  INV_X1 U2 ( .A(c_in), .ZN(n2) );
  XOR2_X1 U3 ( .A(n3), .B(b), .Z(n1) );
  OAI22_X1 U4 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U5 ( .A(a), .ZN(n3) );
  INV_X1 U6 ( .A(b), .ZN(n4) );
endmodule


module FA_2 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1556, net1658, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1658) );
  XNOR2_X1 U7 ( .A(net1556), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1658), .ZN(net1556) );
endmodule


module FA_3 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1558, net1688, n1, n2, n3, n4;

  INV_X1 U1 ( .A(n1), .ZN(net1558) );
  OAI22_X1 U2 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U3 ( .A(b), .ZN(n4) );
  INV_X1 U4 ( .A(a), .ZN(n3) );
  XOR2_X1 U5 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U6 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U7 ( .A(n2), .Z(net1688) );
  XNOR2_X1 U8 ( .A(net1688), .B(net1558), .ZN(s) );
endmodule


module FA_4 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1788, net1790, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1790) );
  XNOR2_X1 U7 ( .A(net1788), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1790), .ZN(net1788) );
endmodule


module FA_5 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_6 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1730, net1762, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1762) );
  XNOR2_X1 U7 ( .A(net1730), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1762), .ZN(net1730) );
endmodule


module FA_7 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1598, net1752, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1752) );
  XNOR2_X1 U7 ( .A(net1598), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1752), .ZN(net1598) );
endmodule


module FA_8 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1786, net1794, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1794) );
  XNOR2_X1 U7 ( .A(net1786), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1794), .ZN(net1786) );
endmodule


module FA_9 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1732, net1778, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1778) );
  XNOR2_X1 U7 ( .A(net1732), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1778), .ZN(net1732) );
endmodule


module FA_10 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_11 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1780, net1792, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1792) );
  XNOR2_X1 U7 ( .A(net1780), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1792), .ZN(net1780) );
endmodule


module FA_12 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1632, net1690, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1690) );
  XNOR2_X1 U7 ( .A(net1632), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1690), .ZN(net1632) );
endmodule


module FA_13 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1734, net1768, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1768) );
  XNOR2_X1 U7 ( .A(net1734), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1768), .ZN(net1734) );
endmodule


module FA_14 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1600, net1740, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1740) );
  XNOR2_X1 U7 ( .A(net1600), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1740), .ZN(net1600) );
endmodule


module FA_15 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_16 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1782, net1784, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1784) );
  XNOR2_X1 U7 ( .A(net1782), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1784), .ZN(net1782) );
endmodule


module FA_17 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1582, net1756, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1756) );
  XNOR2_X1 U7 ( .A(net1582), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1756), .ZN(net1582) );
endmodule


module FA_18 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1736, net1766, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1766) );
  XNOR2_X1 U7 ( .A(net1736), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1766), .ZN(net1736) );
endmodule


module FA_19 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1590, net1668, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1668) );
  XNOR2_X1 U7 ( .A(net1590), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1668), .ZN(net1590) );
endmodule


module FA_20 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_21 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1712, net1748, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1748) );
  XNOR2_X1 U7 ( .A(net1712), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1748), .ZN(net1712) );
endmodule


module FA_22 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1602, net1770, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1770) );
  XNOR2_X1 U7 ( .A(net1602), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1770), .ZN(net1602) );
endmodule


module FA_23 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1714, net1754, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1754) );
  XNOR2_X1 U7 ( .A(net1714), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1754), .ZN(net1714) );
endmodule


module FA_24 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1592, net1624, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1624) );
  XNOR2_X1 U7 ( .A(net1592), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1624), .ZN(net1592) );
endmodule


module FA_25 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_26 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1560, net1650, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1650) );
  XNOR2_X1 U7 ( .A(net1560), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1650), .ZN(net1560) );
endmodule


module FA_27 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1580, net1644, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1644) );
  XNOR2_X1 U7 ( .A(net1580), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1644), .ZN(net1580) );
endmodule


module FA_28 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1562, net1576, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1576) );
  XNOR2_X1 U7 ( .A(net1562), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1576), .ZN(net1562) );
endmodule


module FA_29 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1574, net1606, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1606) );
  XNOR2_X1 U7 ( .A(net1574), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1606), .ZN(net1574) );
endmodule


module FA_30 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_31 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1314, net1412, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1412) );
  XNOR2_X1 U7 ( .A(net1314), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1412), .ZN(net1314) );
endmodule


module FA_32 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1564, net1642, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1642) );
  XNOR2_X1 U7 ( .A(net1564), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1642), .ZN(net1564) );
endmodule


module FA_33 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1716, net1764, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1764) );
  XNOR2_X1 U7 ( .A(net1716), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1764), .ZN(net1716) );
endmodule


module FA_34 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1578, net1666, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1666) );
  XNOR2_X1 U7 ( .A(net1578), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1666), .ZN(net1578) );
endmodule


module FA_35 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_36 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1566, net1680, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1680) );
  XNOR2_X1 U7 ( .A(net1566), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1680), .ZN(net1566) );
endmodule


module FA_37 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1584, net1692, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1692) );
  XNOR2_X1 U7 ( .A(net1584), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1692), .ZN(net1584) );
endmodule


module FA_38 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1718, net1742, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1742) );
  XNOR2_X1 U7 ( .A(net1718), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1742), .ZN(net1718) );
endmodule


module FA_39 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1336, net1446, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1446) );
  XNOR2_X1 U7 ( .A(net1336), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1446), .ZN(net1336) );
endmodule


module FA_40 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_41 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1568, net1652, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1652) );
  XNOR2_X1 U7 ( .A(net1568), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1652), .ZN(net1568) );
endmodule


module FA_42 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1586, net1774, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1774) );
  XNOR2_X1 U7 ( .A(net1586), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1774), .ZN(net1586) );
endmodule


module FA_43 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1570, net1626, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1626) );
  XNOR2_X1 U7 ( .A(net1570), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1626), .ZN(net1570) );
endmodule


module FA_44 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1720, net1744, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1744) );
  XNOR2_X1 U7 ( .A(net1720), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1744), .ZN(net1720) );
endmodule


module FA_45 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1594, net1676, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1676) );
  XNOR2_X1 U7 ( .A(net1594), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1676), .ZN(net1594) );
endmodule


module FA_46 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1722, net1760, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1760) );
  XNOR2_X1 U7 ( .A(net1722), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1760), .ZN(net1722) );
endmodule


module FA_47 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1738, net1750, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1750) );
  XNOR2_X1 U7 ( .A(net1738), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1750), .ZN(net1738) );
endmodule


module FA_48 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1572, net1674, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1674) );
  XNOR2_X1 U7 ( .A(net1572), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1674), .ZN(net1572) );
endmodule


module FA_49 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1376, net1476, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1476) );
  XNOR2_X1 U7 ( .A(net1376), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1476), .ZN(net1376) );
endmodule


module FA_50 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1588, net1682, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1682) );
  XNOR2_X1 U7 ( .A(net1588), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1682), .ZN(net1588) );
endmodule


module FA_51 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1614, net1696, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1696) );
  XNOR2_X1 U7 ( .A(net1614), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1696), .ZN(net1614) );
endmodule


module FA_52 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1634, net1704, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1704) );
  XNOR2_X1 U7 ( .A(net1634), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1704), .ZN(net1634) );
endmodule


module FA_53 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1660, net1708, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1708) );
  XNOR2_X1 U7 ( .A(net1660), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1708), .ZN(net1660) );
endmodule


module FA_54 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1724, net1772, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1772) );
  XNOR2_X1 U7 ( .A(net1724), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1772), .ZN(net1724) );
endmodule


module FA_55 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1596, net1684, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1684) );
  XNOR2_X1 U7 ( .A(net1596), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1684), .ZN(net1596) );
endmodule


module FA_56 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1616, net1698, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1698) );
  XNOR2_X1 U7 ( .A(net1616), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1698), .ZN(net1616) );
endmodule


module FA_57 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1726, net1728, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1728) );
  XNOR2_X1 U7 ( .A(net1726), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1728), .ZN(net1726) );
endmodule


module FA_58 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1622, net1746, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1746) );
  XNOR2_X1 U7 ( .A(net1622), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1746), .ZN(net1622) );
endmodule


module FA_59 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1620, net1702, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1702) );
  XNOR2_X1 U7 ( .A(net1620), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1702), .ZN(net1620) );
endmodule


module FA_60 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1608, net1694, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1694) );
  XNOR2_X1 U7 ( .A(net1608), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1694), .ZN(net1608) );
endmodule


module FA_61 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1662, net1706, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1706) );
  XNOR2_X1 U7 ( .A(net1662), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1706), .ZN(net1662) );
endmodule


module FA_62 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_63 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1610, net1776, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1776) );
  XNOR2_X1 U7 ( .A(net1610), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1776), .ZN(net1610) );
endmodule


module FA_64 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1664, net1686, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1686) );
  XNOR2_X1 U7 ( .A(net1664), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1686), .ZN(net1664) );
endmodule


module FA_65 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1486, net1678, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1678) );
  XNOR2_X1 U7 ( .A(net1486), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1678), .ZN(net1486) );
endmodule


module FA_66 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1444, net1488, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1488) );
  XNOR2_X1 U7 ( .A(net1444), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1488), .ZN(net1444) );
endmodule


module FA_67 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1456, net1506, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1506) );
  XNOR2_X1 U7 ( .A(net1456), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1506), .ZN(net1456) );
endmodule


module FA_68 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1470, net1520, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1520) );
  XNOR2_X1 U7 ( .A(net1470), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1520), .ZN(net1470) );
endmodule


module FA_69 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1460, net1510, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1510) );
  XNOR2_X1 U7 ( .A(net1460), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1510), .ZN(net1460) );
endmodule


module FA_70 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1410, net1654, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1654) );
  XNOR2_X1 U7 ( .A(net1410), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1654), .ZN(net1410) );
endmodule


module FA_71 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1458, net1534, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1534) );
  XNOR2_X1 U7 ( .A(net1458), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1534), .ZN(net1458) );
endmodule


module FA_72 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1484, net1700, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1700) );
  XNOR2_X1 U7 ( .A(net1484), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1700), .ZN(net1484) );
endmodule


module FA_73 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_74 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_75 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_76 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_77 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_78 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_79 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_80 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_81 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_82 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_83 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_84 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_85 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1402, net1638, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1638) );
  XNOR2_X1 U7 ( .A(net1402), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1638), .ZN(net1402) );
endmodule


module FA_86 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_87 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_88 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_89 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1386, net1640, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1640) );
  XNOR2_X1 U7 ( .A(net1386), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1640), .ZN(net1386) );
endmodule


module FA_90 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_91 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_92 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_93 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_94 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_95 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_96 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_97 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_98 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1400, net1542, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1542) );
  XNOR2_X1 U7 ( .A(net1400), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1542), .ZN(net1400) );
endmodule


module FA_99 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1436, net1544, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1544) );
  XNOR2_X1 U7 ( .A(net1436), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1544), .ZN(net1436) );
endmodule


module FA_100 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_101 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_102 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_103 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_104 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1424, net1656, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1656) );
  XNOR2_X1 U7 ( .A(net1424), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1656), .ZN(net1424) );
endmodule


module FA_105 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1438, net1672, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1672) );
  XNOR2_X1 U7 ( .A(net1438), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1672), .ZN(net1438) );
endmodule


module FA_106 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_107 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1472, net1552, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1552) );
  XNOR2_X1 U7 ( .A(net1472), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1552), .ZN(net1472) );
endmodule


module FA_108 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_109 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_110 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_111 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_112 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_113 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_114 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   net1474, net1670, n1, n2, n3, n4;

  OAI22_X1 U1 ( .A1(n2), .A2(n1), .B1(n3), .B2(n4), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n4) );
  INV_X1 U3 ( .A(a), .ZN(n3) );
  XOR2_X1 U4 ( .A(n3), .B(b), .Z(n1) );
  INV_X1 U5 ( .A(c_in), .ZN(n2) );
  CLKBUF_X1 U6 ( .A(n2), .Z(net1670) );
  XNOR2_X1 U7 ( .A(net1474), .B(n1), .ZN(s) );
  INV_X1 U8 ( .A(net1670), .ZN(net1474) );
endmodule


module FA_115 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_116 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_117 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_118 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_119 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_120 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_121 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_122 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_123 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_124 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_125 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_126 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module FA_127 ( a, b, c_in, c_out, s );
  input a, b, c_in;
  output c_out, s;
  wire   n1, n2, n3, n4, n5;

  OAI22_X1 U1 ( .A1(n3), .A2(n2), .B1(n4), .B2(n5), .ZN(c_out) );
  INV_X1 U2 ( .A(b), .ZN(n5) );
  INV_X1 U3 ( .A(a), .ZN(n4) );
  XOR2_X1 U4 ( .A(n4), .B(b), .Z(n2) );
  INV_X1 U5 ( .A(c_in), .ZN(n3) );
  CLKBUF_X1 U6 ( .A(n3), .Z(n1) );
  XOR2_X1 U7 ( .A(n1), .B(n2), .Z(s) );
endmodule


module RCA_size128 ( a, b, c_out, sum );
  input [127:0] a;
  input [127:0] b;
  output [127:0] sum;
  output c_out;

  wire   [127:1] temp;

  FA_0 fa_i_0 ( .a(a[0]), .b(b[0]), .c_in(1'b0), .c_out(temp[1]), .s(sum[0])
         );
  FA_127 fa_i_1 ( .a(a[1]), .b(b[1]), .c_in(temp[1]), .c_out(temp[2]), .s(
        sum[1]) );
  FA_126 fa_i_2 ( .a(a[2]), .b(b[2]), .c_in(temp[2]), .c_out(temp[3]), .s(
        sum[2]) );
  FA_125 fa_i_3 ( .a(a[3]), .b(b[3]), .c_in(temp[3]), .c_out(temp[4]), .s(
        sum[3]) );
  FA_124 fa_i_4 ( .a(a[4]), .b(b[4]), .c_in(temp[4]), .c_out(temp[5]), .s(
        sum[4]) );
  FA_123 fa_i_5 ( .a(a[5]), .b(b[5]), .c_in(temp[5]), .c_out(temp[6]), .s(
        sum[5]) );
  FA_122 fa_i_6 ( .a(a[6]), .b(b[6]), .c_in(temp[6]), .c_out(temp[7]), .s(
        sum[6]) );
  FA_121 fa_i_7 ( .a(a[7]), .b(b[7]), .c_in(temp[7]), .c_out(temp[8]), .s(
        sum[7]) );
  FA_120 fa_i_8 ( .a(a[8]), .b(b[8]), .c_in(temp[8]), .c_out(temp[9]), .s(
        sum[8]) );
  FA_119 fa_i_9 ( .a(a[9]), .b(b[9]), .c_in(temp[9]), .c_out(temp[10]), .s(
        sum[9]) );
  FA_118 fa_i_10 ( .a(a[10]), .b(b[10]), .c_in(temp[10]), .c_out(temp[11]), 
        .s(sum[10]) );
  FA_117 fa_i_11 ( .a(a[11]), .b(b[11]), .c_in(temp[11]), .c_out(temp[12]), 
        .s(sum[11]) );
  FA_116 fa_i_12 ( .a(a[12]), .b(b[12]), .c_in(temp[12]), .c_out(temp[13]), 
        .s(sum[12]) );
  FA_115 fa_i_13 ( .a(a[13]), .b(b[13]), .c_in(temp[13]), .c_out(temp[14]), 
        .s(sum[13]) );
  FA_114 fa_i_14 ( .a(a[14]), .b(b[14]), .c_in(temp[14]), .c_out(temp[15]), 
        .s(sum[14]) );
  FA_113 fa_i_15 ( .a(a[15]), .b(b[15]), .c_in(temp[15]), .c_out(temp[16]), 
        .s(sum[15]) );
  FA_112 fa_i_16 ( .a(a[16]), .b(b[16]), .c_in(temp[16]), .c_out(temp[17]), 
        .s(sum[16]) );
  FA_111 fa_i_17 ( .a(a[17]), .b(b[17]), .c_in(temp[17]), .c_out(temp[18]), 
        .s(sum[17]) );
  FA_110 fa_i_18 ( .a(a[18]), .b(b[18]), .c_in(temp[18]), .c_out(temp[19]), 
        .s(sum[18]) );
  FA_109 fa_i_19 ( .a(a[19]), .b(b[19]), .c_in(temp[19]), .c_out(temp[20]), 
        .s(sum[19]) );
  FA_108 fa_i_20 ( .a(a[20]), .b(b[20]), .c_in(temp[20]), .c_out(temp[21]), 
        .s(sum[20]) );
  FA_107 fa_i_21 ( .a(a[21]), .b(b[21]), .c_in(temp[21]), .c_out(temp[22]), 
        .s(sum[21]) );
  FA_106 fa_i_22 ( .a(a[22]), .b(b[22]), .c_in(temp[22]), .c_out(temp[23]), 
        .s(sum[22]) );
  FA_105 fa_i_23 ( .a(a[23]), .b(b[23]), .c_in(temp[23]), .c_out(temp[24]), 
        .s(sum[23]) );
  FA_104 fa_i_24 ( .a(a[24]), .b(b[24]), .c_in(temp[24]), .c_out(temp[25]), 
        .s(sum[24]) );
  FA_103 fa_i_25 ( .a(a[25]), .b(b[25]), .c_in(temp[25]), .c_out(temp[26]), 
        .s(sum[25]) );
  FA_102 fa_i_26 ( .a(a[26]), .b(b[26]), .c_in(temp[26]), .c_out(temp[27]), 
        .s(sum[26]) );
  FA_101 fa_i_27 ( .a(a[27]), .b(b[27]), .c_in(temp[27]), .c_out(temp[28]), 
        .s(sum[27]) );
  FA_100 fa_i_28 ( .a(a[28]), .b(b[28]), .c_in(temp[28]), .c_out(temp[29]), 
        .s(sum[28]) );
  FA_99 fa_i_29 ( .a(a[29]), .b(b[29]), .c_in(temp[29]), .c_out(temp[30]), .s(
        sum[29]) );
  FA_98 fa_i_30 ( .a(a[30]), .b(b[30]), .c_in(temp[30]), .c_out(temp[31]), .s(
        sum[30]) );
  FA_97 fa_i_31 ( .a(a[31]), .b(b[31]), .c_in(temp[31]), .c_out(temp[32]), .s(
        sum[31]) );
  FA_96 fa_i_32 ( .a(a[32]), .b(b[32]), .c_in(temp[32]), .c_out(temp[33]), .s(
        sum[32]) );
  FA_95 fa_i_33 ( .a(a[33]), .b(b[33]), .c_in(temp[33]), .c_out(temp[34]), .s(
        sum[33]) );
  FA_94 fa_i_34 ( .a(a[34]), .b(b[34]), .c_in(temp[34]), .c_out(temp[35]), .s(
        sum[34]) );
  FA_93 fa_i_35 ( .a(a[35]), .b(b[35]), .c_in(temp[35]), .c_out(temp[36]), .s(
        sum[35]) );
  FA_92 fa_i_36 ( .a(a[36]), .b(b[36]), .c_in(temp[36]), .c_out(temp[37]), .s(
        sum[36]) );
  FA_91 fa_i_37 ( .a(a[37]), .b(b[37]), .c_in(temp[37]), .c_out(temp[38]), .s(
        sum[37]) );
  FA_90 fa_i_38 ( .a(a[38]), .b(b[38]), .c_in(temp[38]), .c_out(temp[39]), .s(
        sum[38]) );
  FA_89 fa_i_39 ( .a(a[39]), .b(b[39]), .c_in(temp[39]), .c_out(temp[40]), .s(
        sum[39]) );
  FA_88 fa_i_40 ( .a(a[40]), .b(b[40]), .c_in(temp[40]), .c_out(temp[41]), .s(
        sum[40]) );
  FA_87 fa_i_41 ( .a(a[41]), .b(b[41]), .c_in(temp[41]), .c_out(temp[42]), .s(
        sum[41]) );
  FA_86 fa_i_42 ( .a(a[42]), .b(b[42]), .c_in(temp[42]), .c_out(temp[43]), .s(
        sum[42]) );
  FA_85 fa_i_43 ( .a(a[43]), .b(b[43]), .c_in(temp[43]), .c_out(temp[44]), .s(
        sum[43]) );
  FA_84 fa_i_44 ( .a(a[44]), .b(b[44]), .c_in(temp[44]), .c_out(temp[45]), .s(
        sum[44]) );
  FA_83 fa_i_45 ( .a(a[45]), .b(b[45]), .c_in(temp[45]), .c_out(temp[46]), .s(
        sum[45]) );
  FA_82 fa_i_46 ( .a(a[46]), .b(b[46]), .c_in(temp[46]), .c_out(temp[47]), .s(
        sum[46]) );
  FA_81 fa_i_47 ( .a(a[47]), .b(b[47]), .c_in(temp[47]), .c_out(temp[48]), .s(
        sum[47]) );
  FA_80 fa_i_48 ( .a(a[48]), .b(b[48]), .c_in(temp[48]), .c_out(temp[49]), .s(
        sum[48]) );
  FA_79 fa_i_49 ( .a(a[49]), .b(b[49]), .c_in(temp[49]), .c_out(temp[50]), .s(
        sum[49]) );
  FA_78 fa_i_50 ( .a(a[50]), .b(b[50]), .c_in(temp[50]), .c_out(temp[51]), .s(
        sum[50]) );
  FA_77 fa_i_51 ( .a(a[51]), .b(b[51]), .c_in(temp[51]), .c_out(temp[52]), .s(
        sum[51]) );
  FA_76 fa_i_52 ( .a(a[52]), .b(b[52]), .c_in(temp[52]), .c_out(temp[53]), .s(
        sum[52]) );
  FA_75 fa_i_53 ( .a(a[53]), .b(b[53]), .c_in(temp[53]), .c_out(temp[54]), .s(
        sum[53]) );
  FA_74 fa_i_54 ( .a(a[54]), .b(b[54]), .c_in(temp[54]), .c_out(temp[55]), .s(
        sum[54]) );
  FA_73 fa_i_55 ( .a(a[55]), .b(b[55]), .c_in(temp[55]), .c_out(temp[56]), .s(
        sum[55]) );
  FA_72 fa_i_56 ( .a(a[56]), .b(b[56]), .c_in(temp[56]), .c_out(temp[57]), .s(
        sum[56]) );
  FA_71 fa_i_57 ( .a(a[57]), .b(b[57]), .c_in(temp[57]), .c_out(temp[58]), .s(
        sum[57]) );
  FA_70 fa_i_58 ( .a(a[58]), .b(b[58]), .c_in(temp[58]), .c_out(temp[59]), .s(
        sum[58]) );
  FA_69 fa_i_59 ( .a(a[59]), .b(b[59]), .c_in(temp[59]), .c_out(temp[60]), .s(
        sum[59]) );
  FA_68 fa_i_60 ( .a(a[60]), .b(b[60]), .c_in(temp[60]), .c_out(temp[61]), .s(
        sum[60]) );
  FA_67 fa_i_61 ( .a(a[61]), .b(b[61]), .c_in(temp[61]), .c_out(temp[62]), .s(
        sum[61]) );
  FA_66 fa_i_62 ( .a(a[62]), .b(b[62]), .c_in(temp[62]), .c_out(temp[63]), .s(
        sum[62]) );
  FA_65 fa_i_63 ( .a(a[63]), .b(b[63]), .c_in(temp[63]), .c_out(temp[64]), .s(
        sum[63]) );
  FA_64 fa_i_64 ( .a(a[64]), .b(b[64]), .c_in(temp[64]), .c_out(temp[65]), .s(
        sum[64]) );
  FA_63 fa_i_65 ( .a(a[65]), .b(b[65]), .c_in(temp[65]), .c_out(temp[66]), .s(
        sum[65]) );
  FA_62 fa_i_66 ( .a(a[66]), .b(b[66]), .c_in(temp[66]), .c_out(temp[67]), .s(
        sum[66]) );
  FA_61 fa_i_67 ( .a(a[67]), .b(b[67]), .c_in(temp[67]), .c_out(temp[68]), .s(
        sum[67]) );
  FA_60 fa_i_68 ( .a(a[68]), .b(b[68]), .c_in(temp[68]), .c_out(temp[69]), .s(
        sum[68]) );
  FA_59 fa_i_69 ( .a(a[69]), .b(b[69]), .c_in(temp[69]), .c_out(temp[70]), .s(
        sum[69]) );
  FA_58 fa_i_70 ( .a(a[70]), .b(b[70]), .c_in(temp[70]), .c_out(temp[71]), .s(
        sum[70]) );
  FA_57 fa_i_71 ( .a(a[71]), .b(b[71]), .c_in(temp[71]), .c_out(temp[72]), .s(
        sum[71]) );
  FA_56 fa_i_72 ( .a(a[72]), .b(b[72]), .c_in(temp[72]), .c_out(temp[73]), .s(
        sum[72]) );
  FA_55 fa_i_73 ( .a(a[73]), .b(b[73]), .c_in(temp[73]), .c_out(temp[74]), .s(
        sum[73]) );
  FA_54 fa_i_74 ( .a(a[74]), .b(b[74]), .c_in(temp[74]), .c_out(temp[75]), .s(
        sum[74]) );
  FA_53 fa_i_75 ( .a(a[75]), .b(b[75]), .c_in(temp[75]), .c_out(temp[76]), .s(
        sum[75]) );
  FA_52 fa_i_76 ( .a(a[76]), .b(b[76]), .c_in(temp[76]), .c_out(temp[77]), .s(
        sum[76]) );
  FA_51 fa_i_77 ( .a(a[77]), .b(b[77]), .c_in(temp[77]), .c_out(temp[78]), .s(
        sum[77]) );
  FA_50 fa_i_78 ( .a(a[78]), .b(b[78]), .c_in(temp[78]), .c_out(temp[79]), .s(
        sum[78]) );
  FA_49 fa_i_79 ( .a(a[79]), .b(b[79]), .c_in(temp[79]), .c_out(temp[80]), .s(
        sum[79]) );
  FA_48 fa_i_80 ( .a(a[80]), .b(b[80]), .c_in(temp[80]), .c_out(temp[81]), .s(
        sum[80]) );
  FA_47 fa_i_81 ( .a(a[81]), .b(b[81]), .c_in(temp[81]), .c_out(temp[82]), .s(
        sum[81]) );
  FA_46 fa_i_82 ( .a(a[82]), .b(b[82]), .c_in(temp[82]), .c_out(temp[83]), .s(
        sum[82]) );
  FA_45 fa_i_83 ( .a(a[83]), .b(b[83]), .c_in(temp[83]), .c_out(temp[84]), .s(
        sum[83]) );
  FA_44 fa_i_84 ( .a(a[84]), .b(b[84]), .c_in(temp[84]), .c_out(temp[85]), .s(
        sum[84]) );
  FA_43 fa_i_85 ( .a(a[85]), .b(b[85]), .c_in(temp[85]), .c_out(temp[86]), .s(
        sum[85]) );
  FA_42 fa_i_86 ( .a(a[86]), .b(b[86]), .c_in(temp[86]), .c_out(temp[87]), .s(
        sum[86]) );
  FA_41 fa_i_87 ( .a(a[87]), .b(b[87]), .c_in(temp[87]), .c_out(temp[88]), .s(
        sum[87]) );
  FA_40 fa_i_88 ( .a(a[88]), .b(b[88]), .c_in(temp[88]), .c_out(temp[89]), .s(
        sum[88]) );
  FA_39 fa_i_89 ( .a(a[89]), .b(b[89]), .c_in(temp[89]), .c_out(temp[90]), .s(
        sum[89]) );
  FA_38 fa_i_90 ( .a(a[90]), .b(b[90]), .c_in(temp[90]), .c_out(temp[91]), .s(
        sum[90]) );
  FA_37 fa_i_91 ( .a(a[91]), .b(b[91]), .c_in(temp[91]), .c_out(temp[92]), .s(
        sum[91]) );
  FA_36 fa_i_92 ( .a(a[92]), .b(b[92]), .c_in(temp[92]), .c_out(temp[93]), .s(
        sum[92]) );
  FA_35 fa_i_93 ( .a(a[93]), .b(b[93]), .c_in(temp[93]), .c_out(temp[94]), .s(
        sum[93]) );
  FA_34 fa_i_94 ( .a(a[94]), .b(b[94]), .c_in(temp[94]), .c_out(temp[95]), .s(
        sum[94]) );
  FA_33 fa_i_95 ( .a(a[95]), .b(b[95]), .c_in(temp[95]), .c_out(temp[96]), .s(
        sum[95]) );
  FA_32 fa_i_96 ( .a(a[96]), .b(b[96]), .c_in(temp[96]), .c_out(temp[97]), .s(
        sum[96]) );
  FA_31 fa_i_97 ( .a(a[97]), .b(b[97]), .c_in(temp[97]), .c_out(temp[98]), .s(
        sum[97]) );
  FA_30 fa_i_98 ( .a(a[98]), .b(b[98]), .c_in(temp[98]), .c_out(temp[99]), .s(
        sum[98]) );
  FA_29 fa_i_99 ( .a(a[99]), .b(b[99]), .c_in(temp[99]), .c_out(temp[100]), 
        .s(sum[99]) );
  FA_28 fa_i_100 ( .a(a[100]), .b(b[100]), .c_in(temp[100]), .c_out(temp[101]), 
        .s(sum[100]) );
  FA_27 fa_i_101 ( .a(a[101]), .b(b[101]), .c_in(temp[101]), .c_out(temp[102]), 
        .s(sum[101]) );
  FA_26 fa_i_102 ( .a(a[102]), .b(b[102]), .c_in(temp[102]), .c_out(temp[103]), 
        .s(sum[102]) );
  FA_25 fa_i_103 ( .a(a[103]), .b(b[103]), .c_in(temp[103]), .c_out(temp[104]), 
        .s(sum[103]) );
  FA_24 fa_i_104 ( .a(a[104]), .b(b[104]), .c_in(temp[104]), .c_out(temp[105]), 
        .s(sum[104]) );
  FA_23 fa_i_105 ( .a(a[105]), .b(b[105]), .c_in(temp[105]), .c_out(temp[106]), 
        .s(sum[105]) );
  FA_22 fa_i_106 ( .a(a[106]), .b(b[106]), .c_in(temp[106]), .c_out(temp[107]), 
        .s(sum[106]) );
  FA_21 fa_i_107 ( .a(a[107]), .b(b[107]), .c_in(temp[107]), .c_out(temp[108]), 
        .s(sum[107]) );
  FA_20 fa_i_108 ( .a(a[108]), .b(b[108]), .c_in(temp[108]), .c_out(temp[109]), 
        .s(sum[108]) );
  FA_19 fa_i_109 ( .a(a[109]), .b(b[109]), .c_in(temp[109]), .c_out(temp[110]), 
        .s(sum[109]) );
  FA_18 fa_i_110 ( .a(a[110]), .b(b[110]), .c_in(temp[110]), .c_out(temp[111]), 
        .s(sum[110]) );
  FA_17 fa_i_111 ( .a(a[111]), .b(b[111]), .c_in(temp[111]), .c_out(temp[112]), 
        .s(sum[111]) );
  FA_16 fa_i_112 ( .a(a[112]), .b(b[112]), .c_in(temp[112]), .c_out(temp[113]), 
        .s(sum[112]) );
  FA_15 fa_i_113 ( .a(a[113]), .b(b[113]), .c_in(temp[113]), .c_out(temp[114]), 
        .s(sum[113]) );
  FA_14 fa_i_114 ( .a(a[114]), .b(b[114]), .c_in(temp[114]), .c_out(temp[115]), 
        .s(sum[114]) );
  FA_13 fa_i_115 ( .a(a[115]), .b(b[115]), .c_in(temp[115]), .c_out(temp[116]), 
        .s(sum[115]) );
  FA_12 fa_i_116 ( .a(a[116]), .b(b[116]), .c_in(temp[116]), .c_out(temp[117]), 
        .s(sum[116]) );
  FA_11 fa_i_117 ( .a(a[117]), .b(b[117]), .c_in(temp[117]), .c_out(temp[118]), 
        .s(sum[117]) );
  FA_10 fa_i_118 ( .a(a[118]), .b(b[118]), .c_in(temp[118]), .c_out(temp[119]), 
        .s(sum[118]) );
  FA_9 fa_i_119 ( .a(a[119]), .b(b[119]), .c_in(temp[119]), .c_out(temp[120]), 
        .s(sum[119]) );
  FA_8 fa_i_120 ( .a(a[120]), .b(b[120]), .c_in(temp[120]), .c_out(temp[121]), 
        .s(sum[120]) );
  FA_7 fa_i_121 ( .a(a[121]), .b(b[121]), .c_in(temp[121]), .c_out(temp[122]), 
        .s(sum[121]) );
  FA_6 fa_i_122 ( .a(a[122]), .b(b[122]), .c_in(temp[122]), .c_out(temp[123]), 
        .s(sum[122]) );
  FA_5 fa_i_123 ( .a(a[123]), .b(b[123]), .c_in(temp[123]), .c_out(temp[124]), 
        .s(sum[123]) );
  FA_4 fa_i_124 ( .a(a[124]), .b(b[124]), .c_in(temp[124]), .c_out(temp[125]), 
        .s(sum[124]) );
  FA_3 fa_i_125 ( .a(a[125]), .b(b[125]), .c_in(temp[125]), .c_out(temp[126]), 
        .s(sum[125]) );
  FA_2 fa_i_126 ( .a(a[126]), .b(b[126]), .c_in(temp[126]), .c_out(temp[127]), 
        .s(sum[126]) );
  FA_1 fa_i_127 ( .a(a[127]), .b(b[127]), .c_in(temp[127]), .c_out(c_out), .s(
        sum[127]) );
endmodule

