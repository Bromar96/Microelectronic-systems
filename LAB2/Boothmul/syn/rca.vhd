library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use WORK.CONSTANTS.ALL;

entity RCA is
    generic(
        size: integer:= NumBit);
       -- delay_s: time:= DRCAS;
       -- delay_c: time:= DRCAC
  --  );
    port(
        a:      in std_logic_vector(size-1 downto 0);
        b:      in std_logic_vector(size-1 downto 0);
		c_in:	in std_logic;
        c_out:  out std_logic;
        sum:    out std_logic_vector(size-1 downto 0)
    );
end RCA;

architecture Structural of RCA is

component FA is
  
    port(
        a:         in std_logic;
        b:         in std_logic;
        c_in:      in std_logic;  -- carry in
        c_out,s:   out std_logic  -- carry out, sum
    );
end component;

signal temp: std_logic_vector(size downto 0);

begin

    temp(0)<=c_in;
    G:for i in 0 to (size - 1) generate
        fa_i: FA
            port map(a(i),b(i),temp(i),temp(i+1),sum(i));
    end generate G;       
    
    c_out<=temp(size);
    
end Structural;


configuration RCA_STR of RCA is
  for STRUCTURAL 
    for G
      for all : FA
        use configuration WORK.FA_beh;
      end for;
    end for;
  end for;
end RCA_STR;

