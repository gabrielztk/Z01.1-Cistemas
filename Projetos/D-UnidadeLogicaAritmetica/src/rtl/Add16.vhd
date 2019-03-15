-- Elementos de Sistemas
-- by Luciano Soares
-- Add16.vhd

-- Soma dois valores de 16 bits
-- ignorando o carry mais significativo

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Add16 is
	port(
		a   :  in STD_LOGIC_VECTOR(15 downto 0);
		b   :  in STD_LOGIC_VECTOR(15 downto 0);
		q   : out STD_LOGIC_VECTOR(15 downto 0)
	);
end entity;

architecture rtl of Add16 is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.

  signal w : STD_LOGIC_VECTOR(15 downto 0);

  component FullAdder is
    port(
      a,b,c:      in STD_LOGIC;   -- entradas
      soma,vaium: out STD_LOGIC   -- sum e carry
    );
  end component;

begin
  -- Implementação vem aqui!
  adder0: FullAdder port map (a => a(0),b => b(0), c => '0', soma => q(0), vaium => w(0));
  adder1: FullAdder port map (a => a(1),b => b(1), c => w(0), soma => q(1), vaium => w(1));
  adder2: FullAdder port map (a => a(2),b => b(2), c => w(1), soma => q(2), vaium => w(2));
  adder3: FullAdder port map (a => a(3),b => b(3), c => w(2), soma => q(3), vaium => w(3));
  adder4: FullAdder port map (a => a(4),b => b(4), c => w(3), soma => q(4), vaium => w(4));
  adder5: FullAdder port map (a => a(5),b => b(5), c => w(4), soma => q(5), vaium => w(5));
  adder6: FullAdder port map (a => a(6),b => b(6), c => w(5), soma => q(6), vaium => w(6));
  adder7: FullAdder port map (a => a(7),b => b(7), c => w(6), soma => q(7), vaium => w(7));
  adder8: FullAdder port map (a => a(8),b => b(8), c => w(7), soma => q(8), vaium => w(8));
  adder9: FullAdder port map (a => a(9),b => b(9), c => w(8), soma => q(9), vaium => w(9));
  adder10: FullAdder port map (a => a(10),b => b(10), c => w(9), soma => q(10),vaium =>  w(10));
  adder11: FullAdder port map (a => a(11),b => b(11), c => w(10), soma => q(11),vaium =>  w(11));
  adder12: FullAdder port map (a => a(12),b => b(12), c => w(11), soma => q(12),vaium =>  w(12));
  adder13: FullAdder port map (a => a(13),b => b(13), c => w(12), soma => q(13),vaium =>  w(13));
  adder14: FullAdder port map (a => a(14),b => b(14), c => w(13), soma => q(14),vaium =>  w(14));
  adder15: FullAdder port map (a => a(15),b => b(15), c => w(14), soma => q(15),vaium =>  w(15));


end architecture;
