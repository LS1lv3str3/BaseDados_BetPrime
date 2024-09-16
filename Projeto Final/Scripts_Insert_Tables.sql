##### SCRIPTS INSERT ######
USE BetPrime;
INSERT INTO Morada (endereco, codigo_postal, localidade, pais, cidade)
VALUES 
('Rua da Liberdade, 123', '1000-001', 'Lisboa', 'Portugal', 'Lisboa'),
('Avenida dos Aliados, 456', '4000-002', 'Porto', 'Portugal', 'Porto'),
('Praça do Comércio, 789', '1100-003', 'Lisboa', 'Portugal', 'Lisboa'),
('Rua de Santa Catarina, 234', '4000-004', 'Porto', 'Portugal', 'Porto'),
('Rua Augusta, 321', '1100-005', 'Lisboa', 'Portugal', 'Lisboa'),
('Avenida da Boavista, 654', '4100-006', 'Porto', 'Portugal', 'Porto'),
('Largo da Estrela, 789', '1200-007', 'Lisboa', 'Portugal', 'Lisboa'),
('Rua de São João, 987', '4050-008', 'Porto', 'Portugal', 'Porto'),
('Avenida 25 de Abril, 543', '1050-009', 'Lisboa', 'Portugal', 'Lisboa'),
('Rua Sá da Bandeira, 654', '4000-010', 'Porto', 'Portugal', 'Porto');


INSERT INTO Utilizador (id_morada, nome, apelido, email, data_nascimento, nif)
VALUES 
(1, 'João', 'Silva', 'joao.silva@gmail.com', '1990-05-14', '123456789'),
(2, 'Ana', 'Pereira', 'ana.pereira@gmail.com', '1985-08-23', '234567890'),
(3, 'Miguel', 'Costa', 'miguel.costa@gmail.com', '1992-02-12', '345678901'),
(4, 'Rita', 'Carvalho', 'rita.carvalho@gmail.com', '1988-03-15', '456789012'),
(5, 'Pedro', 'Martins', 'pedro.martins@gmail.com', '1995-07-28', '567890123'),
(6, 'Sara', 'Rodrigues', 'sara.rodrigues@gmail.com', '1987-12-30', '678901234'),
(7, 'Tiago', 'Gomes', 'tiago.gomes@gmail.com', '1991-11-05', '789012345'),
(8, 'Helena', 'Fernandes', 'helena.fernandes@gmail.com', '1984-09-16', '890123456'),
(9, 'Carlos', 'Lopes', 'carlos.lopes@gmail.com', '1993-04-20', '901234567'),
(10, 'Marta', 'Nunes', 'marta.nunes@gmail.com', '1996-06-18', '012345678');


INSERT INTO Verificacao_Indentidade (id_utilizador, img_documento, data_envio, status)
VALUES
(1, 'doc_joao_silva.jpg', '2024-09-01', 'Em análise'),
(2, 'doc_ana_pereira.jpg', '2024-09-02', 'Verificado'),
(3, 'doc_miguel_costa.jpg', '2024-09-03', 'Recusado'),
(4, 'doc_rita_carvalho.jpg', '2024-09-04', 'Em análise'),
(5, 'doc_pedro_martins.jpg', '2024-09-05', 'Verificado'),
(6, 'doc_sara_rodrigues.jpg', '2024-09-06', 'Recusado'),
(7, 'doc_tiago_gomes.jpg', '2024-09-07', 'Em análise'),
(8, 'doc_helena_fernandes.jpg', '2024-09-08', 'Verificado'),
(9, 'doc_carlos_lopes.jpg', '2024-09-09', 'Recusado'),
(10, 'doc_marta_nunes.jpg', '2024-09-10', 'Em análise');


INSERT INTO Tipo_Aposta_Boletim (nome_tipo_aposta_boletim)
VALUES 
('Simples'),
('Múltipla'),
('Combinada');


INSERT INTO Modalidade_Individual (nome_modalidade_individual)
VALUES 
('Snooker'),
('Fórmula 1'),
('Ténis'),
('Padel'),
('Ciclismo');

#### Modaalidade Padel ####
INSERT INTO Jogador (nome, apelido, nacionalidade)
VALUES 
('Alejandro', 'Galán', 'Espanha'),
('Juan', 'Lebrón', 'Espanha'),
('Paquito', 'Navarro', 'Espanha'),
('Fernando', 'Belasteguín', 'Argentina'),
('Agustín', 'Tapia', 'Argentina'),
('Maxi', 'Sánchez', 'Argentina'),
('Sanyo', 'Gutiérrez', 'Argentina'),
('Javi', 'Rico', 'Espanha'),
('Franco', 'Stupaczuk', 'Argentina'),
('Martin', 'Di Nenno', 'Argentina');


