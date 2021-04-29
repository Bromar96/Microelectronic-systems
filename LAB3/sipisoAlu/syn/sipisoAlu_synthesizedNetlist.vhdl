
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_SIPISOALU is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_SIPISOALU;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_SIPISOALU.all;

entity sipisoAluControl is

   port( clk, rst, strobeA, strobeB : in std_logic;  shiftA, loadB, loadC, 
         shiftC, startC : out std_logic);

end sipisoAluControl;

architecture SYN_FSM_OPC of sipisoAluControl is

   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal NEXT_STATE_4_port, NEXT_STATE_2_port, NEXT_STATE_1_port, 
      NEXT_STATE_0_port, net2950, net2951, net2954, net2956, net2981, 
      startC_port, n1, n2, net5507, net5538, net5546, net5559, net5635, net5634
      , net5644, net5653, net5654, net5657, net5675, net5677, net5694, n113, 
      n116, n117, n121, n126, n127, n129, n131, n201, n136, n137, n138, n139, 
      n140, n143, n144, n147, n148, n149, n150, n151, n152, n153, n154, n155, 
      n157, n158, n159, n160, n165, n172, n174, n176, n181, n183, net6488, 
      net6511, net6512, net6518, net6521, net6524, net6525, net6529, net6532, 
      net6541, net6505, n177, n175, n164, n141, n125, net6543, net6536, net6527
      , net6516, net6503, net6492, net5669, net5561, n178, n162, n146, net5672,
      n166, n163, n156, n145, n134, n128, n186, n187, n188, n189, n190, n191, 
      n192, n193, n194, n195, n196, n197, n198, n199, n200 : std_logic;

