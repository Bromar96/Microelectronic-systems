
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_RCA is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_RCA;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_RCA.all;

entity FA_5 is

   port( a, b, c_in : in std_logic;  c_out, s : out std_logic);

end FA_5;

architecture SYN_Behavioural of FA_5 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U5 : XOR2_X1 port map( A => c_in, B => n1, Z => s);
   U6 : INV_X1 port map( A => n2, ZN => c_out);
   U7 : AOI22_X1 port map( A1 => b, A2 => a, B1 => n1, B2 => c_in, ZN => n2);
   U8 : XOR2_X1 port map( A => a, B => b, Z => n1);

end SYN_Behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_RCA.all;

entity FA_4 is

   port( a, b, c_in : in std_logic;  c_out, s : out std_logic);

end FA_4;

architecture SYN_Behavioural of FA_4 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U5 : XOR2_X1 port map( A => c_in, B => n1, Z => s);
   U6 : INV_X1 port map( A => n2, ZN => c_out);
   U7 : AOI22_X1 port map( A1 => b, A2 => a, B1 => n1, B2 => c_in, ZN => n2);
   U8 : XOR2_X1 port map( A => a, B => b, Z => n1);

end SYN_Behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_RCA.all;

entity FA_3 is

   port( a, b, c_in : in std_logic;  c_out, s : out std_logic);

end FA_3;

architecture SYN_Behavioural of FA_3 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U5 : XOR2_X1 port map( A => c_in, B => n1, Z => s);
   U6 : INV_X1 port map( A => n2, ZN => c_out);
   U7 : AOI22_X1 port map( A1 => b, A2 => a, B1 => n1, B2 => c_in, ZN => n2);
   U8 : XOR2_X1 port map( A => a, B => b, Z => n1);

end SYN_Behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_RCA.all;

entity FA_2 is

   port( a, b, c_in : in std_logic;  c_out, s : out std_logic);

end FA_2;

architecture SYN_Behavioural of FA_2 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U5 : XOR2_X1 port map( A => c_in, B => n1, Z => s);
   U6 : INV_X1 port map( A => n2, ZN => c_out);
   U7 : AOI22_X1 port map( A1 => b, A2 => a, B1 => n1, B2 => c_in, ZN => n2);
   U8 : XOR2_X1 port map( A => a, B => b, Z => n1);

end SYN_Behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_RCA.all;

entity FA_1 is

   port( a, b, c_in : in std_logic;  c_out, s : out std_logic);

end FA_1;

architecture SYN_Behavioural of FA_1 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U5 : XOR2_X1 port map( A => c_in, B => n1, Z => s);
   U6 : INV_X1 port map( A => n2, ZN => c_out);
   U7 : AOI22_X1 port map( A1 => b, A2 => a, B1 => n1, B2 => c_in, ZN => n2);
   U8 : XOR2_X1 port map( A => a, B => b, Z => n1);

end SYN_Behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_RCA.all;

entity FA_0 is

   port( a, b, c_in : in std_logic;  c_out, s : out std_logic);

end FA_0;

architecture SYN_Behavioural of FA_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2 : std_logic;

begin
   
   U5 : XOR2_X1 port map( A => c_in, B => n1, Z => s);
   U6 : INV_X1 port map( A => n2, ZN => c_out);
   U7 : AOI22_X1 port map( A1 => b, A2 => a, B1 => n1, B2 => c_in, ZN => n2);
   U8 : XOR2_X1 port map( A => a, B => b, Z => n1);

end SYN_Behavioural;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_RCA.all;

entity RCA is

   port( a, b : in std_logic_vector (5 downto 0);  c_out : out std_logic;  sum 
         : out std_logic_vector (5 downto 0));

end RCA;

architecture SYN_Structural of RCA is

   component FA_1
      port( a, b, c_in : in std_logic;  c_out, s : out std_logic);
   end component;
   
   component FA_2
      port( a, b, c_in : in std_logic;  c_out, s : out std_logic);
   end component;
   
   component FA_3
      port( a, b, c_in : in std_logic;  c_out, s : out std_logic);
   end component;
   
   component FA_4
      port( a, b, c_in : in std_logic;  c_out, s : out std_logic);
   end component;
   
   component FA_5
      port( a, b, c_in : in std_logic;  c_out, s : out std_logic);
   end component;
   
   component FA_0
      port( a, b, c_in : in std_logic;  c_out, s : out std_logic);
   end component;
   
   signal X_Logic0_port, temp_5_port, temp_4_port, temp_3_port, temp_2_port, 
      temp_1_port : std_logic;

begin
   
   fa_i_0 : FA_0 port map( a => a(0), b => b(0), c_in => X_Logic0_port, c_out 
                           => temp_1_port, s => sum(0));
   fa_i_1 : FA_5 port map( a => a(1), b => b(1), c_in => temp_1_port, c_out => 
                           temp_2_port, s => sum(1));
   fa_i_2 : FA_4 port map( a => a(2), b => b(2), c_in => temp_2_port, c_out => 
                           temp_3_port, s => sum(2));
   fa_i_3 : FA_3 port map( a => a(3), b => b(3), c_in => temp_3_port, c_out => 
                           temp_4_port, s => sum(3));
   fa_i_4 : FA_2 port map( a => a(4), b => b(4), c_in => temp_4_port, c_out => 
                           temp_5_port, s => sum(4));
   fa_i_5 : FA_1 port map( a => a(5), b => b(5), c_in => temp_5_port, c_out => 
                           c_out, s => sum(5));
   X_Logic0_port <= '0';

end SYN_Structural;
