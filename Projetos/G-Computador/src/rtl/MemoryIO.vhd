library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MemoryIO is
   PORT(
     -- Sistema
     CLK_SLOW : IN  STD_LOGIC;
     CLK_FAST : IN  STD_LOGIC;
     RST      : IN  STD_LOGIC;

     -- RAM 16K
     ADDRESS  : IN  STD_LOGIC_VECTOR (14 DOWNTO 0);
     INPUT    : IN  STD_LOGIC_VECTOR (15 DOWNTO 0);
     LOAD     : IN  STD_LOGIC ;
     OUTPUT   : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);

     -- LCD EXTERNAL I/OS
     LCD_CS_N     : OUT   STD_LOGIC;
     LCD_D        : INOUT STD_LOGIC_VECTOR(15 downto 0);
     LCD_RD_N     : OUT   STD_LOGIC;
     LCD_RESET_N  : OUT   STD_LOGIC;
     LCD_RS       : OUT   STD_LOGIC;
     LCD_WR_N     : OUT   STD_LOGIC;
     LCD_ON       : OUT   STD_LOGIC := '1'; -- liga e desliga o LCD
     LCD_INIT_OK  : OUT   STD_LOGIC;

     -- I/Os
     SW  : in std_logic_vector(9 downto 0);
     LED : OUT std_logic_vector(9 downto 0)

    );
end entity;



ARCHITECTURE logic OF MemoryIO IS

  component Screen is
    PORT(
      -- Sistema
      CLK_FAST : IN  STD_LOGIC;
      CLK_SLOW : IN  STD_LOGIC;
      RST      : IN  STD_LOGIC;

      -- interface
      INPUT        : IN STD_LOGIC_VECTOR(15 downto 0); -- vetor de pxs
      LOAD         : IN  STD_LOGIC;                    -- grava dado
      ADDRESS      : IN STD_LOGIC_VECTOR(13 downto 0); -- endereço

      -- LCD EXTERNAL I/OS
      LCD_INIT_OK  : OUT STD_LOGIC;
      LCD_CS_N     : OUT   STD_LOGIC;
      LCD_D        : INOUT STD_LOGIC_VECTOR(15 downto 0);
      LCD_RD_N     : OUT   STD_LOGIC;
      LCD_RESET_N  : OUT   STD_LOGIC;
      LCD_RS       : OUT   STD_LOGIC;
      LCD_WR_N     : OUT   STD_LOGIC);
  end component;

  component RAM16K is
    port  (
      clock   : IN STD_LOGIC;
      address : IN STD_LOGIC_VECTOR (13 DOWNTO 0);
      data    : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
      wren    : IN STD_LOGIC;
      q      : OUT STD_LOGIC_VECTOR (15 DOWNTO 0));
  end component;

  component Register16 is
    port (
      clock:   in STD_LOGIC;
      input:   in STD_LOGIC_VECTOR(15 downto 0);
      load:    in STD_LOGIC;
      output: out STD_LOGIC_VECTOR(15 downto 0));
  end component;

  component Mux4Way16 is
    Port (
      sel : in  STD_LOGIC_VECTOR ( 1 downto 0);
      a   : in  STD_LOGIC_VECTOR (15 downto 0);
      b   : in  STD_LOGIC_VECTOR (15 downto 0);
      c   : in  STD_LOGIC_VECTOR (15 downto 0);
      d   : in  STD_LOGIC_VECTOR (15 downto 0);
      q   : out STD_LOGIC_VECTOR (15 downto 0));
  end component;

  component Dmux4Way is
    port(
      a:   in  STD_LOGIC;
      sel: in  STD_LOGIC_VECTOR(1 downto 0);
      q0:  out STD_LOGIC;
      q1:  out STD_LOGIC;
      q2:  out STD_LOGIC;
      q3:  out STD_LOGIC);
  end component;

signal dmux: std_logic_vector(3 downto 0);
signal seletor: std_logic_vector(1 downto 0);
signal seletor2: std_logic_vector(1 downto 0);
signal out_ram: std_logic_vector(15 downto 0);
signal temp_led: std_logic_vector(15 downto 0);

begin


-----------------------------------
-- Dicas de uso, screen e RAM16k --
-----------------------------------
seletor <= "00" when ADDRESS <= "011111111111111" else
           "01" when ADDRESS >= "100000000000000" and ADDRESS <= "101001010111111" else
           "10" when ADDRESS = "101001011000000" else
           "11";

seletor2 <= "00" when ("101001011000001" = ADDRESS) else
            "01";

demux: Dmux4Way port map (a => LOAD, sel => seletor, q0 => dmux(0), q1 => dmux(1), q2 => dmux(2), q3 => dmux(3));

ram_16: RAM16K port map (clock => CLK_FAST, address => ADDRESS(13 downto 0), data => INPUT, wren => dmux(0), q => out_ram);

display: Screen  port map (
          RST         => RST,
          CLK_FAST    => CLK_FAST,
          CLK_SLOW    => CLK_SLOW,
          INPUT       => INPUT,
          LOAD        => dmux(1),
          ADDRESS     => ADDRESS(13 downto 0),
          LCD_INIT_OK => LCD_INIT_OK,
          LCD_CS_N    => LCD_CS_N ,
          LCD_D       => LCD_D,
          LCD_RD_N    => LCD_RD_N,
          LCD_RESET_N => LCD_RESET_N,
          LCD_RS      => LCD_RS,
          LCD_WR_N    => LCD_WR_N
    );

regis: component Register16 port map (clock => CLK_SLOW, input => INPUT, load => dmux(2), output => temp_led);

LED <= temp_led(9 downto 0); 

mux: component Mux4Way16 port map (sel => seletor2, a => "000000" & SW, b => out_ram, c => "0000000000000000", d => "0000000000000000", q => OUTPUT);

END logic;
