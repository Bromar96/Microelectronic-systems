
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ACC_NBIT4 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_ACC_NBIT4;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACC_NBIT4.all;

entity ACC_NBIT4 is

   port( A, B : in std_logic_vector (3 downto 0);  CLK, RST_n, ACCUMULATE : in 
         std_logic;  Y : out std_logic_vector (3 downto 0));

end ACC_NBIT4;

architecture SYN_BEHAVIOURAL of ACC_NBIT4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Y_3_port, Y_2_port, Y_1_port, Y_0_port, next_sum_3_port, 
      next_sum_2_port, next_sum_1_port, next_sum_0_port, n8, n27, n28, n29, n30
      , n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n_1000, n_1001, 
      n_1002, n_1003 : std_logic;

begin
   Y <= ( Y_3_port, Y_2_port, Y_1_port, Y_0_port );
   
   curr_sum_reg_0_inst : DFFR_X1 port map( D => next_sum_0_port, CK => CLK, RN 
                           => n8, Q => Y_0_port, QN => n_1000);
   curr_sum_reg_1_inst : DFFR_X1 port map( D => next_sum_1_port, CK => CLK, RN 
                           => n8, Q => Y_1_port, QN => n_1001);
   curr_sum_reg_2_inst : DFFR_X1 port map( D => next_sum_2_port, CK => CLK, RN 
                           => n8, Q => Y_2_port, QN => n_1002);
   curr_sum_reg_3_inst : DFFR_X1 port map( D => next_sum_3_port, CK => CLK, RN 
                           => n8, Q => Y_3_port, QN => n_1003);
   U26 : XOR2_X1 port map( A => n27, B => n28, Z => next_sum_3_port);
   U27 : MUX2_X1 port map( A => B(3), B => Y_3_port, S => ACCUMULATE, Z => n28)
                           ;
   U28 : XNOR2_X1 port map( A => n29, B => A(3), ZN => n27);
   U29 : AOI21_X1 port map( B1 => n30, B2 => n31, A => n32, ZN => n29);
   U30 : INV_X1 port map( A => n33, ZN => n32);
   U31 : OAI21_X1 port map( B1 => n31, B2 => n30, A => A(2), ZN => n33);
   U32 : XNOR2_X1 port map( A => n34, B => n30, ZN => next_sum_2_port);
   U33 : MUX2_X1 port map( A => B(2), B => Y_2_port, S => ACCUMULATE, Z => n30)
                           ;
   U34 : XNOR2_X1 port map( A => n31, B => A(2), ZN => n34);
   U35 : AOI21_X1 port map( B1 => n35, B2 => n36, A => n37, ZN => n31);
   U36 : AOI21_X1 port map( B1 => n38, B2 => n39, A => A(1), ZN => n37);
   U37 : INV_X1 port map( A => n38, ZN => n36);
   U38 : XOR2_X1 port map( A => n38, B => n40, Z => next_sum_1_port);
   U39 : XOR2_X1 port map( A => A(1), B => n39, Z => n40);
   U40 : INV_X1 port map( A => n35, ZN => n39);
   U41 : NAND2_X1 port map( A1 => A(0), A2 => n41, ZN => n35);
   U42 : MUX2_X1 port map( A => B(1), B => Y_1_port, S => ACCUMULATE, Z => n38)
                           ;
   U43 : XOR2_X1 port map( A => n41, B => A(0), Z => next_sum_0_port);
   U44 : MUX2_X1 port map( A => B(0), B => Y_0_port, S => ACCUMULATE, Z => n41)
                           ;
   U45 : INV_X1 port map( A => RST_n, ZN => n8);

end SYN_BEHAVIOURAL;
