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

  signal x : std_logic_vector(15 downto 0) := "0000000001000110"; -- 70
  signal y : std_logic_vector(15 downto 0) := "0000000010000010"; -- 130


--------------
-- component
--------------

  COMPONENT ALU
    PORT
      (
        x		:	 IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        y		:	 IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        zx	    :	 IN STD_LOGIC;
        nx	    :	 IN STD_LOGIC;
        zy	    :	 IN STD_LOGIC;
        ny	    :	 IN STD_LOGIC;
        f		    :	 IN STD_LOGIC;
        no	    :	 IN STD_LOGIC;
        ds      :  IN STD_LOGIC;                     -- se 0 shift left, 1 right
        ns      :  IN STD_LOGIC_VECTOR(3 downto 0);  -- número de bits do shift
        zr	    :	 OUT STD_LOGIC;
        ng	    :	 OUT STD_LOGIC;
        saida	:	 OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
  END COMPONENT;

  SIGNAL saida_display : std_logic_vector(15 downto 0);

---------------
-- implementacao
---------------
begin

  ula0: ALU port map (
    x                  => x,
    y                  => y,
    zx                 => SW(0),
    nx                 => SW(1),
    zy                 => SW(2),
    ny                 => SW(3),
    f                  => SW(4),
    no                 => SW(5),
    ds                 => SW(6),
    ns(2 downto 0)     => SW(9 downto 7),
    zr                 => LEDR(8),
    ng                 => LEDR(9),
    saida(15 downto 0) => saida_display,
    ns(3) => Open
   );

     HEX0 <=  "1000000" when to_integer(signed(saida_display)) rem 10 = 0 else --0
        "1111001" when to_integer(signed(saida_display)) rem 10 = 1 else --1
        "0100100" when to_integer(signed(saida_display)) rem 10 = 2 else --2
        "0110000" when to_integer(signed(saida_display)) rem 10 = 3 else --3
        "0011001" when to_integer(signed(saida_display)) rem 10 = 4 else --4
        "0010010" when to_integer(signed(saida_display)) rem 10 = 5 else --5
        "0000010" when to_integer(signed(saida_display)) rem 10 = 6 else --6
        "1111000" when to_integer(signed(saida_display)) rem 10 = 7 else --7
        "0000000" when to_integer(signed(saida_display)) rem 10 = 8 else --8
        "0011000" when to_integer(signed(saida_display)) rem 10 = 9; --9
        
  HEX1 <=  "1000000" when to_integer(signed(saida_display)) rem 100 < 10 else --0
        "1111001" when to_integer(signed(saida_display)) rem 100 < 20 else --1
        "0100100" when to_integer(signed(saida_display)) rem 100 < 30 else --2
        "0110000" when to_integer(signed(saida_display)) rem 100 < 40 else --3
        "0011001" when to_integer(signed(saida_display)) rem 100 < 50 else --4
        "0010010" when to_integer(signed(saida_display)) rem 100 < 60 else --5
        "0000010" when to_integer(signed(saida_display)) rem 100 < 70 else --6
        "1111000" when to_integer(signed(saida_display)) rem 100 < 80 else --7
        "0000000" when to_integer(signed(saida_display)) rem 100 < 90 else --8
        "0011000" when to_integer(signed(saida_display)) rem 100 < 100; --9
        
  HEX2 <=  "1000000" when to_integer(signed(saida_display)) rem 1000 < 100 else --0
        "1111001" when to_integer(signed(saida_display)) rem 1000 < 200 else --1
        "0100100" when to_integer(signed(saida_display)) rem 1000 < 300 else --2
        "0110000" when to_integer(signed(saida_display)) rem 1000 < 400 else --3
        "0011001" when to_integer(signed(saida_display)) rem 1000 < 500 else --4
        "0010010" when to_integer(signed(saida_display)) rem 1000 < 600 else --5
        "0000010" when to_integer(signed(saida_display)) rem 1000 < 700 else --6
        "1111000" when to_integer(signed(saida_display)) rem 1000 < 800 else --7
        "0000000" when to_integer(signed(saida_display)) rem 1000 < 900 else --8
        "0011000" when to_integer(signed(saida_display)) rem 1000 < 1000; --9

end rtl;
