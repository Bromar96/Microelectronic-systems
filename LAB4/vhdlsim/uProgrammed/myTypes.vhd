
				-- this file is used in the uProgrammed version of the CU

library ieee;
use ieee.std_logic_1164.all;

package myTypes is

-- Control unit input sizes
    constant OP_CODE_SIZE : integer :=  6;                                              -- OPCODE field size
    constant FUNC_SIZE    : integer :=  11;                                             -- FUNC field size

-- R-Type instruction -> FUNC field
    constant RTYPE_ADD : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000000000";    -- ADD RS1,RS2,RD
    constant RTYPE_SUB : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000000001";    -- SUB RS1,RS2,RD
		constant RTYPE_AND : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000000010";		-- AND
		constant RTYPE_OR  : std_logic_vector(FUNC_SIZE - 1 downto 0) :=  "00000000011";		-- OR

-- R-Type instruction -> OPCODE field
    constant RTYPE : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "000000";          -- for ADD, SUB, AND, OR register-to-register operation



-- I-Type instruction -> OPCODE field
    constant ITYPE_ADDI1 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "000101";    -- ADDI1 RS1,RD,INP1
    constant ITYPE_SUBI1 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "001001";
		constant ITYPE_ORI1 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=   "010001";
		constant ITYPE_ANDI1 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "001101";
		constant ITYPE_ADDI2 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "010101";
		constant ITYPE_SUBI2 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "011001";
		constant ITYPE_ORI2 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=   "100001";
		constant ITYPE_ANDI2 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "011101";
		constant ITYPE_MOV : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=    "100101";
		constant ITYPE_S_REG1 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "101001";
		constant ITYPE_S_REG2 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "101101";
    constant ITYPE_S_MEM2 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "110001";
		constant ITYPE_L_MEM1 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "110101";
		constant ITYPE_L_MEM2 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) := "000001";
		constant ITYPE_NOP : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=    "111111";


		constant ITYPE_R1 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=     "000000"; --not used
		constant ITYPE_R2 : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=     "000000";  --not used
		constant ITYPE_IMMEDIATE : std_logic_vector(OP_CODE_SIZE - 1 downto 0) :=  "000000"; --not used




end myTypes;

