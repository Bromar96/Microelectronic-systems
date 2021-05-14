library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
--use work.all;

entity cisc_cu is
  generic (
    INSTRUCTIONS_EXECUTION_CYCLES : integer := 3;   -- ID, EXE, MEM (3 clock cycles)                                                  
    MICROCODE_MEM_SIZE            : integer := 64;  -- Microcode Memory Size (only 57=19x3 actually used)
    DECODER_SIZE                  : integer := 19;  -- Decoder size (19=57:3)                                                   
    OP_CODE_SIZE : integer := 6;        -- Op Code Size
    ALU_OPC_SIZE : integer := 2;        -- ALU Op Code Word Size
    IR_SIZE      : integer := 32;       -- Instruction Register Size
    FUNC_SIZE    : integer := 11;       -- Func Field Size for R-Type Ops
    CW_SIZE      : integer := 13);      -- Control Word Size

  port (
    Clk             : in  std_logic;    -- Clock
    Rst             : in  std_logic;    -- Reset:Active-Low
    -- Instruction Register
    IR_IN           : in std_logic_vector(IR_SIZE - 1 downto 0);
    -- ID Control Signals
    RF1: out std_logic;
    RF2: out std_logic;
    EN1: out std_logic;
    -- EX Control Signals
    S1: out std_logic;
    S2: out std_logic;
    ALU1:   out std_logic;
    ALU2:   out std_logic;
    EN2:    out std_logic;
    -- MEM Control Signals
    RM: out std_logic;
    WM: out std_logic;
    EN3:    out std_logic;
    -- WB Control signals
    S3: out std_logic;
    WF1:    out std_logic
    );

end cisc_cu;

