library ieee;
use ieee.std_logic_1164.all;

entity Aula13 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
	 CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
	 ula: out std_logic_vector(31 downto 0)
  );
end entity;


architecture arquitetura of Aula13 is

-- Faltam alguns sinais:
	signal CLK: std_logic;
	signal inc_pc: std_logic_vector(31 downto 0);
	signal pc_rom: std_logic_vector(31 downto 0);
	signal rom_regs: std_logic_vector(31 downto 0);
	signal dado1: std_logic_vector(31 downto 0);
	signal dado2: std_logic_vector(31 downto 0);
	signal saidaUla: std_logic_vector(31 downto 0);
	signal Sinais_controle: std_logic_vector (1 downto 0);

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= CLOCK_50;
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.ROMMIPS   generic map (dataWidth => 32, addrWidth => 32)
          port map (Endereco => pc_rom, Dado => rom_regs);
			 
										  

PC : entity work.registradorGenerico   generic map (larguraDados => 32)
          port map (DIN => inc_pc, DOUT => pc_rom, ENABLE => '1', CLK => CLK, RST => '0');

incrementaPC :  entity work.somaConstante  generic map (larguraDados => 32, constante => 4)
        port map( entrada => pc_rom, saida => inc_pc);
		  
		  
ULA1 : entity work.ULASomaSub  generic map(larguraDados => 32)
          port map (entradaA => dado1, entradaB =>  dado2, saida => saidaUla, seletor => Sinais_controle(0));
			 
banco: entity work.bancoReg generic map(larguraDados => 32,larguraEndBancoRegs => 5)
				port map(clk => CLK,
						   enderecoA => rom_regs(25 downto 21),
							enderecoB => rom_regs(20 downto 16),
                     enderecoC => rom_regs(15 downto 11),
                     dadoEscritaC=> saidaUla,
						   escreveC => Sinais_controle(1),
						   saidaA => dado1,
							saidaB => dado2);
							
							
Sinais_controle(0) <= '1' when rom_regs(5 downto 0) = "100000" else '0';				
Sinais_controle(1) <= '1' when rom_regs(31 downto 26) = "000000" else '0';
ula <= saidaUla;				
				
end architecture;