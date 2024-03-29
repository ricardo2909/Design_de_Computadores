library ieee;
use ieee.std_logic_1164.all;

entity Aula5 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
	 palavra_controle : out std_logic_vector (8 downto 0);
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    SW: in std_logic_vector(9 downto 0);
   PC_OUT: out std_logic_vector(8 downto 0);
    LEDR  : out std_logic_vector(9 downto 0)
  );
end entity;


architecture arquitetura of Aula5 is

-- Faltam alguns sinais:
  signal chavesX_ULA_B : std_logic_vector (larguraDados-1 downto 0);
  signal DataIn : std_logic_vector (larguraDados-1 downto 0);
  signal MUX_REG1 : std_logic_vector (larguraDados-1 downto 0);
  signal DadoOut : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal Sinais_Controle : std_logic_vector (8 downto 0);
  signal Endereco : std_logic_vector (8 downto 0);
  signal proxPC : std_logic_vector (8 downto 0);
  signal Mux_PC : std_logic_vector (8 downto 0);
  signal Chave_Operacao_ULA : std_logic;
  signal CLK : std_logic;
  signal SelMUX : std_logic;
  signal Habilita_A : std_logic;
  signal Reset_A : std_logic;
  signal Operacao_ULA : std_logic_vector (1 downto 0);
  signal Memoria_Decoder: std_logic_vector (12 downto 0);
  signal habLeituraMEM: std_logic;
  signal habEscritaMEM: std_logic;
  signal JMP: std_logic;
  signal flagSaidaUla: std_logic;
  signal SaidaRegFlag: std_logic;
  signal JEQ: std_logic;
  signal habFlagIgual: std_logic;
  signal saidaDesv: std_logic;

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

-- O port map completo do MUX.
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => DataIn,
                 entradaB_MUX =>  Memoria_Decoder (7 downto 0),
                 seletor_MUX => SelMUX,
                 saida_MUX => MUX_REG1);

MUX2 : entity work.muxGenerico2x1  generic map (larguraDados => 9)
        port map(entradaA_MUX => proxPC,
                 entradaB_MUX =>  Memoria_Decoder (8 downto 0),
                 seletor_MUX => saidaDesv,
                 saida_MUX => Mux_PC);

-- O port map completo do Acumulador.
REGA : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => Saida_ULA, DOUT => DadoOut, ENABLE => Habilita_A, CLK => CLK, RST => '0');

-- O port map completo do Program Counter.3	
PC : entity work.registradorGenerico   generic map (larguraDados => 9)
          port map (DIN => Mux_PC, DOUT => Endereco, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => 9, constante => 1)
        port map( entrada => Endereco, saida => proxPC);


-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA =>DadoOut, entradaB => MUX_REG1, saida => Saida_ULA, flagZero => flagSaidaUla  ,seletor => Operacao_ULA);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => 9)
          port map (Endereco => Endereco, Dado => Memoria_Decoder);
			 
DECO : entity work.decoderInstru 
          port map (opcode => Memoria_Decoder(12 downto 9), saida => Sinais_Controle);

RAM : entity work.memoriaRAM   generic map (dataWidth => 8, addrWidth => 8)
          port map (addr => Memoria_Decoder (7 downto 0),  we => Sinais_Controle (0), 
			 re => Sinais_Controle(1),
          habilita => Memoria_Decoder (8),
          clk => CLK,
          dado_in => DadoOut,
          dado_out => DataIn);

FLAG1 : entity work.FlipFlop
		  port map (DIN => flagSaidaUla,
				  DOUT => SaidaRegFlag,
			     ENABLE => habFlagIgual,
				  CLK => CLK,
				  RST => '0');
				 
DESVIO : entity work.logicaDesvio 
			port map( JEQ => JEQ,
					 Flag_Igual  => SaidaRegFlag,
					 JMP => JMP,
					 saida => saidaDesv
  );

  


JMP <= Sinais_Controle(8);
JEQ <= Sinais_controle(7);
selMUX <= Sinais_Controle(6);
Habilita_A <= Sinais_Controle(5);
Operacao_ULA <= Sinais_Controle(4 downto 3);
habFlagIgual <= Sinais_Controle(2);
habLeituraMEM <= Sinais_Controle (1);
habEscritaMEM <= Sinais_Controle (0);
palavra_controle <= Sinais_Controle;



-- I/O
--chavesY_MUX_A <= SW(3 downto 0);
--chavesX_ULA_B <= SW(9 downto 6);

-- A ligacao dos LEDs:
--LEDR (9) <= SelMUX;
--LEDR (8) <= Habilita_A;
--LEDR (7) <= Reset_A;
--LEDR (6) <= Operacao_ULA;
--LEDR (5) <= '0';    -- Apagado.
--LEDR (4) <= '0';    -- Apagado.
--LEDR (3 downto 0) <= REG1_ULA_A;

PC_OUT <= Endereco;

end architecture;