##### Criar jogos Padel #####
INSERT INTO Jogo_Individual (id_modalidade_individual, nome_competicao, data)
VALUES 
(4, 'World Padel Tour - Madrid Open', '2024-03-15 10:00:00'),
(4, 'World Padel Tour - Barcelona Master', '2024-04-12 14:00:00'),
(4, 'World Padel Tour - Marbella Challenger', '2024-05-07 09:00:00'),
(4, 'World Padel Tour - Valencia Open', '2024-06-10 13:00:00'),
(4, 'World Padel Tour - Malaga Open', '2024-07-05 11:00:00'),
(4, 'World Padel Tour - Las Rozas Master', '2024-08-03 16:00:00'),
(4, 'World Padel Tour - Alicante Open', '2024-09-14 17:00:00'),
(4, 'World Padel Tour - Bilbao Open', '2024-10-20 18:00:00'),
(4, 'World Padel Tour - Menorca Master', '2024-11-02 12:00:00'),
(4, 'World Padel Tour - Madrid Finals', '2024-12-09 19:00:00');


-- Associação de Jogadores aos Jogos de Padel
-- World Padel Tour - Madrid Open
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(1, 1), (2, 1), (3, 1), (4, 1);

-- World Padel Tour - Barcelona Master
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(5, 2), (6, 2), (7, 2), (8, 2);

-- World Padel Tour - Marbella Challenger
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(9, 3), (10, 3), (1, 3), (2, 3);

-- World Padel Tour - Valencia Open
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(3, 4), (4, 4), (5, 4), (6, 4);

-- World Padel Tour - Malaga Open
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(7, 5), (8, 5), (9, 5), (10, 5);

-- World Padel Tour - Las Rozas Master
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(1, 6), (2, 6), (3, 6), (4, 6);

-- World Padel Tour - Alicante Open
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(5, 7), (6, 7), (7, 7), (8, 7);

-- World Padel Tour - Bilbao Open
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(9, 8), (10, 8), (1, 8), (2, 8);

-- World Padel Tour - Menorca Master
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(3, 9), (4, 9), (5, 9), (6, 9);

-- World Padel Tour - Madrid Finals
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(7, 10), (8, 10), (9, 10), (10, 10);

#### Modaalidade Ténis ####
INSERT INTO Jogador (nome, apelido, nacionalidade)
VALUES 
('Novak', 'Djokovic', 'Sérvia'),
('Carlos', 'Alcaraz', 'Espanha'),
('Daniil', 'Medvedev', 'Rússia'),
('Stefanos', 'Tsitsipas', 'Grécia'),
('Casper', 'Ruud', 'Noruega'),
('Jannik', 'Sinner', 'Itália'),
('Andrey', 'Rublev', 'Rússia'),
('Alexander', 'Zverev', 'Alemanha'),
('Holger', 'Rune', 'Dinamarca'),
('Matteo', 'Berrettini', 'Itália');


##### Criar jogos Ténis #####
INSERT INTO Jogo_Individual (id_modalidade_individual, nome_competicao, data)
VALUES 
(3, 'Australian Open - Final', '2024-01-28 15:00:00'),
(3, 'Roland Garros - Semi-Final', '2024-06-07 12:00:00'),
(3, 'Wimbledon - Final', '2024-07-14 14:00:00'),
(3, 'US Open - Quarter-Final', '2024-09-02 18:00:00'),
(3, 'ATP Finals - Round Robin', '2024-11-10 20:00:00'),
(3, 'Monte Carlo Masters - Final', '2024-04-14 16:00:00'),
(3, 'Madrid Open - Final', '2024-05-12 17:00:00'),
(3, 'Italian Open - Quarter-Final', '2024-05-17 13:00:00'),
(3, 'Paris Masters - Semi-Final', '2024-11-02 15:00:00'),
(3, 'Cincinnati Masters - Final', '2024-08-18 16:00:00');


-- Australian Open - Final (ID Jogo: 11)
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(11, 11),  -- Novak Djokovic
(12, 11);  -- Carlos Alcaraz

-- Roland Garros - Semi-Final (ID Jogo: 12)
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(13, 12),  -- Daniil Medvedev
(14, 12);  -- Stefanos Tsitsipas

-- Wimbledon - Final (ID Jogo: 13)
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(15, 13),  -- Casper Ruud
(16, 13);  -- Jannik Sinner

-- US Open - Quarter-Final (ID Jogo: 14)
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(17, 14),  -- Andrey Rublev
(18, 14);  -- Alexander Zverev

-- ATP Finals - Round Robin (ID Jogo: 15)
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(19, 15),  -- Holger Rune
(20, 15);  -- Matteo Berrettini

-- Monte Carlo Masters - Final (ID Jogo: 16)
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(11, 16),  -- Novak Djokovic
(13, 16);  -- Daniil Medvedev

-- Madrid Open - Final (ID Jogo: 17)
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(12, 17),  -- Carlos Alcaraz
(14, 17);  -- Stefanos Tsitsipas

-- Italian Open - Quarter-Final (ID Jogo: 18)
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(15, 18),  -- Casper Ruud
(16, 18);  -- Jannik Sinner

-- Paris Masters - Semi-Final (ID Jogo: 19)
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(17, 19),  -- Andrey Rublev
(18, 19);  -- Alexander Zverev

