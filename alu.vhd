PACKAGE const IS
	CONSTANT n : INTEGER := 8; -- bits
	CONSTANT m : INTEGER := 2 ** n; -- total de combinacoes
	CONSTANT p : INTEGER := n + 1; -- bits com sinalizacao
	CONSTANT q : INTEGER := 2 ** p; -- total de combinacoes com sinalizacao
END const;

LIBRARY ieee;
USE work.const.ALL;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_std.ALL;

-- MODE:
-- 0: ADD
-- 1: SUB
-- 2: AND
-- 3: XOR

ENTITY alu IS
	PORT (
		a : IN std_logic_vector(n - 1 DOWNTO 0);
		b : IN std_logic_vector(n - 1 DOWNTO 0);

		mode : IN INTEGER RANGE 0 TO 3;

		result : OUT std_logic_vector(n - 1 DOWNTO 0);
		carryBorrow : OUT BIT
	);
END alu;

ARCHITECTURE vhdl OF alu IS
	SIGNAL signedBits : std_logic_vector (p DOWNTO 0);
BEGIN
	PROCESS (a, b, mode)
		VARIABLE intResult : INTEGER;
		VARIABLE intA : INTEGER;
		VARIABLE intB : INTEGER;

	BEGIN
		IF mode = 0 THEN
			intA := to_integer(signed(a));
			intB := to_integer(signed(b));
			intResult := intA + intB;
			IF intResult < m THEN
				carryBorrow <= '0';
				result <= a + b;
			ELSE
				carryBorrow <= '1';
				result <= "00000000";
			END IF;
			-- result <= a - b;
		ELSIF mode = 1 THEN
			intA := to_integer(unsigned(a));
			intB := to_integer(unsigned(b));
			intResult := intA - intB;
			IF intResult >= 0 THEN
				carryBorrow <= '0';
				result <= a - b;
			ELSE
				carryborrow <= '1';
				result <= "00000000";
			END IF;
		ELSIF mode = 2 THEN
			result <= a AND b;
			carryBorrow <= '0';
		ELSIF mode = 3 THEN
			result <= a XOR b;
			carryBorrow <= '0';
		ELSE
			result <= "00000000";
			carryBorrow <= '0';
		END IF;
	END PROCESS;
END vhdl;