begin
   shiftA <= n129;
   startC <= startC_port;
   
   U6 : NAND2_X1 port map( A1 => n116, A2 => n117, ZN => shiftC);
   U11 : NAND2_X1 port map( A1 => n121, A2 => net6541, ZN => n116);
   U16 : NAND2_X1 port map( A1 => net2950, A2 => net5635, ZN => net5507);
   U22 : INV_X1 port map( A => net5657, ZN => net5675);
   U25 : INV_X1 port map( A => rst, ZN => n1);
   U34 : CLKBUF_X1 port map( A => net2950, Z => net5677);
   U38 : INV_X1 port map( A => net2981, ZN => net5546);
   U40 : INV_X1 port map( A => net6524, ZN => net5538);
   U50 : NAND2_X1 port map( A1 => net6511, A2 => n186, ZN => n165);
   U51 : INV_X1 port map( A => n165, ZN => startC_port);
   U58 : NOR2_X1 port map( A1 => n136, A2 => net5559, ZN => n140);
   U62 : OAI21_X1 port map( B1 => n138, B2 => n137, A => n131, ZN => n139);
   U63 : NOR2_X1 port map( A1 => n139, A2 => n140, ZN => n154);
   U67 : NAND2_X1 port map( A1 => n144, A2 => n143, ZN => n152);
   U73 : OAI21_X1 port map( B1 => net6529, B2 => net6524, A => n147, ZN => n151
                           );
   U74 : OAI21_X1 port map( B1 => net6518, B2 => n172, A => net5694, ZN => n149
                           );
   U75 : NAND2_X1 port map( A1 => n151, A2 => net5538, ZN => n148);
   U76 : NOR2_X1 port map( A1 => n148, A2 => n149, ZN => n150);
   U77 : AOI21_X1 port map( B1 => n152, B2 => n200, A => n150, ZN => n153);
   U78 : NAND2_X1 port map( A1 => n153, A2 => n154, ZN => NEXT_STATE_0_port);
   U80 : NAND2_X1 port map( A1 => net5538, A2 => net6512, ZN => n158);
   U83 : OAI21_X1 port map( B1 => net6518, B2 => n158, A => n157, ZN => n159);
   U84 : NOR3_X1 port map( A1 => n159, A2 => startC_port, A3 => n191, ZN => 
                           n160);
   U85 : INV_X1 port map( A => n160, ZN => n2);
   U92 : AOI21_X1 port map( B1 => net5538, B2 => n186, A => net6525, ZN => n176
                           );
   CURRENT_STATE_reg_0_inst : DFFR_X1 port map( D => NEXT_STATE_0_port, CK => 
                           clk, RN => n1, Q => net5635, QN => net2981);
   CURRENT_STATE_reg_1_inst : DFFR_X1 port map( D => NEXT_STATE_1_port, CK => 
                           clk, RN => n1, Q => net2950, QN => net5634);
   CURRENT_STATE_reg_2_inst : DFFR_X1 port map( D => NEXT_STATE_2_port, CK => 
                           clk, RN => n1, Q => net2954, QN => net5657);
   CURRENT_STATE_reg_3_inst : DFFR_X1 port map( D => n2, CK => clk, RN => n1, Q
                           => net2956, QN => net5653);
   CURRENT_STATE_reg_4_inst : DFFR_X1 port map( D => NEXT_STATE_4_port, CK => 
                           clk, RN => n1, Q => net2951, QN => net5644);
   U72 : NOR2_X1 port map( A1 => n177, A2 => n172, ZN => n147);
   U95 : AOI22_X1 port map( A1 => n174, A2 => n129, B1 => n126, B2 => n177, ZN 
                           => n175);
   U96 : OAI21_X1 port map( B1 => n176, B2 => n177, A => n175, ZN => n181);
   U79 : NOR3_X1 port map( A1 => net5694, A2 => net6505, A3 => net6532, ZN => 
                           NEXT_STATE_4_port);
   U59 : OAI21_X1 port map( B1 => net6518, B2 => net5694, A => net6505, ZN => 
                           n138);
   U42 : AND2_X2 port map( A1 => net5654, A2 => n141, ZN => n129);
   U54 : NAND2_X1 port map( A1 => net2981, A2 => net5634, ZN => n141);
   U53 : NOR3_X1 port map( A1 => n155, A2 => net5669, A3 => net5634, ZN => n183
                           );
   U94 : NOR3_X1 port map( A1 => net6488, A2 => net5669, A3 => n172, ZN => n174
                           );
   U15 : INV_X1 port map( A => net5653, ZN => net5669);
   U20 : NAND2_X1 port map( A1 => net6516, A2 => net5561, ZN => net5559);
   U19 : INV_X1 port map( A => net6536, ZN => net5561);
   U36 : AOI22_X1 port map( A1 => n191, A2 => net6492, B1 => net6543, B2 => 
                           n162, ZN => n127);
   U65 : NAND2_X1 port map( A1 => n125, A2 => n162, ZN => n144);
   U64 : INV_X1 port map( A => n141, ZN => n162);
   U70 : NAND2_X1 port map( A1 => strobeA, A2 => n145, ZN => n146);
   U69 : INV_X1 port map( A => strobeB, ZN => n145);
   U35 : NAND2_X1 port map( A1 => net5675, A2 => net5644, ZN => n155);
   U21 : NOR2_X1 port map( A1 => net5675, A2 => net2951, ZN => net5654);
   U55 : INV_X1 port map( A => strobeA, ZN => n134);
   U68 : INV_X1 port map( A => n166, ZN => n177);
   U61 : NAND2_X1 port map( A1 => net6511, A2 => n166, ZN => n137);
   U82 : OAI21_X1 port map( B1 => n197, B2 => n156, A => n166, ZN => n157);
   U56 : NAND2_X1 port map( A1 => strobeB, A2 => n134, ZN => n166);
   U81 : NOR3_X1 port map( A1 => net5672, A2 => net5694, A3 => net5546, ZN => 
                           n156);
   U37 : INV_X1 port map( A => net5644, ZN => net5672);
   U41 : AOI21_X1 port map( B1 => net2956, B2 => net5672, A => net5675, ZN => 
                           n128);
   U4 : NAND2_X1 port map( A1 => n201, A2 => n177, ZN => n113);
   U57 : NAND2_X1 port map( A1 => net6512, A2 => n177, ZN => n136);
   U86 : AOI22_X1 port map( A1 => net6525, A2 => net6492, B1 => n163, B2 => 
                           n162, ZN => n178);
   U3 : INV_X1 port map( A => n146, ZN => n172);
   U5 : AND3_X1 port map( A1 => net6512, A2 => net6529, A3 => net5546, ZN => 
                           n186);
   U7 : OR3_X1 port map( A1 => n164, A2 => n188, A3 => net6505, ZN => n187);
   U8 : CLKBUF_X1 port map( A => net6524, Z => n188);
   U9 : AND2_X2 port map( A1 => n189, A2 => n190, ZN => loadC);
   U10 : AND3_X1 port map( A1 => net5635, A2 => net5634, A3 => net2956, ZN => 
                           n189);
   U12 : AND2_X1 port map( A1 => net2954, A2 => net5644, ZN => n190);
   U13 : CLKBUF_X1 port map( A => n183, Z => n201);
   U14 : BUF_X1 port map( A => n128, Z => n125);
   U17 : INV_X1 port map( A => n131, ZN => n191);
   U18 : AND4_X1 port map( A1 => net5669, A2 => net6527, A3 => net2950, A4 => 
                           net2981, ZN => net6525);
   U23 : AND2_X1 port map( A1 => n113, A2 => n165, ZN => n192);
   U24 : NAND2_X1 port map( A1 => net6536, A2 => net5644, ZN => n193);
   U26 : CLKBUF_X1 port map( A => n151, Z => n200);
   U27 : AND2_X1 port map( A1 => n195, A2 => n178, ZN => n194);
   U28 : NAND2_X1 port map( A1 => net5507, A2 => n196, ZN => n195);
   U29 : AND2_X1 port map( A1 => net6511, A2 => n146, ZN => n196);
   U30 : NOR3_X1 port map( A1 => n193, A2 => net5669, A3 => net5634, ZN => n197
                           );
   U31 : AND3_X1 port map( A1 => net2951, A2 => net5653, A3 => net2981, ZN => 
                           n121);
   U32 : NAND3_X1 port map( A1 => n198, A2 => n192, A3 => n127, ZN => 
                           NEXT_STATE_1_port);
   U33 : INV_X1 port map( A => n181, ZN => n198);
   U39 : NAND3_X1 port map( A1 => n192, A2 => n187, A3 => n194, ZN => 
                           NEXT_STATE_2_port);
   U43 : AND2_X1 port map( A1 => n128, A2 => n177, ZN => n163);
   U44 : AND2_X1 port map( A1 => n125, A2 => n177, ZN => net6543);
   U45 : OR2_X1 port map( A1 => net2954, A2 => net2951, ZN => net6524);
   U46 : AND2_X1 port map( A1 => net5675, A2 => net2950, ZN => net6521);
   U47 : AND2_X1 port map( A1 => net5644, A2 => net2954, ZN => net6511);
   U48 : CLKBUF_X1 port map( A => net5644, Z => net6527);
   U49 : INV_X1 port map( A => net5561, ZN => net6492);
   U52 : INV_X1 port map( A => net6503, ZN => net6536);
   U60 : BUF_X1 port map( A => net5657, Z => net6503);
   U66 : AND2_X1 port map( A1 => net6503, A2 => net5634, ZN => net6541);
   U71 : CLKBUF_X1 port map( A => net6527, Z => net6516);
   U87 : INV_X1 port map( A => net6488, ZN => net6505);
   U88 : MUX2_X1 port map( A => n172, B => n177, S => net6512, Z => n164);
   U89 : INV_X1 port map( A => net5653, ZN => net6512);
   U90 : INV_X1 port map( A => net6525, ZN => n131);
   U91 : CLKBUF_X1 port map( A => n193, Z => net6532);
   U93 : CLKBUF_X1 port map( A => net5634, Z => net6529);
   U97 : NOR2_X1 port map( A1 => net5653, A2 => net2951, ZN => n199);
   U98 : NAND2_X1 port map( A1 => n199, A2 => net6521, ZN => n117);
   U99 : CLKBUF_X1 port map( A => net2981, Z => net6518);
   U100 : BUF_X1 port map( A => n183, Z => loadB);
   U101 : AND2_X1 port map( A1 => net2950, A2 => net5635, ZN => net6488);
   U102 : AND2_X1 port map( A1 => net5507, A2 => net6511, ZN => n126);
   U103 : NAND4_X1 port map( A1 => net6511, A2 => net5546, A3 => net5677, A4 =>
                           net5694, ZN => n143);
   U104 : BUF_X1 port map( A => net5653, Z => net5694);