-- Cincinnati Masters - Final (ID Jogo: 20)
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(19, 20),  -- Holger Rune
(20, 20);  -- Matteo Berrettini


#### Modaalidade Snooker ####
INSERT INTO Jogador (nome, apelido, nacionalidade)
VALUES 
('Ronnie', 'O\'Sullivan', 'Reino Unido'),
('Judd', 'Trump', 'Reino Unido'),
('Mark', 'Selby', 'Reino Unido'),
('Neil', 'Robertson', 'Austrália'),
('John', 'Higgins', 'Reino Unido'),
('Ding', 'Junhui', 'China'),
('Mark', 'Allen', 'Irlanda do Norte'),
('Shaun', 'Murphy', 'Reino Unido'),
('Kyren', 'Wilson', 'Reino Unido'),
('Barry', 'Hawkins', 'Reino Unido');


##### Criar jogos Snooker #####
INSERT INTO Jogo_Individual (id_modalidade_individual, nome_competicao, data)
VALUES 
(1, 'World Snooker Championship - Final', '2024-05-05 14:00:00'),
(1, 'UK Championship - Semi-Final', '2024-11-24 16:00:00'),
(1, 'The Masters - Final', '2024-01-15 15:00:00'),
(1, 'China Open - Final', '2024-04-07 17:00:00'),
(1, 'Scottish Open - Final', '2024-12-15 18:00:00'),
(1, 'Welsh Open - Quarter-Final', '2024-02-17 19:00:00'),
(1, 'European Masters - Semi-Final', '2024-08-22 16:00:00'),
(1, 'English Open - Final', '2024-10-20 12:00:00'),
(1, 'Northern Ireland Open - Final', '2024-11-05 15:00:00'),
(1, 'Tour Championship - Final', '2024-03-24 18:00:00');


-- Jogos do World Snooker Championship - Final
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(21, 21),  -- Ronnie O'Sullivan
(22, 21);  -- Judd Trump

-- Jogos do UK Championship - Semi-Final
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(23, 22),  -- Mark Selby
(24, 22);  -- Neil Robertson

-- Jogos do The Masters - Final
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(25, 23),  -- John Higgins
(26, 23);  -- Ding Junhui

-- Jogos do China Open - Final
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(27, 24),  -- Mark Allen
(28, 24);  -- Shaun Murphy

-- Jogos do Scottish Open - Final
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(29, 25),  -- Kyren Wilson
(30, 25);  -- Barry Hawkins

-- Jogos do Welsh Open - Quarter-Final
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(21, 26),  -- Ronnie O'Sullivan
(23, 26);  -- Mark Selby

-- Jogos do European Masters - Semi-Final
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(22, 27),  -- Judd Trump
(24, 27);  -- Neil Robertson

-- Jogos do English Open - Final
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(25, 28),  -- John Higgins
(26, 28);  -- Ding Junhui

-- Jogos do Northern Ireland Open - Final
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(27, 29),  -- Mark Allen
(28, 29);  -- Shaun Murphy

-- Jogos do Tour Championship - Final
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(29, 30),  -- Kyren Wilson
(30, 30);  -- Barry Hawkins



#### Modaalidade Ciclismo ####
INSERT INTO Jogador (nome, apelido, nacionalidade)
VALUES 
('Tadej', 'Pogačar', 'Eslovénia'),
('Jonas', 'Vingegaard', 'Dinamarca'),
('Primož', 'Roglič', 'Eslovénia'),
('Egan', 'Bernal', 'Colômbia'),
('Geraint', 'Thomas', 'Reino Unido'),
('David', 'Gaudu', 'França'),
('Simon', 'Yates', 'Reino Unido'),
('Adam', 'Yates', 'Reino Unido'),
('Richard', 'Carapaz', 'Equador'),
('Enric', 'Mas', 'Espanha'),
('Wout', 'Van Aert', 'Bélgica'),
('Tom', 'Pidcock', 'Reino Unido'),
('Jai', 'Hindley', 'Austrália'),
('Mikel', 'Landa', 'Espanha'),
('Ben', 'O\'Connor', 'Austrália'),
('Julian', 'Alaphilippe', 'França'),
('Matej', 'Mohorič', 'Eslovénia'),
('Nairo', 'Quintana', 'Colômbia'),
('Thibaut', 'Pinot', 'França'),
('Romain', 'Bardet', 'França');


-- Associar Ciclistas à Volta a França 2024 (id_jogo_individual = 36)
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(31, 36), -- Tadej Pogačar
(32, 36), -- Jonas Vingegaard
(33, 36), -- Primož Roglič
(34, 36), -- Egan Bernal
(35, 36), -- Geraint Thomas
(36, 36), -- David Gaudu
(37, 36), -- Simon Yates
(38, 36), -- Adam Yates
(39, 36), -- Richard Carapaz
(40, 36); -- Enric Mas;

