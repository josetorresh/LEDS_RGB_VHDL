library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PURE_RGB is
	Port(ENTRADA : in STD_LOGIC_VECTOR(7 downto 0);
		  LEDS_RGB : out STD_LOGIC_VECTOR(23 downto 0));
end PURE_RGB;

architecture Behavioral of PURE_RGB is

begin

	RGB_Colors : process(ENTRADA) 
			variable COLOR1, COLOR2 : STD_LOGIC_VECTOR(2 downto 0);
			variable LED7_0 : STD_LOGIC_VECTOR(7 downto 0);
	begin
		--   RED="100"		 GREEN="010"	   BLUE="001"		WHITE="111"
		--  CYAN="011"		  PINK="101"	 YELLOW="110"	 BLACK="000"		
			LED7_0:=ENTRADA;		  COLOR1:="111";	COLOR2:="000";
		if(LED7_0(7) = '1') then LEDS_RGB(23 downto 21) <= COLOR1; else LEDS_RGB(23 downto 21) <= COLOR2; end if;
		if(LED7_0(6) = '1') then LEDS_RGB(20 downto 18) <= COLOR1; else LEDS_RGB(20 downto 18) <= COLOR2; end if;
		if(LED7_0(5) = '1') then LEDS_RGB(17 downto 15) <= COLOR1; else LEDS_RGB(17 downto 15) <= COLOR2; end if;
		if(LED7_0(4) = '1') then LEDS_RGB(14 downto 12) <= COLOR1; else LEDS_RGB(14 downto 12) <= COLOR2; end if;
		if(LED7_0(3) = '1') then LEDS_RGB(11 downto  9) <= COLOR1; else LEDS_RGB(11 downto  9) <= COLOR2; end if;
		if(LED7_0(2) = '1') then LEDS_RGB(8  downto  6) <= COLOR1; else LEDS_RGB(8  downto  6) <= COLOR2; end if;
		if(LED7_0(1) = '1') then LEDS_RGB(5  downto  3) <= COLOR1; else LEDS_RGB(5  downto  3) <= COLOR2; end if;
		if(LED7_0(0) = '1') then LEDS_RGB(2  downto  0) <= COLOR1; else LEDS_RGB(2  downto  0) <= COLOR2; end if;
	end process;	

end Behavioral;