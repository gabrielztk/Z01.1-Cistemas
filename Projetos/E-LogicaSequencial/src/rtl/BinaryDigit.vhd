-- Elementos de Sistemas
-- by Luciano Soares
-- BinaryDigit.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity BinaryDigit is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC;
		load:    in STD_LOGIC;
		output: out STD_LOGIC
	);
end entity;

architecture rtl of BinaryDigit is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.

	component FlipFlopD IS
		port(
			clock:  in std_logic;
			d:      in std_logic;
			clear:  in std_logic;
			preset: in std_logic;
			q:     out std_logic
		);
	end component;


	component Mux2Way IS
		port(
			a:   in  STD_LOGIC;
			b:   in  STD_LOGIC;
			sel: in  STD_LOGIC;
			q:   out STD_LOGIC
		);
	end component;

	SIGNAL muxout, ffout : STD_LOGIC;	

begin

	Mux : Mux2Way port map (b => input, a => ffout, sel => load, q=> muxout);
	FFp : FlipFlopD port map(clock => clock, d => muxout, clear => '0', preset => '0', q => ffout);
	output <= ffout;


end architecture;
