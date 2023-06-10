library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  --Soma (esta biblioteca =ieee)

entity decoder_Ctrl1 is
  port ( funct : in std_logic_vector(5 downto 0);
         saida : out std_logic_vector(2 downto 0)
  );
end entity;

architecture comportamento of decoder_Ctrl1 is

  begin
saida <= "000" when funct = "100100" else
         "001" when funct = "100101" else
         "010" when funct = "100000" else
			"110" when funct = "100010" else
			"111" when funct = "101010" else
         "000";  -- NOP para os entradas Indefinidas
end architecture;