end SYN_FSM_OPC;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_SIPISOALU.all;

entity SIPISOALU is

   port( CLK, RESET, STARTA, A, LOADB : in std_logic;  B : in std_logic_vector 
         (3 downto 0);  STARTC, C : out std_logic);

end SIPISOALU;

architecture SYN_A of SIPISOALU is

   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X2
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X2
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component sipisoAluControl
      port( clk, rst, strobeA, strobeB : in std_logic;  shiftA, loadB, loadC, 
            shiftC, startC : out std_logic);
   end component;
   
   component OAI33_X1
      port( A1, A2, A3, B1, B2, B3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal EA, LDB, LDC, SHIFTC, n44, n45, n46, n47, n48, n49, n50, n51, n52, 
      n53, n54, net2896, net2899, net2976, n141, n150, n159, n169, n170, n171, 
      n172, n205, net5580, net5582, net5596, net5600, net5603, net5609, net5610
      , net5614, net5622, net5624, net5638, net5668, net5571, net5569, n206, 
      n208, n209, n211, n217, n218, n220, n221, n222, n223, n224, n225, n226, 
      n227, n228, n231, n234, n237, n238, n241, n242, n243, n244, n247, n248, 
      n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260, 
      n261, n262, n263, n264, n265, n266, n267, n268, n_1000 : std_logic;

begin
   C <= net5624;
   
   U147 : OR2_X1 port map( A1 => n209, A2 => n206, ZN => n237);
   U148 : OR2_X1 port map( A1 => LDC, A2 => n170, ZN => n206);
   U153 : CLKBUF_X1 port map( A => SHIFTC, Z => n208);
   U154 : INV_X1 port map( A => SHIFTC, ZN => n209);
   U156 : NOR2_X1 port map( A1 => net2976, A2 => A, ZN => n211);
   U165 : OAI21_X1 port map( B1 => n220, B2 => n221, A => LDC, ZN => net5569);
   U167 : NOR2_X1 port map( A1 => n222, A2 => n223, ZN => n221);
   U170 : AOI21_X1 port map( B1 => n225, B2 => n226, A => net2899, ZN => n222);
   U172 : NAND2_X1 port map( A1 => net2976, A2 => A, ZN => n225);
   U173 : NOR3_X1 port map( A1 => n227, A2 => n228, A3 => n253, ZN => n220);
   U176 : AOI21_X1 port map( B1 => net2976, B2 => A, A => net2896, ZN => n228);
   U177 : AOI21_X1 port map( B1 => n231, B2 => A, A => n257, ZN => n227);
   U179 : OAI21_X1 port map( B1 => net2896, B2 => n257, A => net5609, ZN => 
                           n234);
   U181 : NOR2_X1 port map( A1 => net5668, A2 => n226, ZN => n231);
   U188 : NOR2_X1 port map( A1 => n205, A2 => LDC, ZN => net5614);
   U189 : XOR2_X1 port map( A => n226, B => net2899, Z => n241);
   U191 : INV_X1 port map( A => RESET, ZN => n159);
   U204 : NAND2_X1 port map( A1 => n209, A2 => n238, ZN => n244);
   U206 : XOR2_X1 port map( A => n241, B => n252, Z => n242);
   U207 : AOI22_X1 port map( A1 => n268, A2 => n242, B1 => net5638, B2 => 
                           net5614, ZN => n243);
   U208 : OAI21_X1 port map( B1 => n268, B2 => n244, A => n243, ZN => n45);
   U209 : INV_X1 port map( A => A, ZN => net5610);
   U210 : NOR2_X1 port map( A1 => net5610, A2 => net5668, ZN => net5609);
   U215 : INV_X1 port map( A => net5600, ZN => net5603);
   U219 : XOR2_X1 port map( A => n247, B => n171, Z => n248);
   U220 : INV_X1 port map( A => n248, ZN => n249);
   U221 : AOI22_X1 port map( A1 => n249, A2 => net5580, B1 => n248, B2 => 
                           net5582, ZN => n250);
   U224 : OAI33_X1 port map( A1 => n251, A2 => n250, A3 => n258, B1 => n208, B2
                           => net5596, B3 => n268, ZN => n47);
   control : sipisoAluControl port map( clk => CLK, rst => RESET, strobeA => 
                           STARTA, strobeB => LOADB, shiftA => EA, loadB => LDB
                           , loadC => LDC, shiftC => SHIFTC, startC => STARTC);
   PIPO_reg_2_inst : DFFR_X1 port map( D => n50, CK => CLK, RN => n159, Q => 
                           n141, QN => n265);
   SIPO_reg_1_inst : DFFR_X1 port map( D => n53, CK => CLK, RN => n159, Q => 
                           n150, QN => n264);
   PIPO_reg_0_inst : DFFR_X1 port map( D => n48, CK => CLK, RN => n159, Q => 
                           net2976, QN => net5668);
   PISO_reg_1_inst : DFFR_X1 port map( D => n45, CK => CLK, RN => n159, Q => 
                           n238, QN => n170);
   SIPO_reg_2_inst : DFFR_X1 port map( D => n52, CK => CLK, RN => n159, Q => 
                           n267, QN => n171);
   PIPO_reg_3_inst : DFFR_X1 port map( D => n51, CK => CLK, RN => n159, Q => 
                           n172, QN => n247);
   PISO_reg_0_inst : DFFR_X1 port map( D => n44, CK => CLK, RN => n159, Q => 
                           net5624, QN => n_1000);
   SIPO_reg_0_inst : DFFR_X1 port map( D => n54, CK => CLK, RN => n159, Q => 
                           net2896, QN => n226);
   PIPO_reg_1_inst : DFFR_X1 port map( D => n49, CK => CLK, RN => n159, Q => 
                           n257, QN => net2899);
   PISO_reg_2_inst : DFFR_X1 port map( D => n46, CK => CLK, RN => n159, Q => 
                           n218, QN => n205);
   PISO_reg_3_inst : DFFR_X2 port map( D => n47, CK => CLK, RN => n159, Q => 
                           n169, QN => net5596);
   U149 : AND2_X1 port map( A1 => net2976, A2 => A, ZN => n252);
   U150 : AND2_X1 port map( A1 => net5582, A2 => net5580, ZN => n253);
   U151 : OR2_X1 port map( A1 => n211, A2 => n252, ZN => n254);
   U152 : OR2_X1 port map( A1 => n258, A2 => n254, ZN => n255);
   U155 : NAND2_X1 port map( A1 => n256, A2 => n234, ZN => net5600);
   U157 : NAND2_X1 port map( A1 => net2896, A2 => n257, ZN => n256);
   U158 : INV_X1 port map( A => LDC, ZN => n258);
   U159 : CLKBUF_X1 port map( A => LDC, Z => n268);
   U160 : NAND2_X1 port map( A1 => n259, A2 => n260, ZN => n251);
   U161 : INV_X1 port map( A => n266, ZN => n261);
   U162 : NAND2_X1 port map( A1 => n261, A2 => net5580, ZN => n262);
   U163 : NAND2_X1 port map( A1 => n266, A2 => net5582, ZN => n263);
   U164 : NAND2_X1 port map( A1 => n264, A2 => n265, ZN => net5580);
   U166 : XNOR2_X1 port map( A => n172, B => n267, ZN => n266);
   U168 : OR2_X2 port map( A1 => n265, A2 => n264, ZN => net5582);
   U169 : OR2_X1 port map( A1 => net5600, A2 => n263, ZN => n260);
   U171 : OR2_X1 port map( A1 => net5603, A2 => n262, ZN => n259);
   U174 : CLKBUF_X1 port map( A => SHIFTC, Z => net5638);
   U175 : NAND3_X1 port map( A1 => net5580, A2 => n224, A3 => net5582, ZN => 
                           n223);
   U178 : NAND3_X1 port map( A1 => net2896, A2 => net2976, A3 => A, ZN => n224)
                           ;
   U180 : MUX2_X1 port map( A => n172, B => B(3), S => LDB, Z => n51);
   U182 : MUX2_X1 port map( A => net2896, B => A, S => EA, Z => n54);
   U183 : MUX2_X1 port map( A => n267, B => n150, S => EA, Z => n52);
   U184 : NAND3_X1 port map( A1 => n237, A2 => n255, A3 => net5622, ZN => n44);
   U185 : NAND3_X1 port map( A1 => n209, A2 => net5624, A3 => n258, ZN => 
                           net5622);
   U186 : MUX2_X1 port map( A => net2976, B => B(0), S => LDB, Z => n48);
   U187 : MUX2_X1 port map( A => n150, B => net2896, S => EA, Z => n53);
   U190 : MUX2_X1 port map( A => n141, B => B(2), S => LDB, Z => n50);
   U192 : MUX2_X1 port map( A => n257, B => B(1), S => LDB, Z => n49);
   U193 : NAND3_X1 port map( A1 => net5571, A2 => net5569, A3 => n217, ZN => 
                           n46);
   U194 : NAND3_X1 port map( A1 => n209, A2 => n258, A3 => n218, ZN => n217);
   U195 : NAND3_X1 port map( A1 => n208, A2 => n258, A3 => n169, ZN => net5571)
                           ;

end SYN_A;