architecture dlx_cu_rtl of cisc_cu is

  type dec_array is array (0 to DECODER_SIZE - 1) of unsigned(OP_CODE_SIZE +1 downto 0); --19x8
  type mem_array is array (integer range 0 to MICROCODE_MEM_SIZE - 1) of std_logic_vector(CW_SIZE - 1 downto 0); --64x13  

  signal decoder : dec_array 	     := (X"00",	-- ADD                                               
                                         X"03",	-- SUB
                                         X"06",	-- AND
                                         X"09",	-- 0R

                                         X"0C",	-- ADDI1
                                         X"0F",	-- SUBI1
                                         X"12",	-- ANDI1
                                         X"15",	-- ORI1

                                         X"18",	-- ADDI2
                                         X"1B",	-- SUBI2
                                         X"1E",	-- ANDI2
                                         X"21",	-- ORI2

                                         X"24",	-- MOV

                                         X"27",	-- S_REG1
                                         X"2A",	-- S_REG2

                                         X"2D",	-- S_MEM2

                                         X"30",	-- L_MEM1
                                         X"33",	-- L_MEM2

                                         X"36"	-- NOP
                                         );

  signal microcode : mem_array := ("1110000000000",  -- ADD(ID)
                                   "0000100100000",  -- ADD(EX)
                                   "0000000000001",  -- ADD(MEM)

		                   						"1110000000000",  -- SUB(ID)
		                   						"0000101100000",  -- SUB(EX)
		                   						"0000000000001",  -- SUB(MEM)

                                  "1110000000000",  -- AND(ID)
		                   						"0000110100000",  -- AND(EX)
		                   						"0000000000001",  -- AND(MEM)

                                  "1110000000000",  -- OR(ID)
		                   						"0000111100000",  -- OR(EX)
		                   						"0000000000001",  -- OR(MEM)

                                  "0110000000000",  -- ADDI1(ID)
		                   						"0001000100000",  -- ADDI1(EX)
		                   						"0000000000001",  -- ADDI1(MEM)

                                  "0110000000000",  -- SUBI1(ID)
		                   						"0001001100000",  -- SUBI1(EX)
		                   						"0000000000001",  -- SUBI1(MEM)

                                  "0110000000000",  -- ANDI1(ID)
		                   						"0001010100000",  -- ANDI1(EX)
		                   						"0000000000001",  -- ANDI1(MEM)

                                  "0110000000000",  -- ORI1(ID)
		                   						"0001011100000",  -- ORI1(EX)
		                   						"0000000000001",  -- ORI1(MEM)

                                  "1010000000000",  -- ADDI2(ID)
		                   						"0000000100000",  -- ADDI2(EX)
		                   						"0000000000001",  -- ADDI2(MEM)

                                  "1010000000000",  -- SUBI2(ID)
		                   						"0000001100000",  -- SUBI2(EX)
		                   						"0000000000001",  -- SUBI2(MEM)

                                  "1010000000000",  -- ANDI2(ID)
		                   						"0000010100000",  -- ANDI2(EX)
		                   						"0000000000001",  -- ANDI2(MEM)

                                  "1010000000000",  -- ORI2(ID)
		                   						"0000011100000",  -- ORI2(EX)
		                   						"0000000000001",  -- ORI2(MEM)

                                  "1010000000000",  -- MOV(ID)
		                   						"0000000100000",  -- MOV(EX)
		                   						"0000000000001",  -- MOV(MEM)

                                  "1010000000000",  -- S_REG1(ID)
		                   						"0001000100000",  -- S_REG1(EX)
		                   						"0000000000001",  -- S_REG1(MEM)

                                  "1010000000000",  -- S_REG2(ID)
		                   						"0000000100000",  -- S_REG2(EX)
		                   						"0000000000001",  -- S_REG2(MEM)

                                  "1110000000000",  -- S_MEM2(ID)
		                   						"0000000100000",  -- S_MEM2(EX)
		                   						"0000000001101",  -- S_MEM2(MEM)

                                  "0110000000000",  -- L_MEM1(ID)
		                   						"0001100100000",  -- L_MEM1(EX)
		                   						"0000000010111",  -- L_MEM1(MEM)

                                  "1010000000000",  -- L_MEM2(ID)
		                    					"0001000100000",  -- L_MEM2(EX)
		                   						"0000000010111",  -- L_MEM2(MEM)

				   												"0000000000000",  -- NOP(ID)
		                   						"0000000000000",  -- NOP(EX)
		                   						"0000000000000",  -- NOP(MEM)


		                   "0000000000000",
		                   "0000000000000",
		                   "0000000000000",
		                   "0000000000000",
		                   "0000000000000",
		                   "0000000000000",
		                   "0000000000000"
		                   );

    --IR_FUNC
  CONSTANT ADD: STD_LOGIC_VECTOR(FUNC_SIZE -1 DOWNTO 0):= "00000000000";
  CONSTANT SUB: STD_LOGIC_VECTOR(FUNC_SIZE -1 DOWNTO 0):= "00000000001";
  CONSTANT AND1: STD_LOGIC_VECTOR(FUNC_SIZE -1 DOWNTO 0):="00000000010";
  CONSTANT OR1: STD_LOGIC_VECTOR(FUNC_SIZE -1 DOWNTO 0):= "00000000011";
	signal IR_opcode : unsigned(OP_CODE_SIZE -1 downto 0);
	signal IR_func : unsigned(FUNC_SIZE - 1 downto 0);
	signal mem_address : unsigned(OP_CODE_SIZE +1 downto 0); -- output of the decoder that contains address to the mem_array

  signal cw : std_logic_vector(CW_SIZE - 1 downto 0);
  signal uPC : unsigned(OP_CODE_SIZE +1 downto 0);
  
  
  signal OpCode_Reloc : unsigned(OP_CODE_SIZE + 1 downto 0);
  
  constant R_OPCODE : unsigned(OP_CODE_SIZE -1 downto 0) := "000000";
                                                        
  

