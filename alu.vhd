package const is
	constant n: integer := 8; -- bits
	constant m: integer := 2**n; -- total de combinacoes
	constant p: integer := n+1; -- bits com sinalizacao
	constant q: integer := 2**p; -- total de combinacoes com sinalizacao
end const;

library ieee;
use work.const.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use std.textio.all;

entity ALU is
	port (
		a: in integer range 0 to m-1;
		b: in integer range 0 to m-1;
		mode: in integer range 0 to 3;
		result: out integer range 0 to m-1;
		carryBorrow: out bit
	);
end ALU;

architecture VHDL of ALU is
	begin process (a, b, mode)

	variable rr: integer range 0 to q-1;
	variable l : line;
	
	begin

		write(l, String'("a: "));
		writeline(output, l);
		write(l, a);
		writeline(output, l);

		write(l, String'("b: "));
		writeline(output, l);
		write(l, b);
		writeline(output, l);
		
		write(l, String'("mode: "));
		writeline(output, l);
		write(l, mode);
		writeline(output, l);
		
		if mode = 0 then
			rr := a + b;
		end if;
		
		if rr < m then
			result <= rr;
			carryBorrow <= '0';
		else
			result <= rr - m;
			carryBorrow <= '1';
		end if;
	end process;
end VHDL;
