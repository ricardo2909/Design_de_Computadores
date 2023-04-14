library ieee;
use ieee.std_logic_1164.all;

entity Aula7 is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
        larguraEnderecos : natural := 9;
        simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
	 CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    SW: in std_logic_vector(9 downto 0);
    LEDR  : out std_logic_vector(9 downto 0);
	 HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(6 downto 0)
  );
end entity;


architecture arquitetura of Aula7 is

-- Faltam alguns sinais:
	signal wr: std_logic;
	signal rd: std_logic;
	signal pc_rom: std_logic_vector(8 downto 0);
	signal saida_rom: std_logic_vector(12 downto 0);
	signal saida_ram: std_logic_vector(7 downto 0);
	signal saida_reg: std_logic_vector(7 downto 0);
	signal Data_Address: std_logic_vector(8 downto 0);
	signal saida_decoder1: std_logic_vector(7 downto 0);
	signal saida_decoder2: std_logic_vector(7 downto 0);
	signal saida_FF1: std_logic;
	signal saida_FF2: std_logic;
	signal habFF1: std_logic;
	signal habFF2: std_logic;
	signal habReg8: std_logic;
	signal saida_REG8: std_logic_vector(7 downto 0);
	signal CLK: std_logic;
	signal pcTeste: std_logic_vector(6 downto 0);
	
  

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;


-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.memoriaROM   generic map (dataWidth => 13, addrWidth => 9)
          port map (Endereco => pc_rom, Dado => saida_rom);
			 

RAM : entity work.memoriaRAM   generic map (dataWidth => 8, addrWidth => 6)
          port map (addr => Data_address(5 downto 0),  we => wr, 
						  re => rd,
						  habilita => saida_decoder1(0),
						  clk => CLK,
						  dado_in => saida_reg,
						  dado_out => saida_ram);
						  
CPU : entity work.CPU port map (Wr => wr,
										  Rd => rd,
										  ROM_Address => pc_rom,
										  Instruction_IN => saida_rom,
										  Data_IN => saida_ram,
										  Data_OUT => saida_reg,
										  Data_Address => Data_Address,
										  Clock => CLK);
										  

										  
DECO1 : entity work.decoder3x8 port map( entrada => Data_Address (8 downto 6),
													  saida => saida_decoder1);
													  
DECO2 : entity work.decoder3x8 port map( entrada => Data_Address (2 downto 0),
													  saida => saida_decoder2);
													  
FF1: entity work.FlipFlop port map (DIN => saida_reg(0),
												DOUT => saida_FF1,
												ENABLE => habFF1,
											   CLK => CLK,
												RST => '0');
												
FF2: entity work.FlipFlop port map (DIN => saida_reg(0),
												DOUT => saida_FF2,
												ENABLE => habFF2,
											   CLK => CLK,
												RST => '0');
												
REG8 : entity work.registradorGenerico   generic map (larguraDados => 8)
          port map (DIN => saida_reg(7 downto 0), DOUT => saida_REG8, ENABLE => habReg8, CLK => CLK, RST => '0');

			 
display5 :  entity work.conversorHex7Seg
        port map(dadoHex => pc_rom(3 downto 0),
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => pcTeste);			 

HEX5 <= pcTeste;			 
habReg8 <= saida_decoder1(4) and wr and saida_decoder2(0);			 
habFF2  <= saida_decoder1(4) and wr and saida_decoder2(1);			 
habFF1  <= saida_decoder1(4) and wr and saida_decoder2(2);
LEDR (9) <= saida_FF1;
LEDR (8) <= saida_FF2;
LEDR (7 downto 0) <= saida_REG8;

end architecture;