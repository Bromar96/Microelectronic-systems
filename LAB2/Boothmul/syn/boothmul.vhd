library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
use WORK.constants.all;

entity BOOTHMUL is
	generic (	NBIT 	  : integer 	:= numBit);
	port (		A_mp 			: IN  std_logic_vector (NBIT-1 downto 0);
			B_mp 			: IN  std_logic_vector (NBIT-1 downto 0);
			Y_mp 			: OUT std_logic_vector (2*NBIT-1 downto 0));
end BOOTHMUL;

architecture STRUCTURAL of BOOTHMUL is
	
	component SETTLER
	generic (	NBIT 	  : integer 	:= numBit);
	port	(	A  			: IN  std_logic_vector (NBIT-1 downto 0);
			Y0,Y1,Y2,Y3,Y4,Y5	: OUT std_logic_vector (NBIT-1 downto 0));
	end component;
	
	component MUX51_GENERIC
	generic (	NBIT 	  : integer 	:= numBit
			--DELAY_MUX : time 	:= TP_MUX
					);

	port	(	A0,A1,A2,A3,A4   	: IN  std_logic_vector (NBIT-1 downto 0);
			SEL		 	: IN  std_logic_vector (2 downto 0);
			Y		 	: OUT std_logic_vector (NBIT-1 downto 0));
	end component;

	component ENC3TO3
	port (		X 			: IN  std_logic_vector (2 downto 0);
			Y 			: OUT std_logic_vector (2 downto 0));
	end component;

	component RCA
    	generic(	size	  : integer	:= NumBit);
        		--delay_s	  : time	:= DRCAS;
        		--delay_c	  : time	:= DRCAC);
   	port(
        		a			: IN std_logic_vector(size-1 downto 0);
        		b			: IN std_logic_vector(size-1 downto 0);
			c_in			: IN std_logic;
        		c_out			: OUT std_logic;
        		sum			: OUT std_logic_vector(size-1 downto 0));
	end component;
	
	type enc_matrix is array (0 to (((NBIT/2)-1) + NBIT MOD 2), 0 to 1) of std_logic_vector (2 downto 0);		-- (i)(0)-> enc_in (i)(1)->enc_out
	type set_matrix is array (0 to (((NBIT/2)-1) + NBIT MOD 2), 0 to 6) of std_logic_vector ((2*NBIT-1 + 2*(NBIT MOD 2)) downto 0);	-- signals in and out the settler
	type rca_matrix is array (0 to ((NBIT/2) + NBIT MOD 2), 0 to 1) of std_logic_vector ((2*NBIT-1 + 2*(NBIT MOD 2)) downto 0);			
	
	signal enc_signal 	: enc_matrix;
	signal set_signal	: set_matrix;
	signal rca_signal 	: rca_matrix;
	signal temp_result 	: std_logic_vector (2*NBIT-1 + 2*(NBIT MOD 2) downto 0);	-- in case of NBIT odd, B_mp is extended and the temporary result
												-- has got more bits than necessary 	
	
