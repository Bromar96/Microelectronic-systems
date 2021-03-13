library IEEE;
use IEEE.std_logic_1164.all; 

entity FD is
	Port (	D:	In	std_logic;
		CK:	In	std_logic;
		RESET:	In	std_logic;
		Q:	Out	std_logic);
end FD;


architecture BEH_SYNC of FD is -- flip flop D with syncronous reset

begin
	PSYNCH: process(CK,RESET)
	begin
	  if CK'event and CK='1' then -- positive edge triggered:
	    if RESET='1' then -- active high reset 
	      Q <= '0'; 
	    else
	      Q <= D; -- input is written on output
	    end if;
	  end if;
	end process;

end BEH_SYNC;

architecture BEH_ASYNC of FD is -- flip flop D with asyncronous reset

begin
	
	PASYNCH: process(CK,RESET)
	begin
	  if RESET='1' then
	    Q <= '0';
	  elsif CK'event and CK='1' then -- positive edge triggered:
	    Q <= D; 
	  end if;
	end process;

end BEH_ASYNC;


configuration CFG_FD_SYNC of FD is
	for BEH_SYNC
	end for;
end CFG_FD_SYNC;


configuration CFG_FD_ASYNC of FD is
	for BEH_ASYNC
	end for;
end CFG_FD_ASYNC;


