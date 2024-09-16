CREATE DATABASE BetPrime;
USE BetPrime;
######## Criação Tabelas #########
	
########## UTILIZADOR ##########

CREATE TABLE Morada(
id_morada INT NOT NULL AUTO_INCREMENT,
endereco VARCHAR(255) NOT NULL,
codigo_postal VARCHAR(255) NOT NULL UNIQUE,
localidade VARCHAR(255) NOT NULL,
pais VARCHAR(255) NOT NULL,
cidade VARCHAR(255) NOT NULL,
PRIMARY KEY (id_morada)
);

CREATE TABLE Utilizador(
id_utilizador INT NOT NULL AUTO_INCREMENT,
id_morada INT NOT NULL,
nome VARCHAR(50) NOT NULL,
apelido VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL UNIQUE,
data_nascimento DATE NOT NULL,
nif VARCHAR(20) NOT NULL UNIQUE,
ativo BOOLEAN NOT NULL DEFAULT TRUE,
CONSTRAINT FK_user_morada FOREIGN KEY (id_morada)
	REFERENCES Morada(id_morada),
PRIMARY KEY (id_utilizador)
);

CREATE TABLE Verificacao_Indentidade(
id_verificacao_indentidade INT NOT NULL AUTO_INCREMENT,
id_utilizador INT NOT NULL,
img_documento VARCHAR(255) NOT NULL,
data_envio DATE NOT NULL,
status ENUM('Em análise', 'Verificado', 'Recusado') NOT NULL DEFAULT 'Em análise',
CONSTRAINT FK_VerificacaoIndentidade_Utilizador FOREIGN KEY (id_utilizador)
	REFERENCES Utilizador (id_utilizador)
    ON DELETE CASCADE,
PRIMARY KEY (id_verificacao_indentidade)
);

########## INDIVIDUAL ##########
    
CREATE TABLE Modalidade_Individual(
id_modalidade_individual INT AUTO_INCREMENT,
nome_modalidade_individual VARCHAR (255) NOT NULL,
	
PRIMARY KEY (id_modalidade_individual)
);

CREATE TABLE Jogo_Individual(
id_jogo_individual INT AUTO_INCREMENT,
id_modalidade_individual INT NOT NULL,
nome_jogo VARCHAR(255) NOT NULL,
data DATETIME NOT NULL,

CONSTRAINT FK_ModalidadeIndividual_JogoIndividual FOREIGN KEY (id_modalidade_individual)
	REFERENCES Modalidade_Individual (id_modalidade_individual),

PRIMARY KEY (id_jogo_individual)
);

CREATE TABLE Jogador(
id_jogador INT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
apelido VARCHAR(255) NOT NULL,
nacionalidade VARCHAR(255) NOT NULL,
PRIMARY KEY (id_jogador)
);

CREATE TABLE Jogador_JogoIndividual(
id_jogador INT NOT NULL,
id_jogo_individual INT NOT NULL,
CONSTRAINT FK_Jogador_JogadorJogoIndividual FOREIGN KEY (id_jogador)
    REFERENCES Jogador(id_jogador)
    ON DELETE CASCADE,
CONSTRAINT FK_JogoIndividual_JogadorJogoIndividual FOREIGN KEY (id_jogo_individual)
    REFERENCES Jogo_Individual (id_jogo_individual)
    ON DELETE CASCADE,
    
PRIMARY KEY (id_jogador, id_jogo_individual)
);

########## COLETIVO ##########

CREATE TABLE Equipa (
id_equipa INT AUTO_INCREMENT,
nome_equipa VARCHAR(255),
PRIMARY KEY (id_equipa)
);

CREATE TABLE Jogador_Equipa(
id_jogador INT,
id_equipa INT,

CONSTRAINT FK_Jogador_JogadorEquipa FOREIGN KEY(id_jogador)
    REFERENCES Jogador(id_jogador)
    ON DELETE CASCADE,
CONSTRAINT FK_Equipa_JogadorEquipa FOREIGN KEY(id_equipa)
    REFERENCES Equipa(id_equipa)
    ON DELETE CASCADE,
    
PRIMARY KEY (id_jogador, id_equipa)
);

CREATE TABLE Modalidade_Coletiva(
id_modalidade_coletiva INT AUTO_INCREMENT,
nome_modalidade VARCHAR(255) NOT NULL,

PRIMARY KEY (id_modalidade_coletiva)
);

CREATE TABLE Jogo_Coletivo (
id_jogo_coletivo INT AUTO_INCREMENT,
id_modalidade_coletiva INT NOT NULL,
nome_jogo VARCHAR(255),
resultado VARCHAR(255),

CONSTRAINT FK_ModalidadeColetiva_JogoColetivo FOREIGN KEY (id_modalidade_coletiva)
	REFERENCES Modalidade_Coletiva(id_modalidade_coletiva),
    
PRIMARY KEY (id_jogo_coletivo)
);

CREATE TABLE JogoColetivo_Equipa(
id_equipa INT NOT NULL,
id_jogo_coletivo INT NOT NULL,

CONSTRAINT FK_Equipa_JogoColetivoEquipa FOREIGN KEY (id_equipa)
    REFERENCES Equipa(id_equipa)
    ON DELETE CASCADE,
CONSTRAINT FK_JogoColetivo_JogoColetivoEquipa FOREIGN KEY (id_jogo_coletivo)
    REFERENCES Jogo_Coletivo(id_jogo_coletivo)
    ON DELETE CASCADE,
    
PRIMARY KEY(id_equipa, id_jogo_coletivo)
);


########## APOSTA ##########

CREATE TABLE Tipo_Aposta(
id_tipo_aposta INT AUTO_INCREMENT,
nome_tipo_aposta VARCHAR(255) NOT NULL,
disponivel BOOLEAN NOT NULL DEFAULT TRUE,

PRIMARY KEY (id_tipo_aposta)
);

