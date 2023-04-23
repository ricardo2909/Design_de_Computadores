library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 4;
          addrWidth: natural := 9
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
		  
		  
  constant NOP  : std_logic_vector(3 downto 0) := "0000";
  constant LDA  : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB  : std_logic_vector(3 downto 0) := "0011";
  constant LDI  : std_logic_vector(3 downto 0) := "0100";
  constant STA  : std_logic_vector(3 downto 0) := "0101";
  constant JMP  : std_logic_vector(3 downto 0) := "0110";
  constant JEQ  : std_logic_vector(3 downto 0) := "0111";
  constant CEQ  : std_logic_vector(3 downto 0) := "1000";
  constant JSR  : std_logic_vector(3 downto 0) := "1001";
  constant RET  : std_logic_vector(3 downto 0) := "1010";

		  
		  
  begin
      -- Palavra de Controle = SelMUX, Habilita_A, Reset_A, Operacao_ULA
      -- Inicializa os endereços:
tmp(0) := "0000000000000";	-- Reset:                            	#Label do Reset (Resetar programa todo)
tmp(1) := "0101111111110";	-- STA @510                          	#Limpa leitura KEY1                     
tmp(2) := "0101111111111";	-- STA @511                          	#Limpa leitura KEY0
tmp(3) := "0100000000001";	-- LDI $1                            	#Carrega 1 no acumulador
tmp(4) := "0101000111111";	-- STA @63                           	#Armazena 1 na posição 63 da RAM
tmp(5) := "0100000001010";	-- LDI $10                           	#Carrega 10 no acumulador
tmp(6) := "0101000010100";	-- STA @20                           	#Armazena 10 na posição 20 da RAM
tmp(7) := "0100000000000";	-- LDI $0                            	#Carrega 0 no acumulador
tmp(8) := "0101000111110";	-- STA @62                           	#Armazena 0 na posição 62 da RAM
tmp(9) := "0101100000010";	-- STA @258                          	#Desliga o LED 9
tmp(10) := "0101100000001";	-- STA @257                          	#Desliga o LED 8
tmp(11) := "0101100000000";	-- STA @256                          	#Desliga o LED 7 a 0
tmp(12) := "0101100100000";	-- STA @288                          	#Zera o display HEX 0
tmp(13) := "0101100100001";	-- STA @289                          	#Zera o display HEX 1
tmp(14) := "0101100100010";	-- STA @290                          	#Zera o display HEX 2
tmp(15) := "0101100100011";	-- STA @291                          	#Zera o display HEX 3
tmp(16) := "0101100100100";	-- STA @292                          	#Zera o display HEX 4
tmp(17) := "0101100100101";	-- STA @293                          	#Zera o display HEX 5
tmp(18) := "0101000000000";	-- STA @0                            	#Armazena 0 na posição 0 da RAM
tmp(19) := "0101000000001";	-- STA @1                            	#Armazena 0 na posição 1 da RAM
tmp(20) := "0101000000010";	-- STA @2                            	#Armazena 0 na posição 2 da RAM
tmp(21) := "0101000000011";	-- STA @3                            	#Armazena 0 na posição 3 da RAM
tmp(22) := "0101000000100";	-- STA @4                            	#Armazena 0 na posição 4 da RAM
tmp(23) := "0101000000101";	-- STA @5                            	#Armazena 0 na posição 5 da RAM
tmp(24) := "0101000001010";	-- STA @10                           	#Armazena 0 na posição 10 da RAM
tmp(25) := "0101000001011";	-- STA @11                           	#Armazena 0 na posição 11 da RAM
tmp(26) := "0101000001100";	-- STA @12                           	#Armazena 0 na posição 12 da RAM
tmp(27) := "0101000001101";	-- STA @13                           	#Armazena 0 na posição 13 da RAM
tmp(28) := "0101000001110";	-- STA @14                           	#Armazena 0 na posição 14 da RAM
tmp(29) := "0101000001111";	-- STA @15                           	#Armazena 0 na posição 15 da RAM
tmp(30) := "0000000000000";	-- Start:                            	#Label do Loop principal (Start)
tmp(31) := "0001101100001";	-- LDA @353                          	#Carrega o valor do KEY1 no acumulador
tmp(32) := "1000000111111";	-- CEQ @63                           	#Compara o valor do acumulador com 1
tmp(33) := "0111000101001";	-- JEQ @SetLim                       	#Se for igual a 1, vai para SetLim (Setar limite)
tmp(34) := "0001101100000";	-- LDA @352                          	#Carrega o valor do KEY0 no acumulador
tmp(35) := "1000000111111";	-- CEQ @63                           	#Compara o valor do acumulador com 1
tmp(36) := "0111001111010";	-- JEQ @Incremento                   	#Se for igual a 1, vai para Incremento (Contador)
tmp(37) := "0001101100100";	-- LDA @356                          	#Carrega o valor do Reset no acumulador
tmp(38) := "1000000111111";	-- CEQ @63                           	#Compara o valor do acumulador com 1
tmp(39) := "0111000000000";	-- JEQ @Reset                        	#Se for igual a 1, vai para Reset (Resetar programa todo)
tmp(40) := "0110000011110";	-- JMP @Start                        	#Se não for igual a 1, volta para Start
tmp(41) := "0000000000000";	-- SetLim:                           	#Label do SetLim (Setar limite)
tmp(42) := "0101111111110";	-- STA @510                          	#Limpa leitura KEY1
tmp(43) := "0001000000000";	-- LDA @0                            	#Carrega o valor da posição 0 da RAM no acumulador (Limite das unidades)
tmp(44) := "0101100100000";	-- STA @288                          	#Armazena o valor na HEX 0 (unidades)
tmp(45) := "0001000000001";	-- LDA @1                            	#Carrega o valor da posição 1 da RAM no acumulador (Limite das dezenas)
tmp(46) := "0101100100001";	-- STA @289                          	#Armazena o valor na HEX 1 (dezenas)
tmp(47) := "0001000000010";	-- LDA @2                            	#Carrega o valor da posição 2 da RAM no acumulador (Limite das centenas)
tmp(48) := "0101100100010";	-- STA @290                          	#Armazena o valor na HEX 2 (centenas)
tmp(49) := "0001000000011";	-- LDA @3                            	#Carrega o valor da posição 3 da RAM no acumulador (Limite dos milhares)
tmp(50) := "0101100100011";	-- STA @291                          	#Armazena o valor na HEX 3 (milhares)
tmp(51) := "0001000000100";	-- LDA @4                            	#Carrega o valor da posição 4 da RAM no acumulador (Limite das dezenas de milhares)
tmp(52) := "0101100100100";	-- STA @292                          	#Armazena o valor na HEX 4 (dezenas de milhares)
tmp(53) := "0001000000101";	-- LDA @5                            	#Carrega o valor da posição 5 da RAM no acumulador (Limite das centenas de milhares)
tmp(54) := "0101100100101";	-- STA @293                          	#Armazena o valor na HEX 5 (centenas de milhares)
tmp(55) := "0000000000000";	-- LimUni:                           	#Label do LimUni (Limite das unidades)
tmp(56) := "0001101000000";	-- LDA @320                          	#Carrega o valor dos SW7 a SW0 no acumulador
tmp(57) := "0101100100000";	-- STA @288                          	#Armazena o valor na HEX 0 (unidades)
tmp(58) := "0001101100001";	-- LDA @353                          	#Carrega o valor do KEY1 no acumulador
tmp(59) := "1000000111110";	-- CEQ @62                           	#Compara o valor do acumulador com a posição 62 da RAM (0)
tmp(60) := "0111000110111";	-- JEQ @LimUni                       	#Se for igual a 0, volta para LimUni (Loop do Limite das unidades)
tmp(61) := "0101111111110";	-- STA @510                          	#Limpa leitura KEY1
tmp(62) := "0001101000000";	-- LDA @320                          	#Carrega o valor dos SW7 a SW0 no acumulador
tmp(63) := "0101000000000";	-- STA @0                            	#Armazena o valor na posição 0 da RAM (Limite das unidades)
tmp(64) := "0000000000000";	-- LimDez:                           	#Label do LimDez (Limite das dezenas)
tmp(65) := "0001101000000";	-- LDA @320                          	#Carrega o valor dos SW7 a SW0 no acumulador
tmp(66) := "0101100100001";	-- STA @289                          	#Armazena o valor na HEX 1 (dezenas)
tmp(67) := "0001101100001";	-- LDA @353                          	#Carrega o valor do KEY1 no acumulador
tmp(68) := "1000000111110";	-- CEQ @62                           	#Compara o valor do acumulador com a posição 62 da RAM (0)
tmp(69) := "0111001000000";	-- JEQ @LimDez                       	#Se for igual a 0, volta para LimDez (Loop do Limite das dezenas)
tmp(70) := "0101111111110";	-- STA @510                          	#Limpa leitura KEY1
tmp(71) := "0001101000000";	-- LDA @320                          	#Carrega o valor dos SW7 a SW0 no acumulador
tmp(72) := "0101000000001";	-- STA @1                            	#Armazena o valor na posição 1 da RAM (Limite das dezenas)
tmp(73) := "0000000000000";	-- LimCen:                           	#Label do LimCen (Limite das centenas)
tmp(74) := "0001101000000";	-- LDA @320                          	#Carrega o valor dos SW7 a SW0 no acumulador
tmp(75) := "0101100100010";	-- STA @290                          	#Armazena o valor na HEX 2 (centenas)
tmp(76) := "0001101100001";	-- LDA @353                          	#Carrega o valor do KEY1 no acumulador
tmp(77) := "1000000111110";	-- CEQ @62                           	#Compara o valor do acumulador com a posição 62 da RAM (0)
tmp(78) := "0111001001001";	-- JEQ @LimCen                       	#Se for igual a 0, volta para LimCen (Loop do Limite das centenas)
tmp(79) := "0101111111110";	-- STA @510                          	#Limpa leitura KEY1
tmp(80) := "0001101000000";	-- LDA @320                          	#Carrega o valor dos SW7 a SW0 no acumulador
tmp(81) := "0101000000010";	-- STA @2                            	#Armazena o valor na posição 2 da RAM (Limite das centenas)
tmp(82) := "0000000000000";	-- LimMil:                           	#Label do LimMil (Limite dos milhares)
tmp(83) := "0001101000000";	-- LDA @320                          	#Carrega o valor dos SW7 a SW0 no acumulador
tmp(84) := "0101100100011";	-- STA @291                          	#Armazena o valor na HEX 3 (milhares)
tmp(85) := "0001101100001";	-- LDA @353                          	#Carrega o valor do KEY1 no acumulador
tmp(86) := "1000000111110";	-- CEQ @62                           	#Compara o valor do acumulador com a posição 62 da RAM (0)
tmp(87) := "0111001010010";	-- JEQ @LimMil                       	#Se for igual a 0, volta para LimMil (Loop do Limite dos milhares)
tmp(88) := "0101111111110";	-- STA @510                          	#Limpa leitura KEY1
tmp(89) := "0001101000000";	-- LDA @320                          	#Carrega o valor dos SW7 a SW0 no acumulador
tmp(90) := "0101000000011";	-- STA @3                            	#Armazena o valor na posição 3 da RAM (Limite dos milhares)
tmp(91) := "0000000000000";	-- LimDezM:                          	#Label do LimDezM (Limite das dezenas de milhares)
tmp(92) := "0001101000000";	-- LDA @320                          	#Carrega o valor dos SW7 a SW0 no acumulador
tmp(93) := "0101100100100";	-- STA @292                          	#Armazena o valor na HEX 4 (dezenas de milhares)
tmp(94) := "0001101100001";	-- LDA @353                          	#Carrega o valor do KEY1 no acumulador
tmp(95) := "1000000111110";	-- CEQ @62                           	#Compara o valor do acumulador com a posição 62 da RAM (0)
tmp(96) := "0111001011011";	-- JEQ @LimDezM                      	#Se for igual a 0, volta para LimDezM (Loop do Limite das dezenas de milhares)
tmp(97) := "0101111111110";	-- STA @510                          	#Limpa leitura KEY1
tmp(98) := "0001101000000";	-- LDA @320                          	#Carrega o valor dos SW7 a SW0 no acumulador
tmp(99) := "0101000000100";	-- STA @4                            	#Armazena o valor na posição 4 da RAM (Limite das dezenas de milhares)
tmp(100) := "0000000000000";	-- LimCenM:                          	#Label do LimCenM (Limite das centenas de milhares)
tmp(101) := "0001101000000";	-- LDA @320                          	#Carrega o valor dos SW7 a SW0 no acumulador
tmp(102) := "0101100100101";	-- STA @293                          	#Armazena o valor na HEX 5 (centenas de milhares)
tmp(103) := "0001101100001";	-- LDA @353                          	#Carrega o valor do KEY1 no acumulador
tmp(104) := "1000000111110";	-- CEQ @62                           	#Compara o valor do acumulador com a posição 62 da RAM (0)
tmp(105) := "0111001100100";	-- JEQ @LimCenM                      	#Se for igual a 0, volta para LimCenM (Loop do Limite das centenas de milhares)
tmp(106) := "0101111111110";	-- STA @510                          	#Limpa leitura KEY1
tmp(107) := "0001101000000";	-- LDA @320                          	#Carrega o valor dos SW7 a SW0 no acumulador
tmp(108) := "0101000000101";	-- STA @5                            	#Armazena o valor na posição 5 da RAM (Limite das centenas de milhares)
tmp(109) := "0001000001010";	-- LDA @10                           	#Carrega o valor da posição 10 da RAM no acumulador (Valor atual das unidades)
tmp(110) := "0101100100000";	-- STA @288                          	#Armazena o valor na HEX 0 (unidades)
tmp(111) := "0001000001011";	-- LDA @11                           	#Carrega o valor da posição 11 da RAM no acumulador (Valor atual das dezenas)
tmp(112) := "0101100100001";	-- STA @289                          	#Armazena o valor na HEX 1 (dezenas)
tmp(113) := "0001000001100";	-- LDA @12                           	#Carrega o valor da posição 12 da RAM no acumulador (Valor atual das centenas)
tmp(114) := "0101100100010";	-- STA @290                          	#Armazena o valor na HEX 2 (centenas)
tmp(115) := "0001000001101";	-- LDA @13                           	#Carrega o valor da posição 13 da RAM no acumulador (Valor atual dos milhares)
tmp(116) := "0101100100011";	-- STA @291                          	#Armazena o valor na HEX 3 (milhares)
tmp(117) := "0001000001110";	-- LDA @14                           	#Carrega o valor da posição 14 da RAM no acumulador (Valor atual das dezenas de milhares)
tmp(118) := "0101100100100";	-- STA @292                          	#Armazena o valor na HEX 4 (dezenas de milhares)
tmp(119) := "0001000001111";	-- LDA @15                           	#Carrega o valor da posição 15 da RAM no acumulador (Valor atual das centenas de milhares)
tmp(120) := "0101100100101";	-- STA @293                          	#Armazena o valor na HEX 5 (centenas de milhares)
tmp(121) := "0110000011110";	-- JMP @Start                        	#Volta para o início do programa (Start)
tmp(122) := "0000000000000";	-- Incremento:                       	#Label do Incremento
tmp(123) := "0101111111111";	-- STA @511                          	#Limpa leitura KEY0
tmp(124) := "0001000001010";	-- LDA @10                           	#Carrega o valor da posição 10 da RAM no acumulador (Valor atual das unidades)
tmp(125) := "0010000111111";	-- SOMA @63                          	#Soma 1 ao valor do acumulador (posicao 63 da RAM)
tmp(126) := "1000000010100";	-- CEQ @20                           	#Compara o valor do acumulador com a posição 20 da RAM (10)
tmp(127) := "0111010000010";	-- JEQ @IncDez                       	#Se for igual a 10, vai para IncDez (Incremento das dezenas)
tmp(128) := "0101000001010";	-- STA @10                           	#Se não for igual a 10, armazena o valor do acumulador na posição 10 da RAM (Valor atual das unidades)
tmp(129) := "0110010101111";	-- JMP @Display                      	#Atualiza os displays
tmp(130) := "0000000000000";	-- IncDez:                           	#Label do IncDez (Incremento das dezenas)
tmp(131) := "0001000111110";	-- LDA @62                           	#Carrega o valor da posição 62 da RAM no acumulador (0)
tmp(132) := "0101000001010";	-- STA @10                           	#Zera o valor da posição 10 da RAM (Valor atual das unidades)
tmp(133) := "0001000001011";	-- LDA @11                           	#Carrega o valor da posição 11 da RAM no acumulador (Valor atual das dezenas)
tmp(134) := "0010000111111";	-- SOMA @63                          	#Soma 1 ao valor do acumulador (posicao 63 da RAM)
tmp(135) := "1000000010100";	-- CEQ @20                           	#Compara o valor do acumulador com a posição 20 da RAM (10)
tmp(136) := "0111010001011";	-- JEQ @IncCen                       	#Se for igual a 10, vai para IncCen (Incremento das centenas)
tmp(137) := "0101000001011";	-- STA @11                           	#Se não for igual a 10, armazena o valor do acumulador na posição 11 da RAM (Valor atual das dezenas)
tmp(138) := "0110010101111";	-- JMP @Display                      	#Atualiza os displays
tmp(139) := "0000000000000";	-- IncCen:                           	#Label do IncCen (Incremento das centenas)
tmp(140) := "0001000111110";	-- LDA @62                           	#Carrega o valor da posição 62 da RAM no acumulador (0)
tmp(141) := "0101000001011";	-- STA @11                           	#Zera o valor da posição 11 da RAM (Valor atual das dezenas)
tmp(142) := "0001000001100";	-- LDA @12                           	#Carrega o valor da posição 12 da RAM no acumulador (Valor atual das centenas)
tmp(143) := "0010000111111";	-- SOMA @63                          	#Soma 1 ao valor do acumulador (posicao 63 da RAM)
tmp(144) := "1000000010100";	-- CEQ @20                           	#Compara o valor do acumulador com a posição 20 da RAM (10)
tmp(145) := "0111010010100";	-- JEQ @IncMil                       	#Se for igual a 10, vai para IncMil (Incremento dos milhares)
tmp(146) := "0101000001100";	-- STA @12                           	#Se não for igual a 10, armazena o valor do acumulador na posição 12 da RAM (Valor atual das centenas)
tmp(147) := "0110010101111";	-- JMP @Display                      	#Atualiza os displays
tmp(148) := "0000000000000";	-- IncMil:                           	#Label do IncMil (Incremento dos milhares)
tmp(149) := "0001000111110";	-- LDA @62                           	#Carrega o valor da posição 62 da RAM no acumulador (0)
tmp(150) := "0101000001100";	-- STA @12                           	#Zera o valor da posição 12 da RAM (Valor atual das centenas)
tmp(151) := "0001000001101";	-- LDA @13                           	#Carrega o valor da posição 13 da RAM no acumulador (Valor atual dos milhares)
tmp(152) := "0010000111111";	-- SOMA @63                          	#Soma 1 ao valor do acumulador (posicao 63 da RAM)
tmp(153) := "1000000010100";	-- CEQ @20                           	#Compara o valor do acumulador com a posição 20 da RAM (10)
tmp(154) := "0111010011101";	-- JEQ @IncDezM                      	#Se for igual a 10, vai para IncDezM (Incremento das dezenas de milhares)
tmp(155) := "0101000001101";	-- STA @13                           	#Se não for igual a 10, armazena o valor do acumulador na posição 13 da RAM (Valor atual dos milhares)
tmp(156) := "0110010101111";	-- JMP @Display                      	#Atualiza os displays
tmp(157) := "0000000000000";	-- IncDezM:                          	#Label do IncDezM (Incremento das dezenas de milhares)
tmp(158) := "0001000111110";	-- LDA @62                           	#Carrega o valor da posição 62 da RAM no acumulador (0)
tmp(159) := "0101000001101";	-- STA @13                           	#Zera o valor da posição 13 da RAM (Valor atual dos milhares)
tmp(160) := "0001000001110";	-- LDA @14                           	#Carrega o valor da posição 14 da RAM no acumulador (Valor atual das dezenas de milhares)
tmp(161) := "0010000111111";	-- SOMA @63                          	#Soma 1 ao valor do acumulador (posicao 63 da RAM)
tmp(162) := "1000000010100";	-- CEQ @20                           	#Compara o valor do acumulador com a posição 20 da RAM (10)
tmp(163) := "0111010100110";	-- JEQ @IncCenM                      	#Se for igual a 10, vai para IncCenM (Incremento das centenas de milhares)
tmp(164) := "0101000001110";	-- STA @14                           	#Se não for igual a 10, armazena o valor do acumulador na posição 14 da RAM (Valor atual das dezenas de milhares)
tmp(165) := "0110010101111";	-- JMP @Display                      	#Atualiza os displays
tmp(166) := "0000000000000";	-- IncCenM:                          	#Label do IncCenM (Incremento das centenas de milhares)
tmp(167) := "0001000111110";	-- LDA @62                           	#Carrega o valor da posição 62 da RAM no acumulador (0)
tmp(168) := "0101000001110";	-- STA @14                           	#Zera o valor da posição 14 da RAM (Valor atual das dezenas de milhares)
tmp(169) := "0001000001111";	-- LDA @15                           	#Carrega o valor da posição 15 da RAM no acumulador (Valor atual das centenas de milhares)
tmp(170) := "0010000111111";	-- SOMA @63                          	#Soma 1 ao valor do acumulador (posicao 63 da RAM)
tmp(171) := "1000000010100";	-- CEQ @20                           	#Compara o valor do acumulador com a posição 20 da RAM (10)
tmp(172) := "0111010111101";	-- JEQ @NoveNove                     	#Se for igual a 10, vai para NoveNove (chegou 999999)
tmp(173) := "0101000001111";	-- STA @15                           	#Se não for igual a 10, armazena o valor do acumulador na posição 15 da RAM (Valor atual das centenas de milhares)
tmp(174) := "0110010101111";	-- JMP @Display                      	#Atualiza os displays
tmp(175) := "0000000000000";	-- Display:                          	#Label do Display (Atualiza os displays)
tmp(176) := "0001000001010";	-- LDA @10                           	#Carrega o valor da posição 10 da RAM no acumulador (Valor atual das unidades)
tmp(177) := "0101100100000";	-- STA @288                          	#Armazena o valor do acumulador no HEX 0 (Display das unidades)
tmp(178) := "0001000001011";	-- LDA @11                           	#Carrega o valor da posição 11 da RAM no acumulador (Valor atual das dezenas)
tmp(179) := "0101100100001";	-- STA @289                          	#Armazena o valor do acumulador no HEX 1 (Display das dezenas)
tmp(180) := "0001000001100";	-- LDA @12                           	#Carrega o valor da posição 12 da RAM no acumulador (Valor atual das centenas)
tmp(181) := "0101100100010";	-- STA @290                          	#Armazena o valor do acumulador no HEX 2 (Display das centenas)
tmp(182) := "0001000001101";	-- LDA @13                           	#Carrega o valor da posição 13 da RAM no acumulador (Valor atual dos milhares)
tmp(183) := "0101100100011";	-- STA @291                          	#Armazena o valor do acumulador no HEX 3 (Display dos milhares)
tmp(184) := "0001000001110";	-- LDA @14                           	#Carrega o valor da posição 14 da RAM no acumulador (Valor atual das dezenas de milhares)
tmp(185) := "0101100100100";	-- STA @292                          	#Armazena o valor do acumulador no HEX 4 (Display das dezenas de milhares)
tmp(186) := "0001000001111";	-- LDA @15                           	#Carrega o valor da posição 15 da RAM no acumulador (Valor atual das centenas de milhares)
tmp(187) := "0101100100101";	-- STA @293                          	#Armazena o valor do acumulador no HEX 5 (Display das centenas de milhares)
tmp(188) := "0110011000100";	-- JMP @CompLim                      	#Vai para CompLim (Compara o valor atual com o limite)
tmp(189) := "0000000000000";	-- NoveNove:                         	#Label do NoveNove (chegou 999999)
tmp(190) := "0001000111111";	-- LDA @63                           	#Carrega o valor da posição 63 da RAM no acumulador (1)
tmp(191) := "0101100000010";	-- STA @258                          	#Ascende o LED 9
tmp(192) := "0001101100100";	-- LDA @356                          	#Carrega o valor do Reset no acumulador
tmp(193) := "1000000111111";	-- CEQ @63                           	#Compara o valor do acumulador com a posição 63 da RAM (1)
tmp(194) := "0111000000000";	-- JEQ @Reset                        	#Se for igual a 1, vai para Reset (Reseta o programa)
tmp(195) := "0110010111101";	-- JMP @NoveNove                     	#Se não for igual a 1, volta para NoveNove (chegou 999999)
tmp(196) := "0000000000000";	-- CompLim:                          	#Label do CompLim (Compara o valor atual com o limite)
tmp(197) := "0001000001010";	-- LDA @10                           	#Carrega o valor da posição 10 da RAM no acumulador (Valor atual das unidades)
tmp(198) := "1000000000000";	-- CEQ @0                            	#Compara o valor do acumulador com a posição 0 da RAM (Limite das unidades)
tmp(199) := "0111011001001";	-- JEQ @CompDez                      	#Se for igual, vai para CompDez (Compara o valor atual das dezenas com o limite das dezenas)
tmp(200) := "0110000011110";	-- JMP @Start                        	#Se não for igual, volta para laco principal (Start)
tmp(201) := "0000000000000";	-- CompDez:                          	#Label do CompDez (Compara o valor atual das dezenas com o limite das dezenas)
tmp(202) := "0001000001011";	-- LDA @11                           	#Carrega o valor da posição 11 da RAM no acumulador (Valor atual das dezenas)
tmp(203) := "1000000000001";	-- CEQ @1                            	#Compara o valor do acumulador com a posição 1 da RAM (Limite das dezenas)
tmp(204) := "0111011001110";	-- JEQ @CompCen                      	#Se for igual, vai para CompCen (Compara o valor atual das centenas com o limite das centenas)
tmp(205) := "0110000011110";	-- JMP @Start                        	#Se não for igual, volta para laco principal (Start)
tmp(206) := "0000000000000";	-- CompCen:                          	#Label do CompCen (Compara o valor atual das centenas com o limite das centenas)
tmp(207) := "0001000001100";	-- LDA @12                           	#Carrega o valor da posição 12 da RAM no acumulador (Valor atual das centenas)
tmp(208) := "1000000000010";	-- CEQ @2                            	#Compara o valor do acumulador com a posição 2 da RAM (Limite das centenas)
tmp(209) := "0111011010011";	-- JEQ @CompMil                      	#Se for igual, vai para CompMil (Compara o valor atual dos milhares com o limite dos milhares)
tmp(210) := "0110000011110";	-- JMP @Start                        	#Se não for igual, volta para laco principal (Start)
tmp(211) := "0000000000000";	-- CompMil:                          	#Label do CompMil (Compara o valor atual dos milhares com o limite dos milhares)
tmp(212) := "0001000001101";	-- LDA @13                           	#Carrega o valor da posição 13 da RAM no acumulador (Valor atual dos milhares)
tmp(213) := "1000000000011";	-- CEQ @3                            	#Compara o valor do acumulador com a posição 3 da RAM (Limite dos milhares)
tmp(214) := "0111011011000";	-- JEQ @CompDezM                     	#Se for igual, vai para CompDezM (Compara o valor atual das dezenas de milhares com o limite das dezenas de milhares)
tmp(215) := "0110000011110";	-- JMP @Start                        	#Se não for igual, volta para laco principal (Start)
tmp(216) := "0000000000000";	-- CompDezM:                         	#Label do CompDezM (Compara o valor atual das dezenas de milhares com o limite das dezenas de milhares)
tmp(217) := "0001000001110";	-- LDA @14                           	#Carrega o valor da posição 14 da RAM no acumulador (Valor atual das dezenas de milhares)
tmp(218) := "1000000000100";	-- CEQ @4                            	#Compara o valor do acumulador com a posição 4 da RAM (Limite das dezenas de milhares)
tmp(219) := "0111011011101";	-- JEQ @CompCenM                     	#Se for igual, vai para CompCenM (Compara o valor atual das centenas de milhares com o limite das centenas de milhares)
tmp(220) := "0110000011110";	-- JMP @Start                        	#Se não for igual, volta para laco principal (Start)
tmp(221) := "0000000000000";	-- CompCenM:                         	#Label do CompCenM (Compara o valor atual das centenas de milhares com o limite das centenas de milhares)
tmp(222) := "0001000001111";	-- LDA @15                           	#Carrega o valor da posição 15 da RAM no acumulador (Valor atual das centenas de milhares)
tmp(223) := "1000000000101";	-- CEQ @5                            	#Compara o valor do acumulador com a posição 5 da RAM (Limite das centenas de milhares)
tmp(224) := "0111011100010";	-- JEQ @Fim                          	#Se for igual, vai para Fim (Fim do programa)
tmp(225) := "0110000011110";	-- JMP @Start                        	#Se não for igual, volta para laco principal (Start)
tmp(226) := "0000000000000";	-- Fim:                              	#Label do Fim (Fim do programa)
tmp(227) := "0001000111111";	-- LDA @63                           	#Carrega o valor da posição 63 da RAM no acumulador (1)
tmp(228) := "0101100000010";	-- STA @258                          	#Ascende o LED 9
tmp(229) := "0101100000001";	-- STA @257                          	#Ascende o LED 8
tmp(230) := "0100011111111";	-- LDI $255                          	#Carrega o valor 255 no acumulador
tmp(231) := "0101100000000";	-- STA @256                          	#Ascende os LEDs 7 a 0
tmp(232) := "0001101100100";	-- LDA @356                          	#Carrega o valor do Reset no acumulador
tmp(233) := "1000000111111";	-- CEQ @63                           	#Compara o valor do acumulador com a posição 63 da RAM (1)
tmp(234) := "0111000000000";	-- JEQ @Reset                        	#Se for igual a 1, vai para Reset (Reseta o programa)
tmp(235) := "0110011100010";	-- JMP @Fim                          	#Se não for igual a 1, volta para Fim (Fim do programa)

        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;