-- Associar Ciclistas à Volta a Portugal 2024
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(31, 37), -- Tadej Pogačar
(32, 37), -- Jonas Vingegaard
(33, 37), -- Primož Roglič
(34, 37), -- Egan Bernal
(41, 37), -- Wout Van Aert
(42, 37), -- Tom Pidcock
(43, 37), -- Jai Hindley
(44, 37), -- Mikel Landa
(45, 37); -- Ben O'Connor;

-- Associar Ciclistas ao Giro d'Italia 2024
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(31, 38), -- Tadej Pogačar
(33, 38), -- Primož Roglič
(34, 38), -- Egan Bernal
(36, 38), -- David Gaudu
(43, 38), -- Jai Hindley
(44, 38), -- Mikel Landa
(46, 38), -- Julian Alaphilippe
(47, 38); -- Matej Mohorič;

-- Associar Ciclistas à Vuelta a España 2024
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(32, 39), -- Jonas Vingegaard
(33, 39), -- Primož Roglič
(34, 39), -- Egan Bernal
(36, 39), -- David Gaudu
(40, 39), -- Enric Mas
(41, 39), -- Wout Van Aert
(42, 39), -- Tom Pidcock
(43, 39); -- Jai Hindley;

-- Associar Ciclistas à Paris-Roubaix 2024
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(31, 40), -- Tadej Pogačar
(32, 40), -- Jonas Vingegaard
(41, 40), -- Wout Van Aert
(45, 40), -- Ben O'Connor
(46, 40), -- Julian Alaphilippe
(47, 40), -- Matej Mohorič
(48, 40), -- Nairo Quintana
(49, 40), -- Thibaut Pinot
(50, 40);-- Romain Bardet;


##### Criar Corridas Ciclismo #####
INSERT INTO Jogo_Individual (id_modalidade_individual, nome_competicao, data)
VALUES 
(5, 'Volta a França 2024', '2024-07-06 10:00:00'),
(5, 'Volta a Portugal 2024', '2024-08-01 09:00:00'),
(5, 'Giro d\'Italia 2024', '2024-05-11 10:00:00'),
(5, 'Vuelta a España 2024', '2024-08-24 10:00:00'),
(5, 'Paris-Roubaix 2024', '2024-04-14 11:00:00');


#### Modaalidade Fórmula1 ####
INSERT INTO Jogador (nome, apelido, nacionalidade)
VALUES 
('Max', 'Verstappen', 'Países Baixos'),
('Sergio', 'Pérez', 'México'),
('Charles', 'Leclerc', 'Mónaco'),
('Carlos', 'Sainz', 'Espanha'),
('Lewis', 'Hamilton', 'Reino Unido'),
('George', 'Russell', 'Reino Unido'),
('Fernando', 'Alonso', 'Espanha'),
('Lance', 'Stroll', 'Canadá'),
('Lando', 'Norris', 'Reino Unido'),
('Oscar', 'Piastri', 'Austrália'),
('Pierre', 'Gasly', 'França'),
('Esteban', 'Ocon', 'França'),
('Valtteri', 'Bottas', 'Finlândia'),
('Guanyu', 'Zhou', 'China'),
('Kevin', 'Magnussen', 'Dinamarca'),
('Nico', 'Hülkenberg', 'Alemanha'),
('Yuki', 'Tsunoda', 'Japão'),
('Daniel', 'Ricciardo', 'Austrália'),
('Alexander', 'Albon', 'Tailândia'),
('Logan', 'Sargeant', 'EUA');


##### Criar Circuitos Formula 1 #####
INSERT INTO Jogo_Individual (id_modalidade_individual, nome_competicao, data)
VALUES 
(2, 'Grande Prémio do Bahrein', '2024-03-03 15:00:00'),
(2, 'Grande Prémio de Mónaco', '2024-05-26 14:00:00'),
(2, 'Grande Prémio da Grã-Bretanha', '2024-07-14 16:00:00'),
(2, 'Grande Prémio da Bélgica', '2024-08-04 14:00:00'),
(2, 'Grande Prémio de Abu Dhabi', '2024-12-01 14:00:00');

-- Grande Prémio do Bahrein (id_jogo_individual = 31)
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(36, 31), -- Max Verstappen
(37, 31), -- Sergio Pérez
(38, 31), -- Charles Leclerc
(39, 31), -- Carlos Sainz
(40, 31), -- Lewis Hamilton
(41, 31), -- George Russell
(42, 31), -- Fernando Alonso
(43, 31), -- Lance Stroll
(44, 31), -- Lando Norris
(45, 31), -- Oscar Piastri
(46, 31), -- Pierre Gasly
(47, 31), -- Esteban Ocon
(48, 31), -- Valtteri Bottas
(49, 31), -- Guanyu Zhou
(50, 31), -- Kevin Magnussen
(51, 31), -- Nico Hülkenberg
(52, 31), -- Yuki Tsunoda
(53, 31), -- Daniel Ricciardo
(54, 31), -- Alexander Albon
(55, 31); -- Logan Sargeant

