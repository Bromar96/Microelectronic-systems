
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_FA is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_FA;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FA.all;

entity FA is

   port( a, b, c_in : in std_logic;  c_out, s : out std_logic);

end FA;

architecture SYN_Behavioural of FA is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n4, n5 : std_logic;

begin
   
   U5 : XOR2_X1 port map( A => c_in, B => n4, Z => s);
   U6 : INV_X1 port map( A => n5, ZN => c_out);
   U7 : AOI22_X1 port map( A1 => b, A2 => a, B1 => n4, B2 => c_in, ZN => n5);
   U8 : XOR2_X1 port map( A => a, B => b, Z => n4);

end SYN_Behavioural;