begin
	set_signal(0,0) <= std_logic_vector(resize(signed(A_mp), (2*NBIT + 2*(NBIT MOD 2))));	-- extend the sign of A to that of the result

	gen0 : for i in 0 to ( ((NBIT/2)-1) + (NBIT MOD 2) ) generate

			if0 : if (i = 0) generate	-- there is no rca here

					enc_signal(i,0) <= B_mp(i+1 downto 0) & '0';	-- B_mp(-1) does not exist
					enc0 : ENC3TO3 		port map (X=>enc_signal(i,0), Y=>enc_signal(i,1));
					set0 : SETTLER		generic map (2*NBIT + 2*(NBIT MOD 2)) port map (A=>set_signal(i,0),
									Y0=>set_signal(i,1), Y1=>set_signal(i,2), Y2=>set_signal(i,3), 
									Y3=>set_signal(i,4), Y4=>set_signal(i,5), Y5=>set_signal(i,6));
					mux0 : MUX51_GENERIC 	generic map (2*NBIT + 2*(NBIT MOD 2)) port map (A0=>set_signal(i,1),
									A1=>set_signal(i,2), A2=>set_signal(i,3), A3=>set_signal(i,4),
									A4=>set_signal(i,5), SEL=>enc_signal(i,1), Y=>rca_signal(i+1,1));
			end generate;
			
			if1 : if (i > 0 AND (2*i+1 <= NBIT-1)) generate		
						
					enc_signal(i,0) <= B_mp(2*i+1 downto 2*i-1);
					enci : ENC3TO3 		port map (X=>enc_signal(i,0), Y=>enc_signal(i,1));
					seti : SETTLER		generic map (2*NBIT + 2*(NBIT MOD 2)) port map (A=>set_signal(i-1,6), 
									Y0=>set_signal(i,1), Y1=>set_signal(i,2), Y2=>set_signal(i,3), 
									Y3=>set_signal(i,4), Y4=>set_signal(i,5), Y5=>set_signal(i,6));
					muxi : MUX51_GENERIC 	generic map (2*NBIT + 2*(NBIT MOD 2)) port map (A0=>set_signal(i,1),
									A1=>set_signal(i,2), A2=>set_signal(i,3), A3=>set_signal(i,4),
									A4=>set_signal(i,5), SEL=>enc_signal(i,1), Y=>rca_signal(i,0));
					rcai : RCA		generic map (2*NBIT + 2*(NBIT MOD 2)) port map (A=>rca_signal(i,0), B=>rca_signal(i,1), 
													C_IN=>'0', SUM=>rca_signal(i+1,1));
			end generate;

			if2 : if (i > 0 AND (2*i+1 > NBIT-1)) generate	-- B_mp(NBIT) does not exist

					enc_signal(i,0) <= '0' & B_mp(2*i downto 2*i-1);
					enci : ENC3TO3 		port map (X=>enc_signal(i,0), Y=>enc_signal(i,1));
					seti : SETTLER		generic map (2*NBIT + 2*(NBIT MOD 2)) port map (A=>set_signal(i-1,6), 
									Y0=>set_signal(i,1), Y1=>set_signal(i,2), Y2=>set_signal(i,3), 
									Y3=>set_signal(i,4), Y4=>set_signal(i,5), Y5=>set_signal(i,6));
					muxi : MUX51_GENERIC 	generic map (2*NBIT + 2*(NBIT MOD 2)) port map (A0=>set_signal(i,1),
									A1=>set_signal(i,2), A2=>set_signal(i,3), A3=>set_signal(i,4),
									A4=>set_signal(i,5), SEL=>enc_signal(i,1), Y=>rca_signal(i,0));
					rcai : RCA		generic map (2*NBIT + 2*(NBIT MOD 2)) port map (A=>rca_signal(i,0), B=>rca_signal(i,1), 
													C_IN=>'0', SUM=>rca_signal(i+1,1));
			end generate;
			
	end generate;

	temp_result <= (rca_signal((NBIT/2 + NBIT MOD 2),1));
	Y_mp <= temp_result(2*NBIT-1 downto 0);

end STRUCTURAL;

configuration CFG_BOOTHMUL_STRUCTURAL of BOOTHMUL is
	for STRUCTURAL
		for gen0
			for if0
				for all : ENC3TO3
					use configuration work.CFG_ENC3TO3_BEHAVIORAL;
				end for;
				for all : SETTLER
					use configuration work.CFG_SETTLER_BEHAVIORAL;
				end for;
				for all : MUX51_GENERIC
					use configuration work.CFG_MUX51_GENERIC_STRUCTURAL;
				end for;
			end for;
			for if1
				for all : ENC3TO3
					use configuration work.CFG_ENC3TO3_BEHAVIORAL;
				end for;
				for all : SETTLER
					use configuration work.CFG_SETTLER_BEHAVIORAL;
				end for;
				for all : MUX51_GENERIC
					use configuration work.CFG_MUX51_GENERIC_STRUCTURAL;
				end for;
				for all : RCA
					use configuration work.RCA_STR;
				end for;
			end for;
			for if2
				for all : ENC3TO3
					use configuration work.CFG_ENC3TO3_BEHAVIORAL;
				end for;
				for all : SETTLER
					use configuration work.CFG_SETTLER_BEHAVIORAL;
				end for;
				for all : MUX51_GENERIC
					use configuration work.CFG_MUX51_GENERIC_STRUCTURAL;
				end for;
				for all : RCA
					use configuration work.RCA_STR;
				end for;
			end for;
		end for;
	end for;
end CFG_BOOTHMUL_STRUCTURAL;