begin  -- dlx_cu_rtl

  	--Distinguere tra I-Type, R-Type
  	process(IR_IN)
  		begin
    		if IR_IN(31 downto 26) = "000000" then
        		--R-Type
        		IR_func <= unsigned(IR_IN(FUNC_SIZE -1 downto 0));
        		IR_opcode<=(others=>'0');
    		else
      			--I-Type
      			IR_func <= (others=>'0');
      			IR_opcode<= unsigned(IR_IN(31 downto 26));
    		end if;
  	end process;


  --mem_array access
  process(clk,rst)
  begin
    
    if rst='1' then
        mem_address<=decoder(18);	-- no operation
																	-- after rst signal, we should wait three clock cycles due to the nop instruction
    elsif rising_edge(clk) then
        if (IR_opcode ="000000") then
                if (IR_func=unsigned(ADD)) then
                    mem_address<=decoder(0);	--ADD
                elsif (IR_func=unsigned(SUB)) then
                    mem_address<=decoder(1);	--SUB
                elsif (IR_func=unsigned(AND1)) then
                    mem_address<=decoder(2);	--AND
                else 
                    mem_address<=decoder(3);	--OR
               end if;
        
           elsif (IR_opcode ="000101") then
                mem_address<=decoder(4); --ADDI1
            
           elsif (IR_opcode ="001001") then
                mem_address<=decoder(5); --SUBI1
            
           elsif (IR_opcode ="001101" ) then
               mem_address<=decoder(6); --ANDI1
            
          elsif (IR_opcode = "010001") then
               mem_address<=decoder (7); --ORI1
            
          elsif (IR_opcode ="010101") then
                mem_address<=decoder (8); --ADDI2  
            
          elsif (IR_opcode ="011001") then
                mem_address<=decoder(9); --SUBI2
            
          elsif (IR_opcode ="011101") then
                mem_address<=decoder(10); --ANDI2
            
          elsif (IR_opcode ="100001") then
                mem_address<=decoder(11); --ORI2
            
          elsif (IR_opcode ="100101") then
                mem_address<=decoder(12); --MOV
            
          elsif( IR_opcode ="101001") then
                mem_address<=decoder(13); --S_REG1
            
          elsif (IR_opcode ="101101") then
                mem_address<=decoder(14); --S_REG2
            
          elsif (IR_opcode ="110001") then
                mem_address<=decoder(15); --S_MEM2
            
          elsif (IR_opcode ="110101") then
                mem_address<=decoder(16); --L_MEM1       
    
          elsif (IR_opcode ="000001") then
                mem_address<=decoder(17); --L_MEM2
            
          elsif (IR_opcode ="111111") then
                mem_address<=decoder(18); -- NOP  
                
          else
                mem_address<=decoder(18); -- NOP   
        end if;
     end if;
  end process;
	
	--program counter register, async reset	
	process(clk,rst)
	variable count: integer;
	begin
		if rst='1' then
			uPC<=decoder(18);
			count:=1;
		elsif rising_edge(clk) then
			if count < INSTRUCTIONS_EXECUTION_CYCLES then
			     uPC<=uPC + 1;
			     count:=count + 1;
			else
			     uPC<= mem_address;
			     count:=1;
			end if; 
		end if;
	end process;



  	--microcode memory access
  	cw <= std_logic_vector(microcode(to_integer(uPC)));
	
  	-- ID Control Signals
    RF1<= cw(CW_SIZE-1);
    RF2<= cw(CW_SIZE-2);
    EN1<= cw(CW_SIZE-3);
    -- EX Control Signals
    S1<= cw(CW_SIZE-4);
    S2<= cw(CW_SIZE-5);
    ALU1<=   cw(CW_SIZE-6);
    ALU2<=   cw(CW_SIZE-7);
    EN2<=    cw(CW_SIZE-8);
    -- MEM Control Signals
    RM<= cw(CW_SIZE-9);
    WM<= cw(CW_SIZE-10);
    EN3<=    cw(CW_SIZE-11);

    -- WB Control signals
    S3<= cw(CW_SIZE-12);
    WF1<=    cw(CW_SIZE-13);


end dlx_cu_rtl;

configuration CFG_UP_CU of cisc_cu is
	for dlx_cu_rtl 
	end for;
end CFG_UP_CU;
