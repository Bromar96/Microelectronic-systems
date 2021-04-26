package CONSTANTS is
	 --GATE DELAYS
   constant IVDELAY : time := 0.0 ns;
   constant NDDELAY : time := 0.0 ns;
   constant NDDELAYRISE : time := 0.0 ns;
   constant NDDELAYFALL : time := 0.0 ns;
   constant NRDELAY : time := 0.0 ns;
   constant DRCAS : time := 0.0 ns;
   constant DRCAC : time := 0.0 ns;
	 constant TP_MUX : time := 0.0 ns;
	 
	 --GENERICS
	 --also dimension of word in register file
   constant NumBit : integer := 32;	
	 --P4 adder block size
   constant NumBitBlock: integer := 4;
   --Size for window block GLOB/IN/LOC/OUT
	 constant NREG_BLOCK: integer := 8;
	 constant NWINDOWS: integer :=3;
	 constant PHY_SIZE: integer := (2*NREG_BLOCK*NWINDOWS + 2*NWINDOWS);
	 --dimension of register file seen by processor
	 constant VIRTUAL_SIZE: integer := 32; 
	 --log2(VIRTUAL_SIZE)
	 constant VIRTUAL_ADDR: integer := 5; 
	 --log2(PHY_SIZE)
   constant PHY_ADDR: integer := 6; 

end CONSTANTS;
