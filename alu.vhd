library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

package const is
	constant n: integer := 8; -- bits
	constant m: integer := 2**n; -- total de combinacoes
	constant p: integer := n+1; -- bits com sinalizacao
	constant q: integer := 2**p; -- total de combinacoes com sinalizacao
end const;

use work.const.all;

entity ALU is
	port (
		a: in integer range 0 to m-1;
		b: in integer range 0 to m-1;
		add: in bit; -- modo
		result: out integer range 0 to m-1;
		carryBorrow: out bit
	);
end ALU;

architecture VHDL of ALU is
	begin process (a, b, add) variable rr: integer range 0 to q-1;
	
	begin if add = '0' then
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
