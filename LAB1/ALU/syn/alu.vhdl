
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
      N71, N72, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, 
      n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, 
      n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135, 
      n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, 
      n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, 
      n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, 
      n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182 : 
      std_logic;

begin
   (FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port) <= 
      TYPE_OP_to_std_logic_vector(FUNC);
   
   OUTALU_reg_3_inst : DLH_X1 port map( G => N68, D => N72, Q => OUTALU(3));
   OUTALU_reg_2_inst : DLH_X1 port map( G => N68, D => N71, Q => OUTALU(2));
   OUTALU_reg_1_inst : DLH_X1 port map( G => N68, D => N70, Q => OUTALU(1));
   OUTALU_reg_0_inst : DLH_X1 port map( G => N68, D => N69, Q => OUTALU(0));
   U97 : NAND2_X1 port map( A1 => n102, A2 => n103, ZN => N72);
   U98 : NAND3_X1 port map( A1 => n104, A2 => n105, A3 => DATA1(2), ZN => n103)
                           ;
   U99 : MUX2_X1 port map( A => n106, B => n107, S => FUNC_2_port, Z => n102);
   U100 : OAI221_X1 port map( B1 => DATA2(3), B2 => DATA1(3), C1 => n108, C2 =>
                           n105, A => n109, ZN => n107);
   U101 : AOI21_X1 port map( B1 => n110, B2 => n111, A => n112, ZN => n106);
   U102 : MUX2_X1 port map( A => n113, B => n114, S => FUNC_1_port, Z => n112);
   U103 : MUX2_X1 port map( A => n115, B => n116, S => FUNC_0_port, Z => n114);
   U104 : AND2_X1 port map( A1 => DATA2(3), A2 => DATA1(3), ZN => n116);
   U105 : AND3_X1 port map( A1 => DATA2(0), A2 => n117, A3 => DATA1(1), ZN => 
                           n115);
   U106 : NOR2_X1 port map( A1 => FUNC_3_port, A2 => n118, ZN => n113);
   U107 : XNOR2_X1 port map( A => n108, B => n119, ZN => n118);
   U108 : XOR2_X1 port map( A => n120, B => FUNC_0_port, Z => n119);
   U109 : OAI22_X1 port map( A1 => n121, A2 => n122, B1 => n123, B2 => n124, ZN
                           => n120);
   U110 : INV_X1 port map( A => DATA1(2), ZN => n124);
   U111 : AND2_X1 port map( A1 => n122, A2 => n121, ZN => n123);
   U112 : XOR2_X1 port map( A => DATA2(3), B => DATA1(3), Z => n108);
   U113 : MUX2_X1 port map( A => DATA1(2), B => DATA1(0), S => FUNC_0_port, Z 
                           => n110);
   U114 : NAND3_X1 port map( A1 => n125, A2 => n126, A3 => n127, ZN => N71);
   U115 : MUX2_X1 port map( A => n128, B => n129, S => DATA1(2), Z => n127);
   U116 : AOI221_X1 port map( B1 => n130, B2 => DATA2(2), C1 => n131, C2 => 
                           n132, A => n133, ZN => n129);
   U117 : AOI21_X1 port map( B1 => DATA2(2), B2 => FUNC_0_port, A => n134, ZN 
                           => n133);
   U118 : XOR2_X1 port map( A => n121, B => n135, Z => n132);
   U119 : INV_X1 port map( A => n136, ZN => n130);
   U120 : AOI22_X1 port map( A1 => n137, A2 => n131, B1 => n138, B2 => DATA2(2)
                           , ZN => n128);
   U121 : XOR2_X1 port map( A => n121, B => n122, Z => n137);
   U122 : INV_X1 port map( A => n135, ZN => n122);
   U123 : XOR2_X1 port map( A => DATA2(2), B => FUNC_0_port, Z => n135);
   U124 : AOI21_X1 port map( B1 => n139, B2 => n140, A => n141, ZN => n121);
   U125 : AOI21_X1 port map( B1 => n142, B2 => n143, A => n144, ZN => n141);
   U126 : NAND3_X1 port map( A1 => DATA1(3), A2 => n145, A3 => FUNC_0_port, ZN 
                           => n126);
   U127 : OAI21_X1 port map( B1 => n146, B2 => n147, A => DATA1(1), ZN => n125)
                           ;
   U128 : NOR3_X1 port map( A1 => n148, A2 => DATA1(0), A3 => n149, ZN => n146)
                           ;
   U129 : OAI211_X1 port map( C1 => n150, C2 => n151, A => n152, B => n153, ZN 
                           => N70);
   U130 : MUX2_X1 port map( A => n154, B => n155, S => DATA1(1), Z => n153);
   U131 : AOI211_X1 port map( C1 => n156, C2 => n131, A => n157, B => n158, ZN 
                           => n155);
   U132 : NOR3_X1 port map( A1 => n148, A2 => n117, A3 => n159, ZN => n158);
   U133 : OAI22_X1 port map( A1 => n149, A2 => n136, B1 => n160, B2 => n134, ZN
                           => n157);
   U134 : NOR2_X1 port map( A1 => n105, A2 => n149, ZN => n160);
   U135 : XOR2_X1 port map( A => n143, B => n140, Z => n156);
   U136 : INV_X1 port map( A => n142, ZN => n140);
   U137 : AOI222_X1 port map( A1 => n138, A2 => DATA2(1), B1 => n131, B2 => 
                           n161, C1 => n162, C2 => n117, ZN => n154);
   U138 : NOR2_X1 port map( A1 => n149, A2 => n151, ZN => n117);
   U139 : INV_X1 port map( A => n148, ZN => n162);
   U140 : XOR2_X1 port map( A => n142, B => n143, Z => n161);
   U141 : INV_X1 port map( A => n139, ZN => n143);
   U142 : XNOR2_X1 port map( A => n149, B => FUNC_0_port, ZN => n139);
   U143 : INV_X1 port map( A => DATA2(1), ZN => n149);
   U144 : OAI21_X1 port map( B1 => FUNC_0_port, B2 => n163, A => n164, ZN => 
                           n142);
   U145 : OAI21_X1 port map( B1 => n165, B2 => n105, A => n151, ZN => n164);
   U146 : INV_X1 port map( A => n166, ZN => n131);
   U147 : INV_X1 port map( A => n134, ZN => n138);
   U148 : NAND3_X1 port map( A1 => DATA1(2), A2 => n145, A3 => FUNC_0_port, ZN 
                           => n152);
   U149 : INV_X1 port map( A => n147, ZN => n150);
   U150 : OAI22_X1 port map( A1 => FUNC_0_port, A2 => n167, B1 => n148, B2 => 
                           n168, ZN => n147);
   U151 : NAND2_X1 port map( A1 => DATA2(1), A2 => n159, ZN => n168);
   U152 : OAI221_X1 port map( B1 => n144, B2 => n169, C1 => n170, C2 => n166, A
                           => n171, ZN => N69);
   U153 : MUX2_X1 port map( A => n172, B => n173, S => FUNC_2_port, Z => n171);
   U154 : NAND2_X1 port map( A1 => n174, A2 => n109, ZN => n173);
   U155 : MUX2_X1 port map( A => DATA1(0), B => n175, S => DATA2(0), Z => n174)
                           ;
   U156 : NAND2_X1 port map( A1 => DATA1(0), A2 => FUNC_0_port, ZN => n175);
   U157 : AOI21_X1 port map( B1 => n176, B2 => n111, A => n177, ZN => n172);
   U158 : NOR3_X1 port map( A1 => n159, A2 => n109, A3 => n151, ZN => n177);
   U159 : MUX2_X1 port map( A => DATA1(3), B => DATA1(1), S => FUNC_0_port, Z 
                           => n176);
   U160 : NAND2_X1 port map( A1 => n178, A2 => n109, ZN => n166);
   U161 : XNOR2_X1 port map( A => n179, B => n165, ZN => n170);
   U162 : INV_X1 port map( A => n163, ZN => n165);
   U163 : XOR2_X1 port map( A => n159, B => n105, Z => n163);
   U164 : INV_X1 port map( A => DATA2(0), ZN => n159);
   U165 : XOR2_X1 port map( A => n151, B => FUNC_0_port, Z => n179);
   U166 : INV_X1 port map( A => DATA1(0), ZN => n151);
   U167 : NAND2_X1 port map( A1 => FUNC_0_port, A2 => n104, ZN => n169);
   U168 : INV_X1 port map( A => DATA1(1), ZN => n144);
   U169 : NAND4_X1 port map( A1 => n136, A2 => n134, A3 => n148, A4 => n180, ZN
                           => N68);
   U170 : AOI21_X1 port map( B1 => n109, B2 => n181, A => n145, ZN => n180);
   U171 : INV_X1 port map( A => n167, ZN => n145);
   U172 : AOI22_X1 port map( A1 => n181, A2 => n111, B1 => n182, B2 => n104, ZN
                           => n167);
   U173 : NOR2_X1 port map( A1 => n181, A2 => n109, ZN => n104);
   U174 : NOR2_X1 port map( A1 => n182, A2 => FUNC_1_port, ZN => n111);
   U175 : INV_X1 port map( A => FUNC_2_port, ZN => n181);
   U176 : NAND3_X1 port map( A1 => FUNC_1_port, A2 => n105, A3 => n178, ZN => 
                           n148);
   U177 : INV_X1 port map( A => FUNC_0_port, ZN => n105);
   U178 : NAND3_X1 port map( A1 => n109, A2 => n182, A3 => FUNC_2_port, ZN => 
                           n134);
   U179 : INV_X1 port map( A => FUNC_3_port, ZN => n182);
   U180 : INV_X1 port map( A => FUNC_1_port, ZN => n109);
   U181 : NAND3_X1 port map( A1 => FUNC_0_port, A2 => FUNC_1_port, A3 => n178, 
                           ZN => n136);
   U182 : NOR2_X1 port map( A1 => FUNC_3_port, A2 => FUNC_2_port, ZN => n178);

end SYN_BEHAVIOR;
