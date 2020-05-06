LIBRARY ieee;
USE work.const.ALL;

ENTITY alu_testbench IS
END alu_testbench;

ARCHITECTURE vhdl OF alu_testbench IS
  COMPONENT alu
    PORT (
      a : IN INTEGER RANGE 0 TO m - 1;
      b : IN INTEGER RANGE 0 TO m - 1;
      mode : IN INTEGER RANGE 0 TO 3;
      result : OUT INTEGER RANGE 0 TO m - 1;
      carryBorrow : OUT BIT
    );
  END COMPONENT;

  FOR alu_0 : alu USE ENTITY work.alu;

  SIGNAL a : INTEGER RANGE 0 TO m - 1;
  SIGNAL b : INTEGER RANGE 0 TO m - 1;
  SIGNAL mode : INTEGER RANGE 0 TO 3;
  SIGNAL result : INTEGER RANGE 0 TO m - 1;
  SIGNAL carryBorrow : BIT;

BEGIN
  alu_0 : alu PORT MAP(a => a, b => b, mode => mode, result => result, carryBorrow => carryBorrow);
  PROCESS
    TYPE pattern_type IS RECORD
      a : INTEGER RANGE 0 TO m - 1;
      b : INTEGER RANGE 0 TO m - 1;
      mode : INTEGER RANGE 0 TO 3;
      result : INTEGER RANGE 0 TO m - 1;
      carryBorrow : BIT;
    END RECORD;
    TYPE pattern_array IS ARRAY (NATURAL RANGE <>) OF pattern_type;
    CONSTANT patterns : pattern_array :=
    ((3, 6, 0, 9, '0'),
    (50, 100, 0, 150, '0'),
    (100, 50, 1, 50, '0'));
  BEGIN
    FOR i IN patterns'RANGE LOOP
      a <= patterns(i).a;
      b <= patterns(i).b;
      mode <= patterns(i).mode;
      WAIT FOR 1 ns;
      ASSERT result = patterns(i).result REPORT "Resultado errado" SEVERITY error;
      ASSERT carryBorrow = patterns(i).carryBorrow REPORT "Carry errado" SEVERITY error;
    END LOOP;
    ASSERT false REPORT "Fim do teste" SEVERITY note;

    WAIT;
  END PROCESS;
END vhdl;