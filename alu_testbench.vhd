LIBRARY ieee;
USE work.const.ALL;
USE ieee.std_logic_1164.ALL;

ENTITY alu_testbench IS
END alu_testbench;

ARCHITECTURE vhdl OF alu_testbench IS
  COMPONENT alu
    PORT (
      a : IN std_logic_vector(n - 1 DOWNTO 0);
      b : IN std_logic_vector(n - 1 DOWNTO 0);
      mode : IN INTEGER RANGE 0 TO 3;
      result : OUT std_logic_vector(n - 1 DOWNTO 0);
      carryBorrow : OUT BIT
    );
  END COMPONENT;

  FOR alu_0 : alu USE ENTITY work.alu;

  SIGNAL a : std_logic_vector(n - 1 DOWNTO 0);
  SIGNAL b : std_logic_vector(n - 1 DOWNTO 0);
  SIGNAL mode : INTEGER RANGE 0 TO 3;
  SIGNAL result : std_logic_vector(n - 1 DOWNTO 0);
  SIGNAL carryBorrow : BIT;

BEGIN
  alu_0 : alu PORT MAP(a => a, b => b, mode => mode, result => result, carryBorrow => carryBorrow);
  PROCESS
    TYPE pattern_type IS RECORD
      a : std_logic_vector(n - 1 DOWNTO 0);
      b : std_logic_vector(n - 1 DOWNTO 0);
      mode : INTEGER RANGE 0 TO 3;
      result : std_logic_vector(n - 1 DOWNTO 0);
      carryBorrow : BIT;
    END RECORD;
    TYPE pattern_array IS ARRAY (NATURAL RANGE <>) OF pattern_type;
    CONSTANT patterns : pattern_array :=
    (
    ("00011011", "00000111", 0, "00100010", '0'),
    ("00000111", "00000011", 1, "00000100", '0'),
    ("00000111", "00011011", 2, "00000011", '0'),
    ("00000001", "00000111", 3, "00000110", '0')
    );
  BEGIN
    FOR i IN patterns'RANGE LOOP
      a <= patterns(i).a;
      b <= patterns(i).b;
      mode <= patterns(i).mode;
      WAIT FOR 1 ns;

      ASSERT result = patterns(i).result AND carryBorrow = patterns(i).carryBorrow
      REPORT "Ocorreu um problema! Onde A = "
        & to_hstring(a)
        & ", B = "
        & to_hstring(b)
        & ", MODE = "
        & INTEGER'image(mode) SEVERITY error;

      ASSERT result = patterns(i).result
      REPORT "Resultado errado = "
        & to_hstring(result)
        & ", resultado esperado = "
        & to_hstring(patterns(i).result) SEVERITY error;

      ASSERT carryBorrow = patterns(i).carryBorrow
      REPORT "Carry/borrow errado = "
        & BIT'image(carryBorrow)
        & ", carry/borrow esperado = "
        & BIT'image(patterns(i).carryBorrow) SEVERITY error;
    END LOOP;
    ASSERT false REPORT "Fim do teste" SEVERITY note;

    WAIT;
  END PROCESS;
END vhdl;