-- Grande Prémio de Mónaco (id_jogo_individual = 32)
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(36, 32),
(37, 32),
(38, 32),
(39, 32),
(40, 32),
(41, 32),
(42, 32),
(43, 32),
(44, 32),
(45, 32),
(46, 32),
(47, 32),
(48, 32),
(49, 32),
(50, 32),
(51, 32),
(52, 32),
(53, 32),
(54, 32),
(55, 32);

-- Grande Prémio da Grã-Bretanha (id_jogo_individual = 33)
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(36, 33),
(37, 33),
(38, 33),
(39, 33),
(40, 33),
(41, 33),
(42, 33),
(43, 33),
(44, 33),
(45, 33),
(46, 33),
(47, 33),
(48, 33),
(49, 33),
(50, 33),
(51, 33),
(52, 33),
(53, 33),
(54, 33),
(55, 33);

-- Grande Prémio da Bélgica (id_jogo_individual = 34)
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(36, 34),
(37, 34),
(38, 34),
(39, 34),
(40, 34),
(41, 34),
(42, 34),
(43, 34),
(44, 34),
(45, 34),
(46, 34),
(47, 34),
(48, 34),
(49, 34),
(50, 34),
(51, 34),
(52, 34),
(53, 34),
(54, 34),
(55, 34);

-- Grande Prémio de Abu Dhabi (id_jogo_individual = 35)
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(36, 35),
(37, 35),
(38, 35),
(39, 35),
(40, 35),
(41, 35),
(42, 35),
(43, 35),
(44, 35),
(45, 35),
(46, 35),
(47, 35),
(48, 35),
(49, 35),
(50, 35),
(51, 35),
(52, 35),
(53, 35),
(54, 35),
(55, 35);


-- ##### CRIAR JOGADORES DESPORTOS COLETIVOS ######
-- Jogadores do FC Porto
INSERT INTO Jogador (nome, apelido, nacionalidade)
VALUES 
('Diogo', 'Costa', 'Portugal'),
('Pepe', 'Rodrigues', 'Portugal'),
('Mehdi', 'Taremi', 'Irão'),
('Otávio', 'Monteiro', 'Brasil'),
('Evanilson', 'Barbosa', 'Brasil'),

-- Jogadores do SL Benfica
('Odysseas', 'Vlachodimos', 'Grécia'),
('António', 'Silva', 'Portugal'),
('João', 'Mário', 'Portugal'),
('Ángel', 'Di María', 'Argentina'),
('Rafa', 'Silva', 'Portugal'),

-- Jogadores do Sporting CP
('Antonio', 'Adán', 'Espanha'),
('Sebastián', 'Coates', 'Uruguai'),
('Pedro', 'Gonçalves', 'Portugal'),
('Marcus', 'Edwards', 'Inglaterra'),
('Paulinho', 'Teixeira', 'Portugal'),

-- Jogadores do SC Braga
('Matheus', 'Lima', 'Brasil'),
('Ricardo', 'Horta', 'Portugal'),
('Al Musrati', 'Ali', 'Líbia'),
('Iuri', 'Medeiros', 'Portugal'),
('Vítor', 'Oliveira', 'Portugal'),

-- Jogadores do Vitória SC
('Bruno', 'Varela', 'Portugal'),
('André', 'André', 'Portugal'),
('Nélson', 'Luz', 'Angola'),
('Mikel', 'Villanueva', 'Venezuela'),
('André', 'Silva', 'Portugal'),

-- Jogadores do Rio Ave FC
('Jhonatan', 'Luiz', 'Brasil'),
('Aderlan', 'Santos', 'Brasil'),
('Costinha', 'Costa', 'Portugal'),
('Pedro', 'Amador', 'Portugal'),
('Hernâni', 'Fortes', 'Portugal'),

-- Jogadores Real Madrid
('Thibaut', 'Courtois', 'Bélgica'),
('Éder', 'Militão', 'Brasil'),
('Vinícius', 'Júnior', 'Brasil'),
('Luka', 'Modric', 'Croácia'),
('Federico', 'Valverde', 'Uruguai'),

-- Jogadores do FC Barcelona
('Marc-André', 'ter Stegen', 'Alemanha'),
('Ronald', 'Araújo', 'Uruguai'),
('Pedri', 'González', 'Espanha'),
('Robert', 'Lewandowski', 'Polónia'),
('Frenkie', 'de Jong', 'Países Baixos'),

-- Jogadores do Atlético Madrid
('Jan', 'Oblak', 'Eslovénia'),
('José María', 'Giménez', 'Uruguai'),
('Koke', 'Resurrección', 'Espanha'),
('Antoine', 'Griezmann', 'França'),
('Álvaro', 'Morata', 'Espanha'),

-- Jogadores do Sevilla FC
('Yassine', 'Bounou', 'Marrocos'),
('Jesús', 'Navas', 'Espanha'),
('Ivan', 'Rakitic', 'Croácia'),
('Erik', 'Lamela', 'Argentina'),
('Youssef', 'En-Nesyri', 'Marrocos'),

