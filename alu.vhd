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
BEGIN
	PROCESS (a, b, mode)
		VARIABLE rr : std_logic_vector(n - 1 DOWNTO 0);

	BEGIN
		IF mode = 0 THEN
			rr := a + b;

			IF rr < m THEN
				result <= rr;
				carryBorrow <= '0';
			ELSE
				result <= rr - m;
				carryBorrow <= '1';
			END IF;
		ELSIF mode = 1 THEN
			rr := a - b;

			IF rr < m THEN
				result <= rr;
				carryBorrow <= '0';
			ELSE
				result <= rr - m;
				carryBorrow <= '1';
			END IF;
		ELSIF mode = 2 THEN
			result <= a AND b;
		ELSIF mode = 3 THEN
			result <= a XOR b;
		END IF;

	END PROCESS;
END vhdl;