-- Elementos de Sistemas
-- by Luciano Soares
-- Ram4K.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity Ram4K is
	port(
		clock:   in  STD_LOGIC;
		input:   in  STD_LOGIC_VECTOR(15 downto 0);
		load:    in  STD_LOGIC;
		address: in  STD_LOGIC_VECTOR(11 downto 0);
		output:  out STD_LOGIC_VECTOR(15 downto 0)
	);
end entity;

architecture arch of Ram4k is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.

	component Ram512 is
		port(
			clock:   in  STD_LOGIC;
			input:   in  STD_LOGIC_VECTOR(15 downto 0);
			load:    in  STD_LOGIC;
			address: in  STD_LOGIC_VECTOR( 8 downto 0);
			output:  out STD_LOGIC_VECTOR(15 downto 0)
		);
	end component;

	component Mux8Way16 is
		port ( 
				a:   in  STD_LOGIC_VECTOR(15 downto 0);
				b:   in  STD_LOGIC_VECTOR(15 downto 0);
				c:   in  STD_LOGIC_VECTOR(15 downto 0);
				d:   in  STD_LOGIC_VECTOR(15 downto 0);
				e:   in  STD_LOGIC_VECTOR(15 downto 0);
				f:   in  STD_LOGIC_VECTOR(15 downto 0);
				g:   in  STD_LOGIC_VECTOR(15 downto 0);
				h:   in  STD_LOGIC_VECTOR(15 downto 0);
				sel: in  STD_LOGIC_VECTOR(2 downto 0);
				q:   out STD_LOGIC_VECTOR(15 downto 0));
	end component;

	component DMux8Way is
		port ( 
				a:   in  STD_LOGIC;
				sel: in  STD_LOGIC_VECTOR(2 downto 0);
				q0:  out STD_LOGIC;
				q1:  out STD_LOGIC;
				q2:  out STD_LOGIC;
				q3:  out STD_LOGIC;
				q4:  out STD_LOGIC;
				q5:  out STD_LOGIC;
				q6:  out STD_LOGIC;
				q7:  out STD_LOGIC);
	end component;

	SIGNAL dmux: std_logic_vector(7 downto 0);
	SIGNAL mux0, mux1, mux2, mux3, mux4, mux5, mux6, mux7: std_logic_vector(15 downto 0);

begin

	DM : DMux8Way port map(a => load, sel => address(11 downto 9), q0 => dmux(0), q1 => dmux(1), q2 => dmux(2), q3 => dmux(3), q4 => dmux(4), q5 => dmux(5), q6 => dmux(6), q7 => dmux(7));
	
	r0   : Ram512 port map(clock => clock, input => input, load => dmux(0), address => address(8 downto 0),  output => mux0);
	r1   : Ram512 port map(clock => clock, input => input, load => dmux(1), address => address(8 downto 0),  output => mux1);
	r2   : Ram512 port map(clock => clock, input => input, load => dmux(2), address => address(8 downto 0),  output => mux2);
	r3   : Ram512 port map(clock => clock, input => input, load => dmux(3), address => address(8 downto 0),  output => mux3);
	r4   : Ram512 port map(clock => clock, input => input, load => dmux(4), address => address(8 downto 0),  output => mux4);
	r5   : Ram512 port map(clock => clock, input => input, load => dmux(5), address => address(8 downto 0),  output => mux5);
	r6   : Ram512 port map(clock => clock, input => input, load => dmux(6), address => address(8 downto 0),  output => mux6);
	r7   : Ram512 port map(clock => clock, input => input, load => dmux(7), address => address(8 downto 0),  output => mux7);


	MU  : Mux8Way16 port map(a => mux0, b => mux1, c => mux2, d => mux3, e => mux4, f => mux5, g => mux6, h => mux7, sel => address(11 downto 9), q => output);

end architecture;