-- Jogadores do Real Betis
('Claudio', 'Bravo', 'Chile'),
('Guido', 'Rodríguez', 'Argentina'),
('Sergio', 'Canales', 'Espanha'),
('Borja', 'Iglesias', 'Espanha'),
('Nabil', 'Fekir', 'França'),

-- Jogadores do Villarreal CF
('Gerónimo', 'Rulli', 'Argentina'),
('Pau', 'Torres', 'Espanha'),
('Dani', 'Parejo', 'Espanha'),
('Yeremy', 'Pino', 'Espanha'),
('Gerard', 'Moreno', 'Espanha');


INSERT INTO Equipa (nome_equipa)
VALUES 
-- Inserir Equipas do Campeonato Português
('FC Porto'),
('SL Benfica'),
('Sporting CP'),
('SC Braga'),
('Vitória SC'),
('Rio Ave FC'),

-- Inserir Equipas do Campeonato Espanhol
('Real Madrid'),
('FC Barcelona'),
('Atlético Madrid'),
('Sevilla FC'),
('Real Betis'),
('Villarreal CF');


-- Associações para as equipas do Campeonato Português
-- Jogadores do FC Porto (IDs de 71 a 75)
INSERT INTO Jogador_Equipa (id_jogador, id_equipa)
VALUES
(71, 1), 
(72, 1), 
(73, 1), 
(74, 1), 
(75, 1),

-- Jogadores do SL Benfica (IDs de 76 a 80)
(76, 2), 
(77, 2), 
(78, 2), 
(79, 2),
(80, 2),

-- Jogadores do Sporting CP (IDs de 81 a 85)
(81, 3), 
(82, 3), 
(83, 3), 
(84, 3), 
(85, 3),

-- Jogadores do SC Braga (IDs de 86 a 90)
(86, 4), 
(87, 4), 
(88, 4), 
(89, 4), 
(90, 4),

-- Jogadores do Vitória SC (IDs de 91 a 95)
(91, 5), 
(92, 5), 
(93, 5), 
(94, 5), 
(95, 5),

-- Jogadores do Rio Ave FC (IDs de 96 a 100)
(96, 6), 
(97, 6), 
(98, 6), 
(99, 6), 
(100, 6),

-- Associações para as equipas do Campeonato Espanhol
-- Jogadores do Real Madrid (IDs de 101 a 105)
(101, 7), 
(102, 7), 
(103, 7), 
(104, 7), 
(105, 7),

-- Jogadores do FC Barcelona (IDs de 106 a 110)
(106, 8), 
(107, 8), 
(108, 8), 
(109, 8), 
(110, 8),

-- Jogadores do Atlético Madrid (IDs de 111 a 115)
(111, 9), 
(112, 9),
(113, 9), 
(114, 9), 
(115, 9),

-- Jogadores do Sevilla FC (IDs de 116 a 120)
(116, 10), 
(117, 10), 
(118, 10), 
(119, 10), 
(120, 10),

-- Jogadores do Real Betis (IDs de 121 a 125)
(121, 11), 
(122, 11), 
(123, 11), 
(124, 11), 
(125, 11),

-- Jogadores do Villarreal CF (IDs de 126 a 130)
(126, 12), 
(127, 12), 
(128, 12), 
(129, 12), 
(130, 12);


-- Inserir Equipas de Andebol
INSERT INTO Equipa (nome_equipa)
VALUES 
('FC Porto Andebol'),
('SL Benfica Andebol'),
('Sporting CP Andebol'),
('SC Braga Andebol'),
('ABC de Braga'),
('Águas Santas');


-- ###### Jogadores de ANDEBOL ######
INSERT INTO Jogador (nome, apelido, nacionalidade)
VALUES
('Miguel', 'Martins', 'Portugal'),
('Victor', 'Iturriza', 'Cuba'),
('Diogo', 'Branquinho', 'Portugal'),
('Daymaro', 'Salina', 'Cuba'),
('Rui', 'Silva', 'Portugal'),
('Carlos', 'Resende', 'Portugal'),
('João', 'Pais', 'Portugal'),
('Belone', 'Moreira', 'Portugal'),
('Pedro', 'Seabra', 'Portugal'),
('Bélone', 'Murtaza', 'Angola'),
('Frankis', 'Carol', 'Cuba'),
('Edmilson', 'Araújo', 'Portugal'),
('Tiago', 'Rocha', 'Portugal'),
('Manuel', 'Gaspar', 'Portugal'),
('Gonçalo', 'Vieira', 'Portugal'),
('Hugo', 'Lima', 'Portugal'),
('Joaquim', 'Machado', 'Portugal'),
('João', 'Oliveira', 'Portugal'),
('Pedro', 'Ferreira', 'Portugal'),
('Luis', 'Monteiro', 'Portugal'),
('Nuno', 'Grilo', 'Portugal'),
('João', 'Ferreira', 'Portugal'),
('André', 'Gomes', 'Portugal'),
('Fábio', 'Magalhães', 'Portugal'),
('Carlos', 'Martins', 'Portugal'),
('Pedro', 'Cruz', 'Portugal'),
('André', 'Reis', 'Portugal'),
('Hugo', 'Santos', 'Portugal'),
('Rui', 'Batista', 'Portugal'),
('Tiago', 'Teixeira', 'Portugal');


