
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ACC_NBIT6 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_ACC_NBIT6;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_NBIT6.all;

entity regN_N6 is

   port( regIn : in std_logic_vector (0 to 5);  Clk, Reset : in std_logic;  
         regOut : out std_logic_vector (0 to 5));

end regN_N6;

architecture SYN_Structural_asyn of regN_N6 is

   component ffd
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;

begin
   
   ffi_0 : ffd port map( D => regIn(0), CK => Clk, RESET => Reset, Q => 
                           regOut(0));
   ffi_1 : ffd port map( D => regIn(1), CK => Clk, RESET => Reset, Q => 
                           regOut(1));
   ffi_2 : ffd port map( D => regIn(2), CK => Clk, RESET => Reset, Q => 
                           regOut(2));
   ffi_3 : ffd port map( D => regIn(3), CK => Clk, RESET => Reset, Q => 
                           regOut(3));
   ffi_4 : ffd port map( D => regIn(4), CK => Clk, RESET => Reset, Q => 
                           regOut(4));
   ffi_5 : ffd port map( D => regIn(5), CK => Clk, RESET => Reset, Q => 
                           regOut(5));

end SYN_Structural_asyn;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_NBIT6.all;

entity RCA_size6 is

   port( a, b : in std_logic_vector (5 downto 0);  c_out : out std_logic;  sum 
         : out std_logic_vector (5 downto 0));

end RCA_size6;

architecture SYN_Behavioural of RCA_size6 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
      , n17, n18, n19, n20, n21, n22 : std_logic;

begin
   
   U1 : XNOR2_X1 port map( A => n1, B => n2, ZN => sum(5));
   U2 : XOR2_X1 port map( A => b(5), B => a(5), Z => n2);
   U3 : XOR2_X1 port map( A => n3, B => n4, Z => sum(4));
   U4 : XOR2_X1 port map( A => b(4), B => a(4), Z => n4);
   U5 : XOR2_X1 port map( A => n5, B => n6, Z => sum(3));
   U6 : XOR2_X1 port map( A => b(3), B => a(3), Z => n6);
   U7 : XOR2_X1 port map( A => n7, B => n8, Z => sum(2));
   U8 : XOR2_X1 port map( A => n9, B => b(2), Z => n7);
   U9 : XOR2_X1 port map( A => n10, B => n11, Z => sum(1));
   U10 : XNOR2_X1 port map( A => b(1), B => n12, ZN => n11);
   U11 : XOR2_X1 port map( A => b(0), B => a(0), Z => sum(0));
   U12 : OAI22_X1 port map( A1 => n1, A2 => n13, B1 => n14, B2 => n15, ZN => 
                           c_out);
   U13 : INV_X1 port map( A => b(5), ZN => n15);
   U14 : AND2_X1 port map( A1 => n13, A2 => n1, ZN => n14);
   U15 : INV_X1 port map( A => a(5), ZN => n13);
   U16 : AOI22_X1 port map( A1 => n3, A2 => a(4), B1 => n16, B2 => b(4), ZN => 
                           n1);
   U17 : OR2_X1 port map( A1 => a(4), A2 => n3, ZN => n16);
   U18 : INV_X1 port map( A => n17, ZN => n3);
   U19 : AOI22_X1 port map( A1 => n5, A2 => a(3), B1 => n18, B2 => b(3), ZN => 
                           n17);
   U20 : OR2_X1 port map( A1 => a(3), A2 => n5, ZN => n18);
   U21 : OAI21_X1 port map( B1 => n8, B2 => n9, A => n19, ZN => n5);
   U22 : OAI21_X1 port map( B1 => a(2), B2 => n20, A => b(2), ZN => n19);
   U23 : INV_X1 port map( A => a(2), ZN => n9);
   U24 : INV_X1 port map( A => n20, ZN => n8);
   U25 : OAI21_X1 port map( B1 => n21, B2 => n12, A => n22, ZN => n20);
   U26 : OAI21_X1 port map( B1 => n10, B2 => a(1), A => b(1), ZN => n22);
   U27 : INV_X1 port map( A => n21, ZN => n10);
   U28 : INV_X1 port map( A => a(1), ZN => n12);
   U29 : NAND2_X1 port map( A1 => b(0), A2 => a(0), ZN => n21);

end SYN_Behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_NBIT6.all;

