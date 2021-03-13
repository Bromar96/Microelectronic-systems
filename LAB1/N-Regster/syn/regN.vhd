
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.constants.ALL;

entity regN is
	GENERIC(N: integer := NumBit);
 Port( regIn: IN std_logic_vector(0 to N-1);
	   Clk: IN std_logic;
	   Reset: IN std_logic;
	   regOut: OUT std_logic_vector(0 to N-1));
end regN;

architecture Structural_syn of regN is
    COMPONENT ffd 
	Port( D:	In	std_logic;
		  CK:	In	std_logic;
		  RESET:	In	std_logic;
		  Q:	Out	std_logic);
	end COMPONENT;
begin
    GEN_LOOP: for i IN 0 to (N-1) GENERATE	
		ffi: ffd PORT MAP(D=>regIn(i),CK=>Clk, RESET=>Reset, Q=>regOut(i) ); 	
	end GENERATE GEN_LOOP;

end Structural_syn;

architecture Structural_asyn of regN is
    COMPONENT ffd 
	Port( D:	In	std_logic;
		  CK:	In	std_logic;
		  RESET:	In	std_logic;
		  Q:	Out	std_logic);
	end COMPONENT;
begin
    GEN_LOOP: for i IN 0 to (N-1) GENERATE	
		ffi: ffd PORT MAP(D=>regIn(i),CK=>Clk, RESET=>Reset, Q=>regOut(i) ); 	
	end GENERATE GEN_LOOP;

end Structural_asyn;

configuration CFG_REGN_Structural_syn of regN is  
    for Structural_syn
        for GEN_LOOP
            for all : ffd
                use configuration WORK.CFG_FD_SYNC;
            end for;
        end for;
    end for;
end configuration;

configuration CFG_REGN_Structural_asyn of regN is  
    for Structural_asyn
        for GEN_LOOP
            for all : ffd
                use configuration WORK.CFG_FD_ASYNC;
            end for;
        end for;
    end for;
end configuration;