-- FC Porto Andebol (IDs 131 a 135)
INSERT INTO Jogador_Equipa (id_jogador, id_equipa)
VALUES
(131, 13), 
(132, 13), 
(133, 13), 
(134, 13), 
(135, 13),

-- SL Benfica Andebol (IDs 136 a 140)
(136, 14), 
(137, 14), 
(138, 14), 
(139, 14), 
(140, 14),

-- Sporting CP Andebol (IDs 141 a 145)
(141, 15), 
(142, 15), 
(143, 15), 
(144, 15), 
(145, 15),

-- SC Braga Andebol (IDs 146 a 150)
(146, 16), 
(147, 16), 
(148, 16), 
(149, 16), 
(150, 16),

-- ABC de Braga (IDs 151 a 155)
(151, 17), 
(152, 17), 
(153, 17), 
(154, 17), 
(155, 17),

-- Águas Santas (IDs 156 a 160)
(156, 18), 
(157, 18), 
(158, 18),
(159, 18), 
(160, 18);

-- Jogadores de Futsal
INSERT INTO Jogador (nome, apelido, nacionalidade)
VALUES
('Tiago', 'Brito', 'Portugal'),
('André', 'Coelho', 'Portugal'),
('Bruno', 'Coelho', 'Portugal'),
('Erick', 'Mendonça', 'Portugal'),
('Pedro', 'Cary', 'Portugal'),
('Robinho', 'Silva', 'Brasil'),
('Fernandinho', 'Costa', 'Brasil'),
('Fábio', 'Cecílio', 'Portugal'),
('Miguel', 'Ângelo', 'Portugal'),
('Paulo', 'Machado', 'Portugal'),
('Diego', 'Marques', 'Brasil'),
('Gonçalo', 'Sousa', 'Portugal'),
('Ricardo', 'Ferreira', 'Portugal'),
('João', 'Matos', 'Portugal'),
('Tiago', 'Silva', 'Portugal');

INSERT INTO Jogador (nome, apelido, nacionalidade)
VALUES
('André', 'Sousa', 'Portugal'),
('Pany', 'Varela', 'Cabo Verde'),
('Zicky', 'Té', 'Portugal'),
('Arthur', 'Guilherme', 'Brasil'),
('Chishkala', 'Anatoliy', 'Rússia'),
('Paulo', 'Ribeiro', 'Portugal'),
('Fernando', 'Cardoso', 'Portugal'),
('Diego', 'Cavinato', 'Brasil'),
('Tomás', 'Paçó', 'Portugal'),
('Edgar', 'Varela', 'Portugal'),
('Fábio', 'Lima', 'Portugal'),
('José', 'Nunes', 'Portugal'),
('Mário', 'Freitas', 'Portugal'),
('João', 'Silva', 'Portugal'),
('Bruno', 'Gonçalves', 'Portugal'),
('Pedro', 'Marques', 'Portugal'),
('Duarte', 'Nuno', 'Portugal'),
('Rui', 'Neves', 'Portugal'),
('Filipe', 'Santos', 'Portugal'),
('Carlos', 'Leite', 'Portugal');


-- Equipas de Futsal
INSERT INTO Equipa (nome_equipa)
VALUES
('Sporting CP Futsal'),
('SL Benfica Futsal'),
('Modicus Sandim'),
('Leões de Porto Salvo'),
('AD Fundão'),
('SC Braga Futsal');


-- Sporting CP Futsal (IDs 161 a 165)
INSERT INTO Jogador_Equipa (id_jogador, id_equipa)
VALUES
(161, 19), 
(162, 19), 
(163, 19), 
(164, 19), 
(165, 19);

-- SL Benfica Futsal (IDs 166 a 170)
INSERT INTO Jogador_Equipa (id_jogador, id_equipa)
VALUES
(166, 20), 
(167, 20), 
(168, 20), 
(169, 20), 
(170, 20);

-- Modicus Sandim (IDs 171 a 175)
INSERT INTO Jogador_Equipa (id_jogador, id_equipa)
VALUES
(171, 21), 
(172, 21), 
(173, 21), 
(174, 21), 
(175, 21);

-- Leões de Porto Salvo (IDs 176 a 180)
INSERT INTO Jogador_Equipa (id_jogador, id_equipa)
VALUES
(176, 22), 
(177, 22), 
(178, 22), 
(179, 22), 
(180, 22);

-- AD Fundão (IDs 181 a 185)
INSERT INTO Jogador_Equipa (id_jogador, id_equipa)
VALUES
(181, 23), 
(182, 23), 
(183, 23), 
(184, 23), 
(185, 23);

-- SC Braga Futsal (IDs 186 a 190)
INSERT INTO Jogador_Equipa (id_jogador, id_equipa)
VALUES
(186, 24), 
(187, 24), 
(188, 24), 
(189, 24), 
(190, 24);