entity MUX21_GENERIC_NBIT6 is

   port( A, B : in std_logic_vector (5 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (5 downto 0));

end MUX21_GENERIC_NBIT6;

architecture SYN_STRUCTURAL of MUX21_GENERIC_NBIT6 is

   component MUX21_1
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_2
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_3
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_4
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_5
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_0
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;

begin
   
   MUX21GENI_0 : MUX21_0 port map( A => A(0), B => B(0), S => SEL, Y => Y(0));
   MUX21GENI_1 : MUX21_5 port map( A => A(1), B => B(1), S => SEL, Y => Y(1));
   MUX21GENI_2 : MUX21_4 port map( A => A(2), B => B(2), S => SEL, Y => Y(2));
   MUX21GENI_3 : MUX21_3 port map( A => A(3), B => B(3), S => SEL, Y => Y(3));
   MUX21GENI_4 : MUX21_2 port map( A => A(4), B => B(4), S => SEL, Y => Y(4));
   MUX21GENI_5 : MUX21_1 port map( A => A(5), B => B(5), S => SEL, Y => Y(5));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_NBIT6.all;

entity ACC_NBIT6 is

   port( A, B : in std_logic_vector (5 downto 0);  CLK, RST_n, ACCUMULATE : in 
         std_logic;  Y : out std_logic_vector (5 downto 0));

end ACC_NBIT6;

architecture SYN_STRUCTURAL of ACC_NBIT6 is

   component regN_N6
      port( regIn : in std_logic_vector (0 to 5);  Clk, Reset : in std_logic;  
            regOut : out std_logic_vector (0 to 5));
   end component;
   
   component RCA_size6
      port( a, b : in std_logic_vector (5 downto 0);  c_out : out std_logic;  
            sum : out std_logic_vector (5 downto 0));
   end component;
   
   component MUX21_GENERIC_NBIT6
      port( A, B : in std_logic_vector (5 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (5 downto 0));
   end component;
   
   signal Y_5_port, Y_4_port, Y_3_port, Y_2_port, Y_1_port, Y_0_port, 
      out_mux_5_port, out_mux_4_port, out_mux_3_port, out_mux_2_port, 
      out_mux_1_port, out_mux_0_port, out_add_5_port, out_add_4_port, 
      out_add_3_port, out_add_2_port, out_add_1_port, out_add_0_port, n_1000 : 
      std_logic;

begin
   Y <= ( Y_5_port, Y_4_port, Y_3_port, Y_2_port, Y_1_port, Y_0_port );
   
   MUX : MUX21_GENERIC_NBIT6 port map( A(5) => Y_5_port, A(4) => Y_4_port, A(3)
                           => Y_3_port, A(2) => Y_2_port, A(1) => Y_1_port, 
                           A(0) => Y_0_port, B(5) => B(5), B(4) => B(4), B(3) 
                           => B(3), B(2) => B(2), B(1) => B(1), B(0) => B(0), 
                           SEL => ACCUMULATE, Y(5) => out_mux_5_port, Y(4) => 
                           out_mux_4_port, Y(3) => out_mux_3_port, Y(2) => 
                           out_mux_2_port, Y(1) => out_mux_1_port, Y(0) => 
                           out_mux_0_port);
   ADD : RCA_size6 port map( a(5) => A(5), a(4) => A(4), a(3) => A(3), a(2) => 
                           A(2), a(1) => A(1), a(0) => A(0), b(5) => 
                           out_mux_5_port, b(4) => out_mux_4_port, b(3) => 
                           out_mux_3_port, b(2) => out_mux_2_port, b(1) => 
                           out_mux_1_port, b(0) => out_mux_0_port, c_out => 
                           n_1000, sum(5) => out_add_5_port, sum(4) => 
                           out_add_4_port, sum(3) => out_add_3_port, sum(2) => 
                           out_add_2_port, sum(1) => out_add_1_port, sum(0) => 
                           out_add_0_port);
   REG : regN_N6 port map( regIn(0) => out_add_5_port, regIn(1) => 
                           out_add_4_port, regIn(2) => out_add_3_port, regIn(3)
                           => out_add_2_port, regIn(4) => out_add_1_port, 
                           regIn(5) => out_add_0_port, Clk => CLK, Reset => 
                           RST_n, regOut(0) => Y_5_port, regOut(1) => Y_4_port,
                           regOut(2) => Y_3_port, regOut(3) => Y_2_port, 
                           regOut(4) => Y_1_port, regOut(5) => Y_0_port);

end SYN_STRUCTURAL;
