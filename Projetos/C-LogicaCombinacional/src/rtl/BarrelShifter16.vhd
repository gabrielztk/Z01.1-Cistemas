library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BarrelShifter16 is
	port ( 
      a:    in  STD_LOGIC_VECTOR(15 downto 0);   -- input vector
			dir:  in  std_logic;                       -- 0=>left 1=>right
			size: in  std_logic_vector(3 downto 0);    -- shift amount
			q:    out STD_LOGIC_VECTOR(15 downto 0));  -- output vector (shifted)
end entity;

architecture rtl of BarrelShifter16 is

	signal s1,s2,s3,s4 : std_logic_vector(15 downto 0); 

begin

    s1 <= a(14 downto 0) & '0' when size(0) = '1' and dir = '0' else -- shift 1
        '0' & a(15 downto 1) when size(0) = '1' and dir = '1' else
        a;

    s2 <= s1(13 downto 0) & "00" when size(1) = '1' and dir = '0' else -- shift 2
        "00" & s1(15 downto 2) when size(1) = '1' and dir = '1' else
        s1;

    s3 <= s2(11 downto 0) & x"0" when size(2) = '1' and dir = '0' else -- shift 4
        x"0" & s2(15 downto 4) when size(2) = '1' and dir = '1' else
        s2;

    s4 <= s3(7 downto 0) & x"00" when size(3) = '1' and dir = '0' else -- shift 8
        x"00" & s3(15 downto 8) when size(3) = '1' and dir = '1' else
        s3;

    q <= s4;
      
end architecture;

