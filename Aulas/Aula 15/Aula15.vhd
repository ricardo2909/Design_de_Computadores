library ieee;
use ieee.std_logic_1164.all;

entity Aula15 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
	 CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
	 pc_teste: out std_logic_vector(31 downto 0);
	 UlaA: out std_logic_vector(31 downto 0);
	 UlaB: out std_logic_vector(31 downto 0);
	 rom: out std_logic_vector(31 downto 0);
	 ula: out std_logic_vector(31 downto 0)
  );
end entity;


architecture arquitetura of Aula15 is

-- Faltam alguns sinais:
	signal CLK: std_logic;
	signal inc_pc: std_logic_vector(31 downto 0);
	signal pc_rom: std_logic_vector(31 downto 0);
	signal rom_regs: std_logic_vector(31 downto 0);
	signal dado1: std_logic_vector(31 downto 0);
	signal dado2: std_logic_vector(31 downto 0);
	signal saidaUla: std_logic_vector(31 downto 0);
	signal Sinais_controle: std_logic_vector (8 downto 0);
	signal mux_banco: std_logic_vector(4 downto 0);
	signal saida_extSignal: std_logic_vector(31 downto 0);
	signal mux_ULA: std_logic_vector (31 downto 0);
	signal saida_RAM: std_logic_vector (31 downto 0);
	signal saida_Mux3: std_logic_vector (31 downto 0);
	signal saida_Inc2: std_logic_vector (31 downto 0);
	signal saida_Mux4: std_logic_vector (31 downto 0);
	signal saida_Mux5: std_logic_vector (31 downto 0);
	signal Z: std_logic;

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector

CLK <= CLOCK_50 ;


-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)

			 
										  

PC : entity work.registradorGenerico   generic map (larguraDados => 32)
	  port map (DIN => saida_Mux5, 
				   DOUT => pc_rom, 
				   ENABLE => '1', 
				   CLK => CLK, 
				   RST => '0');

incrementaPC : entity work.somaConstante  generic map (larguraDados => 32, constante => 4)
					port map(entrada => pc_rom, 
								saida => inc_pc);

ROM1 : entity work.ROMMIPS   generic map (dataWidth => 32, addrWidth => 32)
       port map (Endereco => pc_rom, 
					  Dado => rom_regs);
		  
Mux1 :  entity work.muxGenerico2x1 generic map (larguraDados => 5)
        port map(entradaA_MUX => rom_regs(20 downto 16),
                 entradaB_MUX =>  rom_regs(15 downto 11),
                 seletor_MUX => Sinais_controle(7),
                 saida_MUX => mux_banco);
					  
ext : entity work.estendeSinalGenerico   generic map (larguraDadoEntrada => 16, larguraDadoSaida => 32)
					  port map (estendeSinal_IN => rom_regs(15 downto 0), 
								   estendeSinal_OUT =>  saida_extSignal);
									
inc2 : entity work.somador  generic map (larguraDados => 32)
		 port map(entradaA => inc_pc,
					 entradaB => saida_extSignal(29 downto 0) & "00",
					 saida => saida_Inc2);
					 
Mux4 :  entity work.muxGenerico2x1 generic map (larguraDados => 32)
        port map(entradaA_MUX => inc_pc,
                 entradaB_MUX =>  saida_Inc2,
                 seletor_MUX => Sinais_controle(2) and Z,
                 saida_MUX => saida_Mux4);
			 
banco: entity work.bancoReg generic map(larguraDados => 32,larguraEndBancoRegs => 5)
		 port map(clk => CLK,
		    		 enderecoA => rom_regs(25 downto 21),
					 enderecoB => rom_regs(20 downto 16),
                enderecoC => mux_banco,
                dadoEscritaC=> saida_Mux3,
					 escreveC => Sinais_controle(6),
					 saidaA => dado1,
					 saidaB => dado2);
					 
Mux2 :  entity work.muxGenerico2x1 generic map (larguraDados => 32)
        port map(entradaA_MUX => dado2,
                 entradaB_MUX =>  saida_extSignal,
                 seletor_MUX => Sinais_controle(5),
                 saida_MUX => mux_ULA);
					 
ULA1 : entity work.ULASomaSub  generic map(larguraDados => 32)
       port map (entradaA => dado1, 
					  entradaB =>  mux_ULA, 
					  saida => saidaUla, 
					  seletor => Sinais_controle(4));

							
RAM : entity work.memoriaRAM   generic map (dataWidth => 32, addrWidth => 32)
      port map (Endereco => saidaUla, 
				    we => Sinais_controle(0), 
					 re => Sinais_controle(1), 
					 Dado_in => dado2, 
					 dado_out => saida_RAM, 
					 clk => CLK);

Mux3 :  entity work.muxGenerico2x1 generic map (larguraDados => 32)
        port map(entradaA_MUX => saidaUla,
                 entradaB_MUX =>  saida_RAM,
                 seletor_MUX => Sinais_controle(3),
                 saida_MUX => saida_Mux3);

Mux5 :  entity work.muxGenerico2x1 generic map (larguraDados => 32)
        port map(entradaA_MUX => saida_Mux4,
                 entradaB_MUX => inc_pc(31 downto 28) & rom_regs(25 downto 0) & "00",
                 seletor_MUX => Sinais_controle(8),
                 saida_MUX => saida_Mux5);

					  
Sinais_controle(8) <= '1' when rom_regs(31 downto 26) = "000010" else '0';
Sinais_controle(7) <= '1' when rom_regs(31 downto 26) = "000000" else '0';					
Sinais_controle(6) <= '1' when rom_regs(31 downto 26) = "000000" or rom_regs(31 downto 26) = "100011" else '0';
Sinais_controle(5) <= '1' when rom_regs(31 downto 26) = "100011" or rom_regs(31 downto 26) = "101011" else '0';






Sinais_controle(4) <= '1' when rom_regs(5 downto 0) = "100000" or rom_regs(31 downto 26) = "100011" or rom_regs(31 downto 26) = "101011" else '0';
Sinais_controle(3) <= '1' when rom_regs(31 downto 26) = "100011" else '0'; 
Sinais_controle(2) <= '1' when rom_regs(31 downto 26) = "000100" else '0';
Sinais_controle(1) <= '1' when rom_regs(31 downto 26) = "100011" else '0';
Sinais_controle(0) <= '1' when rom_regs(31 downto 26) = "101011" else '0';

UlaA <= dado1;
UlaB <= mux_ULA;
pc_teste <= pc_rom;
rom <= rom_regs; 				
ula <= saidaUla;
Z <= 	not(saidaUla(0) or saidaUla(1) or saidaUla(2) or saidaUla(3) or saidaUla(4) or saidaUla(5) or saidaUla(6) or saidaUla(7) 
		or saidaUla(8) or saidaUla(9) or saidaUla(10) or saidaUla(11) or saidaUla(12) or saidaUla(13) or saidaUla(14) or saidaUla(15) 
		or saidaUla(16) or saidaUla(17) or saidaUla(18) or saidaUla(19) or saidaUla(20) or saidaUla(21) or saidaUla(22) or saidaUla(23) 
		or saidaUla(24) or saidaUla(25) or saidaUla(26) or saidaUla(27) or saidaUla(28) or saidaUla(29) or saidaUla(30) or saidaUla(31));			
				
end architecture;