CREATE TABLE Aposta_JogoIndividual(
id_aposta_individual INT NOT NULL AUTO_INCREMENT,
id_jogador INT  NOT NULL,
id_tipo_aposta INT NOT NULL,
id_jogo_individual INT NOT NULL,
detalhe_aposta VARCHAR(255),
valor_odd DECIMAL(10,2) NOT NULL,

CONSTRAINT FK_jogador_ApostaJogoIndividual FOREIGN KEY (id_jogador)
    REFERENCES Jogador(id_jogador),
CONSTRAINT FK_tipoAposta_ApostaJogoIndividual FOREIGN KEY (id_tipo_aposta)
    REFERENCES Tipo_Aposta(id_tipo_aposta),
CONSTRAINT FK_Jogador_JogoIndividual_ApostaJogoIndividual FOREIGN KEY (id_jogador, id_jogo_individual)
    REFERENCES Jogador_JogoIndividual(id_jogador, id_jogo_individual)
    ON DELETE CASCADE,
    
PRIMARY KEY (id_aposta_individual)
);

CREATE TABLE Aposta_Jogador(
id_tipo_aposta INT NOT NULL,
id_jogador INT NOT NULL,
id_equipa INT NOT NULL,
detalhe_aposta VARCHAR(255),
valor_odd DECIMAL(10,2) NOT NULL,

CONSTRAINT FK_Tipo_Aposta_ApostaJogador FOREIGN KEY(id_tipo_aposta)
	REFERENCES Tipo_Aposta(id_tipo_aposta),
CONSTRAINT FK_JogadorEquipa_ApostaJogador FOREIGN KEY(id_jogador, id_equipa)
	REFERENCES Jogador_Equipa(id_jogador, id_equipa)
);

CREATE TABLE Aposta_JogoColetivo(
id_aposta_jogo_coletivo INT AUTO_INCREMENT,
id_jogo_coletivo INT NOT NULL,
id_equipa INT,
id_tipo_aposta INT NOT NULL,
detalhe_aposta VARCHAR(255),
valor_odd DECIMAL(10,2) NOT NULL,

CONSTRAINT FK_JogoColetivoEquipa_ApostaJogoColetivo FOREIGN KEY (id_equipa, id_jogo_coletivo)
    REFERENCES JogoColetivo_Equipa (id_equipa, id_jogo_coletivo)
    ON DELETE CASCADE,
CONSTRAINT FK_TipoAposta_ApostaJogoColetivo FOREIGN KEY (id_tipo_aposta)
    REFERENCES Tipo_Aposta (id_tipo_aposta),
	
PRIMARY KEY (id_aposta_jogo_coletivo)
);


########## BOLETIM ##########

CREATE TABLE Tipo_Aposta_Boletim(
id_tipo_aposta_boletim INT NOT NULL AUTO_INCREMENT,
nome_tipo_aposta_boletim VARCHAR(255) NOT NULL,
PRIMARY KEY (id_tipo_aposta_boletim)
);

CREATE TABLE Boletim(
id_boletim INT NOT NULL AUTO_INCREMENT,
id_tipo_aposta_boletim INT NOT NULL,
id_utilizador INT NOT NULL,
valor_apostado FLOAT NOT NULL,
data_bilhete DATE NOT NULL,
resultado_boletim BOOLEAN DEFAULT FALSE NOT NULL,
CONSTRAINT FK_tipoApostaBilhete_Boletim FOREIGN KEY (id_tipo_aposta_boletim)
	REFERENCES Tipo_Aposta_Boletim(id_tipo_aposta_boletim),
CONSTRAINT FK_Utilizador_Boletim FOREIGN KEY (id_utilizador)
	REFERENCES Utilizador (id_utilizador)
    ON DELETE CASCADE,
PRIMARY KEY (id_boletim)
);

CREATE TABLE ApostaJogoIndividual_Boletim(
id_boletim INT NOT NULL,
id_aposta_individual INT NOT NULL,

CONSTRAINT FK_Bilhete_ApostaJogoIndividualBoletim FOREIGN KEY (id_boletim)
    REFERENCES Boletim(id_boletim)
    ON DELETE CASCADE,
CONSTRAINT FK_Tipo_ApostaJogoIndividual_Boletim FOREIGN KEY (id_aposta_individual)
    REFERENCES Aposta_JogoIndividual(id_aposta_individual)
    ON DELETE CASCADE
);

CREATE TABLE ApostaJogoColetivo_Boletim(
id_boletim INT NOT NULL,
id_aposta_jogo_coletivo INT NOT NULL,

CONSTRAINT FK_Bilhete_ApostaJogoColetivoBoletim FOREIGN KEY (id_boletim)
    REFERENCES Boletim (id_boletim)
    ON DELETE CASCADE,
CONSTRAINT FK_ApostaJogoColetivo_ApostaJogoColetivoBilhete FOREIGN KEY (id_aposta_jogo_coletivo)
    REFERENCES Aposta_JogoColetivo (id_aposta_jogo_coletivo)
    ON DELETE CASCADE
); 

CREATE TABLE ApostaJogador_Boletim(
id_boletim INT NOT NULL,
id_equipa INT NOT NULL,
id_jogador INT NOT NULL,

CONSTRAINT FK_ApostaJogadorBoletim_Boletim FOREIGN KEY (id_boletim)
    REFERENCES Boletim(id_boletim)
    ON DELETE CASCADE,
CONSTRAINT FK_ApostaJogadorBoletim_ApostaJogador FOREIGN KEY (id_equipa, id_jogador)
    REFERENCES Jogador_Equipa(id_equipa, id_jogador)
    ON DELETE CASCADE
);