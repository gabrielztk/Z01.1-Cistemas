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
		HEX1    : out std_logic_vector(6 downto 0); -- 7seg0
		HEX2    : out std_logic_vector(6 downto 0); -- 7seg0
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

	HEX0 <=  "1000000" when to_integer(unsigned(SW)) rem 10 = 0 else --0
				"1111001" when to_integer(unsigned(SW)) rem 10 = 1 else --1
				"0100100" when to_integer(unsigned(SW)) rem 10 = 2 else --2
				"0110000" when to_integer(unsigned(SW)) rem 10 = 3 else --3
				"0011001" when to_integer(unsigned(SW)) rem 10 = 4 else --4
				"0010010" when to_integer(unsigned(SW)) rem 10 = 5 else --5
				"0000010" when to_integer(unsigned(SW)) rem 10 = 6 else --6
				"1111000" when to_integer(unsigned(SW)) rem 10 = 7 else --7
				"0000000" when to_integer(unsigned(SW)) rem 10 = 8 else --8
				"0011000" when to_integer(unsigned(SW)) rem 10 = 9; --9
				
	HEX1 <=  "1000000" when to_integer(unsigned(SW)) rem 100 < 10 else --0
				"1111001" when to_integer(unsigned(SW)) rem 100 < 20 else --1
				"0100100" when to_integer(unsigned(SW)) rem 100 < 30 else --2
				"0110000" when to_integer(unsigned(SW)) rem 100 < 40 else --3
				"0011001" when to_integer(unsigned(SW)) rem 100 < 50 else --4
				"0010010" when to_integer(unsigned(SW)) rem 100 < 60 else --5
				"0000010" when to_integer(unsigned(SW)) rem 100 < 70 else --6
				"1111000" when to_integer(unsigned(SW)) rem 100 < 80 else --7
				"0000000" when to_integer(unsigned(SW)) rem 100 < 90 else --8
				"0011000" when to_integer(unsigned(SW)) rem 100 < 100; --9
				
	HEX2 <=  "1000000" when to_integer(unsigned(SW)) rem 1000 < 100 else --0
				"1111001" when to_integer(unsigned(SW)) rem 1000 < 200 else --1
				"0100100" when to_integer(unsigned(SW)) rem 1000 < 300 else --2
				"0110000" when to_integer(unsigned(SW)) rem 1000 < 400 else --3
				"0011001" when to_integer(unsigned(SW)) rem 1000 < 500 else --4
				"0010010" when to_integer(unsigned(SW)) rem 1000 < 600 else --5
				"0000010" when to_integer(unsigned(SW)) rem 1000 < 700 else --6
				"1111000" when to_integer(unsigned(SW)) rem 1000 < 800 else --7
				"0000000" when to_integer(unsigned(SW)) rem 1000 < 900 else --8
				"0011000" when to_integer(unsigned(SW)) rem 1000 < 1000; --9

end rtl;
