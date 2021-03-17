
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_RCA_1 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_RCA_1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_RCA_1.all;

entity RCA_1_DW01_add_0 is

   port( A, B : in std_logic_vector (6 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (6 downto 0);  CO : out std_logic);

end RCA_1_DW01_add_0;

architecture SYN_rpl of RCA_1_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_5_port, carry_4_port, carry_3_port, carry_2_port, n1 : 
      std_logic;

begin
   
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           SUM(6), S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port, S
                           => SUM(1));
   U1 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n1);
   U2 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_RCA_1.all;

entity RCA_1 is

   port( a, b : in std_logic_vector (5 downto 0);  c_out : out std_logic;  sum 
         : out std_logic_vector (5 downto 0));

end RCA_1;

architecture SYN_Behavioural of RCA_1 is

   component RCA_1_DW01_add_0
      port( A, B : in std_logic_vector (6 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (6 downto 0);  CO : out std_logic);
   end component;
   
   signal n1, n_1004 : std_logic;

begin
   
   n1 <= '0';
   add_70 : RCA_1_DW01_add_0 port map( A(6) => n1, A(5) => a(5), A(4) => a(4), 
                           A(3) => a(3), A(2) => a(2), A(1) => a(1), A(0) => 
                           a(0), B(6) => n1, B(5) => b(5), B(4) => b(4), B(3) 
                           => b(3), B(2) => b(2), B(1) => b(1), B(0) => b(0), 
                           CI => n1, SUM(6) => c_out, SUM(5) => sum(5), SUM(4) 
                           => sum(4), SUM(3) => sum(3), SUM(2) => sum(2), 
                           SUM(1) => sum(1), SUM(0) => sum(0), CO => n_1004);

end SYN_Behavioural;