-- Jogadores de Voleibol
INSERT INTO Jogador (nome, apelido, nacionalidade)
VALUES
('José', 'Monteiro', 'Portugal'),
('João', 'Neves', 'Portugal'),
('Miguel', 'Rodrigues', 'Portugal'),
('Hugo', 'Gaspar', 'Portugal'),
('Alexandre', 'Ferreira', 'Portugal'),
('Bruno', 'Resende', 'Brasil'),
('Marco', 'Ferreira', 'Portugal'),
('André', 'Lopes', 'Portugal'),
('Filipe', 'Vasconcelos', 'Portugal'),
('Pedro', 'Soares', 'Portugal'),
('Vítor', 'Hugo', 'Portugal'),
('Luís', 'Miguel', 'Portugal'),
('Rodrigo', 'Silva', 'Portugal'),
('Leonel', 'Martins', 'Portugal'),
('Gustavo', 'Sousa', 'Brasil');


-- Equipas de Voleibol
INSERT INTO Equipa (nome_equipa)
VALUES
('Sporting CP Voleibol'),
('SL Benfica Voleibol'),
('AJF Bastardo'),
('SC Espinho'),
('VC Viana'),
('Leixões SC Voleibol');


-- Sporting CP Voleibol (IDs 191 a 193)
INSERT INTO Jogador_Equipa (id_jogador, id_equipa)
VALUES
(191, 25), 
(192, 25), 
(193, 25);

-- SL Benfica Voleibol (IDs 194 a 196)
INSERT INTO Jogador_Equipa (id_jogador, id_equipa)
VALUES
(194, 26), 
(195, 26), 
(196, 26);

-- AJF Bastardo (IDs 197 a 199)
INSERT INTO Jogador_Equipa (id_jogador, id_equipa)
VALUES
(197, 27), 
(198, 27), 
(199, 27);

-- SC Espinho (IDs 200 a 202)
INSERT INTO Jogador_Equipa (id_jogador, id_equipa)
VALUES
(200, 28), 
(201, 28), 
(202, 28);

-- VC Viana (IDs 203 a 205)
INSERT INTO Jogador_Equipa (id_jogador, id_equipa)
VALUES
(203, 29), 
(204, 29), 
(205, 29);

-- Leixões SC Voleibol (IDs 206 a 208)
INSERT INTO Jogador_Equipa (id_jogador, id_equipa)
VALUES
(206, 30), 
(207, 30), 
(208, 30);


-- Inserir Modalidades Coletivas
INSERT INTO Modalidade_Coletiva (nome_modalidade)
VALUES
('Futebol'),
('Futsal'),
('Voleibol');


-- Jogos de Futebol
INSERT INTO Jogo_Coletivo (id_equipa_visitante, id_equipa_visitada, id_modalidade_coletiva, resultado)
VALUES
(1, 2, 1, '2-1'),  -- FC Porto vs SL Benfica
(3, 4, 1, '0-0'),  -- Sporting CP vs SC Braga
(5, 6, 1, '1-1');  -- Vitória SC vs Rio Ave FC

-- Jogos de Futsal
INSERT INTO Jogo_Coletivo (id_equipa_visitante, id_equipa_visitada, id_modalidade_coletiva, resultado)
VALUES
(19, 20, 2, '3-2'),  -- Sporting CP Futsal vs SL Benfica Futsal
(21, 22, 2, '1-1'),  -- SC Braga Futsal vs Modicus Sandim
(23, 24, 2, '4-3');  -- Leões de Porto Salvo vs AD Fundão

-- Jogos de Voleibol
INSERT INTO Jogo_Coletivo (id_equipa_visitante, id_equipa_visitada, id_modalidade_coletiva, resultado)
VALUES
(25, 26, 3, '3-1'),  -- Sporting CP Voleibol vs SL Benfica Voleibol
(27, 28, 3, '2-3'),  -- AJF Bastardo vs SC Espinho
(29, 30, 3, '3-0');  -- VC Viana vs Leixões SC Voleibol


-- Apostas de Futebol
INSERT INTO Tipo_Aposta (nome_tipo_aposta, disponivel)
VALUES
('Vencedor da Partida', TRUE),
('Golo do Jogador X ', TRUE),
('Resultado ao Intervalo', TRUE),
('Ambas as Equipas Marcam', TRUE),
('Total de Golos Acima/Abaixo', TRUE),
('Resultado Exato - Futebol', TRUE),
('Primeiro Jogador a Marcar', TRUE),

-- Apostas de Futsal
('Vencedor da Partida', TRUE),
('Total de Golos Acima/Abaixo', TRUE),
('Golo do Jogador X', TRUE),
('Resultado ao Intervalo', TRUE),
('Resultado Exato', TRUE),

-- Apostas de Voleibol
('Vencedor da Partida', TRUE),
('Total de Sets', TRUE),
('Resultado Exato de Sets', TRUE),
('Primeira Equipa a Vencer um Set', TRUE),
('Jogador X Vencerá o Set', TRUE);










