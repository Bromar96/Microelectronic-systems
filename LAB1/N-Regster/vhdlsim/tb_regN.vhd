library IEEE;
use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity tb_regN is
end tb_regN;

architecture TEST of tb_regN is 
    
    constant NBIT: integer:=NumBit;
    
	signal	I:	std_logic_vector(0 to NBIT-1);	-- input signal of reg
	signal	Q1:	std_logic_vector(0 to NBIT-1);	--output signal of reg syn
	signal	Q2:	std_logic_vector(0 to NBIT-1);	--output signal of reg asyn
	signal	Clk_s: std_logic:= '0';
	signal	Reset_s: std_logic:= '0';
	
	component regN
	GENERIC(N: integer := NBIT);
 	Port( regIn: IN std_logic_vector(0 to NBIT-1);
	   Clk: IN std_logic;
	   Reset: IN std_logic;
	   regOut: OUT std_logic_vector(0 to NBIT-1));
	end component;

begin 
		
	U1 : regN
	Generic Map (NBIT)
	Port Map (I, Clk_s, Reset_s, Q1); 

	U2 : regN
	Generic Map (NBIT)
	Port Map (I, Clk_s, Reset_s, Q2); 

	Reset_s <= '0', '1' after 0.6 ns, '0' after 1.1 ns;	
	
	
	--I <= "00000000", "11111111" after 0.4 ns, "00000000" after 1.1 ns, "11111111" after 1.4 ns, "00000000" after 1.7 ns, "11111111" after 1.9 ns;
	process
	begin
		I<="0000";
	  	wait for 3 ns;
		I<="0001";
		wait for 3 ns;
		I<="0101";
		wait for 5 ns;
		I <= "0000", "1111" after 0.4 ns, "0000" after 1.1 ns, "1111" after 1.4 ns, "0000" after 1.7 ns, "1111" after 1.9 ns;
		wait;
	end process;
	
	PCLOCK : process(Clk_s)
	begin
		Clk_s <= not(Clk_s) after 0.5 ns;	
	end process; 


end TEST;

configuration REGNTEST of tb_regN is
   for TEST
      for U1: regN
         use configuration WORK.CFG_REGN_Structural_syn; 
      end for;
 
      for U2: regN
         use configuration WORK.CFG_REGN_Structural_asyn; 
      end for;
   end for;

end REGNTEST;



