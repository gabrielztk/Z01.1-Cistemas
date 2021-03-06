--
-- Elementos de Sistemas - Aula 5 - Logica Combinacional
-- Rafael . Corsi @ insper . edu . br 
--
-- Arquivo exemplo para acionar os LEDs e ler os bottoes
-- da placa DE0-CV utilizada no curso de elementos de 
-- sistemas do 3s da eng. da computacao

----------------------------
-- Bibliotecas ieee       --
----------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

----------------------------
-- Entrada e saidas do bloco
----------------------------
entity TopLevel is
	port(
		SW      : in  std_logic_vector(9 downto 0);
		HEX0    : out std_logic_vector(6 downto 0); -- 7seg0
		HEX1    : out std_logic_vector(6 downto 0); -- 7seg1
		HEX2    : out std_logic_vector(6 downto 0); -- 7seg2
		LEDR    : out std_logic_vector(9 downto 0)
	);
end entity;

----------------------------
-- Implementacao do bloco -- 
----------------------------
architecture rtl of TopLevel is

--------------
-- signals
--------------

---------------
-- implementacao
---------------
begin

	HEX0 <=  "1000000" when SW(0) = '0' and SW(1) = '0' and SW(2) = '0' and SW(3) = '0' else --0
				"1111001" when SW(0) = '1' and SW(1) = '0' and SW(2) = '0' and SW(3) = '0' else --1
				"0100100" when SW(0) = '0' and SW(1) = '1' and SW(2) = '0' and SW(3) = '0' else --2
				"0110000" when SW(0) = '1' and SW(1) = '1' and SW(2) = '0' and SW(3) = '0' else --3
				"0011001" when SW(0) = '0' and SW(1) = '0' and SW(2) = '1' and SW(3) = '0' else --4
				"0010010" when SW(0) = '1' and SW(1) = '0' and SW(2) = '1' and SW(3) = '0' else --5
				"0000010" when SW(0) = '0' and SW(1) = '1' and SW(2) = '1' and SW(3) = '0' else --6
				"1111000" when SW(0) = '1' and SW(1) = '1' and SW(2) = '1' and SW(3) = '0' else --7
				"0000000" when SW(0) = '0' and SW(1) = '0' and SW(2) = '0' and SW(3) = '1' else --8
				"0011000" when SW(0) = '1' and SW(1) = '0' and SW(2) = '0' and SW(3) = '1' else --9
				"0001000" when SW(0) = '0' and SW(1) = '1' and SW(2) = '0' and SW(3) = '1' else --a
				"0000011" when SW(0) = '1' and SW(1) = '1' and SW(2) = '0' and SW(3) = '1' else --b
				"1000110" when SW(0) = '0' and SW(1) = '0' and SW(2) = '1' and SW(3) = '1' else --c
				"0100001" when SW(0) = '1' and SW(1) = '0' and SW(2) = '1' and SW(3) = '1' else --d
				"0000110" when SW(0) = '0' and SW(1) = '1' and SW(2) = '1' and SW(3) = '1' else --e
				"0001110" when SW(0) = '1' and SW(1) = '1' and SW(2) = '1' and SW(3) = '1'; --f
				
	HEX1 <=  "1000000" when SW(4) = '0' and SW(5) = '0' and SW(6) = '0' and SW(7) = '0' else --0
				"1111001" when SW(4) = '1' and SW(5) = '0' and SW(6) = '0' and SW(7) = '0' else --1
				"0100100" when SW(4) = '0' and SW(5) = '1' and SW(6) = '0' and SW(7) = '0' else --2
				"0110000" when SW(4) = '1' and SW(5) = '1' and SW(6) = '0' and SW(7) = '0' else --3
				"0011001" when SW(4) = '0' and SW(5) = '0' and SW(6) = '1' and SW(7) = '0' else --4
				"0010010" when SW(4) = '1' and SW(5) = '0' and SW(6) = '1' and SW(7) = '0' else --5
				"0000010" when SW(4) = '0' and SW(5) = '1' and SW(6) = '1' and SW(7) = '0' else --6
				"1111000" when SW(4) = '1' and SW(5) = '1' and SW(6) = '1' and SW(7) = '0' else --7
				"0000000" when SW(4) = '0' and SW(5) = '0' and SW(6) = '0' and SW(7) = '1' else --8
				"0011000" when SW(4) = '1' and SW(5) = '0' and SW(6) = '0' and SW(7) = '1' else --9
				"0001000" when SW(4) = '0' and SW(5) = '1' and SW(6) = '0' and SW(7) = '1' else --a
				"0000011" when SW(4) = '1' and SW(5) = '1' and SW(6) = '0' and SW(7) = '1' else --b
				"1000110" when SW(4) = '0' and SW(5) = '0' and SW(6) = '1' and SW(7) = '1' else --c
				"0100001" when SW(4) = '1' and SW(5) = '0' and SW(6) = '1' and SW(7) = '1' else --d
				"0000110" when SW(4) = '0' and SW(5) = '1' and SW(6) = '1' and SW(7) = '1' else --e
				"0001110" when SW(4) = '1' and SW(5) = '1' and SW(6) = '1' and SW(7) = '1'; --f
				
	HEX2 <=  "1000000" when SW(8) = '0' and SW(9) = '0' else --0
				"1111001" when SW(8) = '0' and SW(9) = '1' else --1
				"0100100" when SW(8) = '1' and SW(9) = '0' else --2
				"0110000" when SW(8) = '1' and SW(9) = '1'; --3

	


end rtl;
