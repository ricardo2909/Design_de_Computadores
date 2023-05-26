library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULA_int_32 is
    port
    (
		SLT			: in 	std_logic;
		entradaA 	: in	std_logic;
		entradaB 	: in 	std_logic;
		inverteB		: in 	std_logic;
		carryIN		: in 	std_logic;
		seletor		: in 	std_logic_vector(1 DOWNTO 0);
		carryOUT		: out std_logic;
		resultado	: out std_logic;
		OverFlow		: out std_logic;
		saida_soma  : out std_logic
    );
end entity;


architecture comportamento of ULA_int_32 is

signal saida_mux2x1: std_logic;
signal saida_somador: std_logic;

	
begin

MUX2x1 :  entity work.muxGenerico2x1_bit  generic map (larguraDados => 1)
        port map(entradaA_MUX => entradaB,
                 entradaB_MUX => not (entradaB),
                 seletor_MUX => inverteB,
                 saida_MUX => saida_mux2x1);

soma: entity work.somador_ULA port map(C_in => carryIN,
											  A => entradaA,
											  B => saida_mux2x1, 
											  soma =>saida_somador,
											  C_out =>carryOUT);

MUX4x1 : entity work.muxGenerico4x1_bit  generic map (larguraDados => 1)
        port map(entrada0_MUX => saida_mux2x1 and entradaA,
                 entrada1_MUX => entradaA or saida_mux2x1,
					  entrada2_MUX => saida_somador,
					  entrada3_MUX => SLT, 
                 seletor_MUX => seletor,
                 saida_MUX => resultado);
					  
OverFlow <= carryOUT xor carryIN;
saida_soma <= saida_somador;

end architecture;