PACKAGE const IS
	CONSTANT n : INTEGER := 8; -- bits
	CONSTANT m : INTEGER := 2 ** n; -- total de combinacoes
	CONSTANT p : INTEGER := n + 1; -- bits com sinalizacao
	CONSTANT q : INTEGER := 2 ** p; -- total de combinacoes com sinalizacao
END const;

LIBRARY ieee;
USE work.const.ALL;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

-- MODE:
-- 0: ADD
-- 1: SUB
-- 2: AND
-- 3: XOR

ENTITY alu IS
	PORT (
		a : IN INTEGER RANGE 0 TO m - 1;
		b : IN INTEGER RANGE 0 TO m - 1;

		mode : IN INTEGER RANGE 0 TO 3;

		result : OUT INTEGER RANGE 0 TO m - 1;
		carryBorrow : OUT BIT
	);
END alu;

ARCHITECTURE vhdl OF alu IS
	SIGNAL vector_a : std_logic_vector(m - 1 DOWNTO 0);
	SIGNAL vector_b : std_logic_vector(m - 1 DOWNTO 0);
	SIGNAL vector_result : std_logic_vector(m - 1 DOWNTO 0);
BEGIN
	PROCESS (a, b, mode)
		VARIABLE rr : INTEGER RANGE 0 TO q - 1;

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
			vector_a <= std_logic_vector(to_unsigned(a, vector_a'length));
			vector_b <= std_logic_vector(to_unsigned(a, vector_a'length));
			vector_result <= vector_a AND vector_b;
			result <= to_integer(signed(vector_result));
		ELSIF mode = 3 THEN
			vector_a <= std_logic_vector(to_unsigned(a, vector_a'length));
			vector_b <= std_logic_vector(to_unsigned(a, vector_a'length));
			vector_result <= vector_a XOR vector_b;
			result <= to_integer(signed(vector_result));
		END IF;

	END PROCESS;
END vhdl;