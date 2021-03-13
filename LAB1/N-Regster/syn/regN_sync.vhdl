
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_regN_N4 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_regN_N4;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_regN_N4.all;

entity regN_N4 is

   port( regIn : in std_logic_vector (0 to 3);  Clk, Reset : in std_logic;  
         regOut : out std_logic_vector (0 to 3));

end regN_N4;

architecture SYN_Structural_syn of regN_N4 is

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

end SYN_Structural_syn;
