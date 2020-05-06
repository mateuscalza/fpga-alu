PACKAGE const IS
	CONSTANT n : INTEGER := 8; -- bits
	CONSTANT m : INTEGER := 2 ** n; -- total de combinacoes
	CONSTANT p : INTEGER := n + 1; -- bits com sinalizacao
	CONSTANT q : INTEGER := 2 ** p; -- total de combinacoes com sinalizacao
END const;

LIBRARY ieee;
USE work.const.ALL;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
USE std.textio.ALL;

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
BEGIN PROCESS (a, b, mode)

	VARIABLE rr : INTEGER RANGE 0 TO q - 1;
	VARIABLE l : line;

BEGIN
	IF mode = 0 THEN
		rr := a + b;
	END IF;

	IF rr < m THEN
		result <= rr;
		carryBorrow <= '0';
	ELSE
		result <= rr - m;
		carryBorrow <= '1';
	END IF;
END PROCESS;
END vhdl;