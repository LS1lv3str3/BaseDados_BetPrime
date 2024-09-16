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
('Simples'), ('Múltipla'), ('Combinada');


INSERT INTO Modalidade_Individual (nome_modalidade_individual)
VALUES 
('Snooker'),
('Fórmula 1'),
('Ténis'),
('Padel'),
('Ciclismo');


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
INSERT INTO Jogo_Individual (id_modalidade_individual, nome_jogo, data)
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
(1, 1),  -- Ronnie O'Sullivan
(2, 1),  -- Judd Trump

-- Jogos do UK Championship - Semi-Final
(3, 2),  -- Mark Selby
(4, 2), -- Neil Robertson

-- Jogos do The Masters - Final
(5, 3),  -- John Higgins
(6, 3),  -- Ding Junhui

-- Jogos do China Open - Final
(7, 4),  -- Mark Allen
(8, 4),  -- Shaun Murphy

-- Jogos do Scottish Open - Final
(9, 5),  -- Kyren Wilson
(10, 5),  -- Barry Hawkins

-- Jogos do Welsh Open - Quarter-Final
(1, 6),  -- Ronnie O'Sullivan
(3, 6),  -- Mark Selby

-- Jogos do European Masters - Semi-Final
(2, 7),  -- Judd Trump
(4, 7),  -- Neil Robertson

-- Jogos do English Open - Final
(5, 8),  -- John Higgins
(6, 8),  -- Ding Junhui

-- Jogos do Northern Ireland Open - Final
(7, 9),  -- Mark Allen
(8, 9),  -- Shaun Murphy

-- Jogos do Tour Championship - Final
(9, 10),  -- Kyren Wilson
(10, 10);  -- Barry Hawkins


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
INSERT INTO Jogo_Individual (id_modalidade_individual, nome_jogo, data)
VALUES 
(2, 'Grande Prémio do Bahrein', '2024-03-03 15:00:00'),
(2, 'Grande Prémio de Mónaco', '2024-05-26 14:00:00'),
(2, 'Grande Prémio da Grã-Bretanha', '2024-07-14 16:00:00'),
(2, 'Grande Prémio da Bélgica', '2024-08-04 14:00:00'),
(2, 'Grande Prémio de Abu Dhabi', '2024-12-01 14:00:00');

-- Grande Prémio do Bahrein (id_jogo_individual = 11)
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(11, 11),  -- Max Verstappen
(12, 11),  -- Sergio Pérez
(13, 11),  -- Charles Leclerc
(14, 11),  -- Carlos Sainz
(15, 11),  -- Lewis Hamilton
(16, 11),  -- George Russell
(17, 11),  -- Fernando Alonso
(18, 11),  -- Lance Stroll
(19, 11),  -- Lando Norris
(20, 11),  -- Oscar Piastri
(21, 11),  -- Pierre Gasly
(22, 11),  -- Esteban Ocon
(23, 11),  -- Valtteri Bottas
(24, 11),  -- Guanyu Zhou
(25, 11),  -- Kevin Magnussen
(26, 11),  -- Nico Hülkenberg
(27, 11),  -- Yuki Tsunoda
(28, 11),  -- Daniel Ricciardo
(29, 11),  -- Alexander Albon
(30, 11),  -- Logan Sargeant

-- Grande Prémio de Mónaco (id_jogo_individual = 12)
(11, 12),
(12, 12),
(13, 12),
(14, 12),
(15, 12),
(16, 12),
(17, 12),
(18, 12),
(19, 12),
(20, 12),
(21, 12),
(22, 12),
(23, 12),
(24, 12),
(25, 12),
(26, 12),
(27, 12),
(28, 12),
(29, 12),
(30, 12),

-- Grande Prémio da Grã-Bretanha (id_jogo_individual = 13)
(11, 13),
(12, 13),
(13, 13),
(14, 13),
(15, 13),
(16, 13),
(17, 13),
(18, 13),
(19, 13),
(20, 13),
(21, 13),
(22, 13),
(23, 13),
(24, 13),
(25, 13),
(26, 13),
(27, 13),
(28, 13),
(29, 13),
(30, 13),

-- Grande Prémio da Bélgica (id_jogo_individual = 14)
(11, 14),
(12, 14),
(13, 14),
(14, 14),
(15, 14),
(16, 14),
(17, 14),
(18, 14),
(19, 14),
(20, 14),
(21, 14),
(22, 14),
(23, 14),
(24, 14),
(25, 14),
(26, 14),
(27, 14),
(28, 14),
(29, 14),
(30, 14),

-- Grande Prémio de Abu Dhabi (id_jogo_individual = 15)
(11, 15),
(12, 15),
(13, 15),
(14, 15),
(15, 15),
(16, 15),
(17, 15),
(18, 15),
(19, 15),
(20, 15),
(21, 15),
(22, 15),
(23, 15),
(24, 15),
(25, 15),
(26, 15),
(27, 15),
(28, 15),
(29, 15),
(30, 15);

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
INSERT INTO Jogo_Individual (id_modalidade_individual, nome_jogo, data)
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


-- Australian Open - Final (ID Jogo: 16)
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(31, 16),  -- Novak Djokovic
(32, 16),  -- Carlos Alcaraz

-- Roland Garros - Semi-Final (ID Jogo: 17)
(33, 17),  -- Daniil Medvedev
(34, 17),  -- Stefanos Tsitsipas

-- Wimbledon - Final (ID Jogo: 18)
(35, 18),  -- Casper Ruud
(36, 18),  -- Jannik Sinner

-- US Open - Quarter-Final (ID Jogo: 19)
(37, 19),  -- Andrey Rublev
(38, 19),  -- Alexander Zverev

-- ATP Finals - Round Robin (ID Jogo: 20)
(39, 20),  -- Holger Rune
(40, 20),  -- Matteo Berrettini

-- Monte Carlo Masters - Final (ID Jogo: 21)
(31, 21),  -- Novak Djokovic
(33, 21),  -- Daniil Medvedev

-- Madrid Open - Final (ID Jogo: 22)
(32, 22),  -- Carlos Alcaraz
(34, 22),  -- Stefanos Tsitsipas

-- Italian Open - Quarter-Final (ID Jogo: 23)
(35, 23),  -- Casper Ruud
(36, 23),  -- Jannik Sinner

-- Paris Masters - Semi-Final (ID Jogo: 24)
(37, 24),  -- Andrey Rublev
(38, 24),  -- Alexander Zverev

-- Cincinnati Masters - Final (ID Jogo: 25)
(39, 25),  -- Holger Rune
(40, 25);  -- Matteo Berrettini


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
INSERT INTO Jogo_Individual (id_modalidade_individual, nome_jogo, data)
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

-- World Padel Tour - Madrid Open (ID Jogo: 26)
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(41, 26),  -- Alejandro Galán
(42, 26),  -- Juan Lebrón
(43, 26),  -- Paquito Navarro
(44, 26),  -- Fernando Belasteguín

-- World Padel Tour - Barcelona Master (ID Jogo: 27)
(45, 27),  -- Agustín Tapia
(46, 27),  -- Maxi Sánchez
(47, 27),  -- Sanyo Gutiérrez
(48, 27),  -- Javi Rico

-- World Padel Tour - Marbella Challenger (ID Jogo: 28)
(49, 28),  -- Franco Stupaczuk
(50, 28),  -- Martin Di Nenno
(41, 28),  -- Alejandro Galán
(42, 28),  -- Juan Lebrón

-- World Padel Tour - Valencia Open (ID Jogo: 29)
(43, 29),  -- Paquito Navarro
(44, 29),  -- Fernando Belasteguín
(45, 29),  -- Agustín Tapia
(46, 29),  -- Maxi Sánchez

-- World Padel Tour - Malaga Open (ID Jogo: 30)
(47, 30),  -- Sanyo Gutiérrez
(48, 30),  -- Javi Rico
(49, 30),  -- Franco Stupaczuk
(50, 30),  -- Martin Di Nenno

-- World Padel Tour - Las Rozas Master (ID Jogo: 31)
(41, 31),  -- Alejandro Galán
(42, 31),  -- Juan Lebrón
(43, 31),  -- Paquito Navarro
(44, 31),  -- Fernando Belasteguín

-- World Padel Tour - Alicante Open (ID Jogo: 32)
(45, 32),  -- Agustín Tapia
(46, 32),  -- Maxi Sánchez
(47, 32),  -- Sanyo Gutiérrez
(48, 32),  -- Javi Rico

-- World Padel Tour - Bilbao Open (ID Jogo: 33)
(49, 33),  -- Franco Stupaczuk
(50, 33),  -- Martin Di Nenno
(41, 33),  -- Alejandro Galán
(42, 33),  -- Juan Lebrón

-- World Padel Tour - Menorca Master (ID Jogo: 34)
(43, 34),  -- Paquito Navarro
(44, 34),  -- Fernando Belasteguín
(45, 34),  -- Agustín Tapia
(46, 34),  -- Maxi Sánchez

-- World Padel Tour - Madrid Finals (ID Jogo: 35)
(47, 35),  -- Sanyo Gutiérrez
(48, 35),  -- Javi Rico
(49, 35),  -- Franco Stupaczuk
(50, 35);  -- Martin Di Nenno


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

##### Criar Corridas Ciclismo #####
INSERT INTO Jogo_Individual (id_modalidade_individual, nome_jogo, data)
VALUES 
(5, 'Volta a França 2024', '2024-07-06 10:00:00'),
(5, 'Volta a Portugal 2024', '2024-08-01 09:00:00'),
(5, 'Giro d\'Italia 2024', '2024-05-11 10:00:00'),
(5, 'Vuelta a España 2024', '2024-08-24 10:00:00'),
(5, 'Paris-Roubaix 2024', '2024-04-14 11:00:00');

-- Associar Ciclistas à Volta a França 2024 (id_jogo_individual = 36)
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES
(51, 36),  -- Tadej Pogačar
(52, 36),  -- Jonas Vingegaard
(53, 36),  -- Primož Roglič
(54, 36),  -- Egan Bernal
(55, 36),  -- Geraint Thomas
(56, 36),  -- David Gaudu
(57, 36),  -- Simon Yates
(58, 36),  -- Adam Yates
(59, 36),  -- Richard Carapaz
(60, 36),  -- Enric Mas

-- Associar Ciclistas à Volta a Portugal 2024 (id_jogo_individual = 37)
(51, 37),  -- Tadej Pogačar
(52, 37),  -- Jonas Vingegaard
(53, 37),  -- Primož Roglič
(54, 37),  -- Egan Bernal
(61, 37),  -- Wout Van Aert
(62, 37),  -- Tom Pidcock
(63, 37),  -- Jai Hindley
(64, 37),  -- Mikel Landa
(65, 37),  -- Ben O'Connor

-- Associar Ciclistas ao Giro d'Italia 2024 (id_jogo_individual = 38)
(51, 38),  -- Tadej Pogačar
(53, 38),  -- Primož Roglič
(54, 38),  -- Egan Bernal
(56, 38),  -- David Gaudu
(63, 38),  -- Jai Hindley
(64, 38),  -- Mikel Landa
(66, 38),  -- Julian Alaphilippe
(67, 38),  -- Matej Mohorič

-- Associar Ciclistas à Vuelta a España 2024 (id_jogo_individual = 39)
(52, 39),  -- Jonas Vingegaard
(53, 39),  -- Primož Roglič
(54, 39),  -- Egan Bernal
(56, 39),  -- David Gaudu
(60, 39),  -- Enric Mas
(61, 39),  -- Wout Van Aert
(62, 39),  -- Tom Pidcock
(63, 39),  -- Jai Hindley

-- Associar Ciclistas à Paris-Roubaix 2024 (id_jogo_individual = 40)
(51, 40),  -- Tadej Pogačar
(52, 40),  -- Jonas Vingegaard
(61, 40),  -- Wout Van Aert
(65, 40),  -- Ben O'Connor
(66, 40),  -- Julian Alaphilippe
(67, 40),  -- Matej Mohorič
(68, 40),  -- Nairo Quintana
(69, 40),  -- Thibaut Pinot
(70, 40);  -- Romain Bardet


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
('Tiago', 'Silva', 'Portugal'),
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
(165, 19),

-- SL Benfica Futsal (IDs 166 a 170)
(166, 20), 
(167, 20), 
(168, 20), 
(169, 20), 
(170, 20),

-- Modicus Sandim (IDs 171 a 175)
(171, 21), 
(172, 21), 
(173, 21), 
(174, 21), 
(175, 21),

-- Leões de Porto Salvo (IDs 176 a 180)
(176, 22), 
(177, 22), 
(178, 22), 
(179, 22), 
(180, 22),

-- AD Fundão (IDs 181 a 185)
(181, 23), 
(182, 23), 
(183, 23), 
(184, 23), 
(185, 23),

-- SC Braga Futsal (IDs 186 a 190)
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
(191, 25), (192, 25), (193, 25),

-- SL Benfica Voleibol (IDs 194 a 196)
(194, 26), (195, 26), (196, 26),

-- AJF Bastardo (IDs 197 a 199)

(197, 27), (198, 27), (199, 27),

-- SC Espinho (IDs 200 a 202)
(200, 28), (201, 28), (202, 28),

-- VC Viana (IDs 203 a 205)
(203, 29), (204, 29), (205, 29),

-- Leixões SC Voleibol (IDs 206 a 208)
(206, 30), (207, 30), (208, 30);


-- Inserir Modalidades Coletivas
INSERT INTO Modalidade_Coletiva (nome_modalidade)
VALUES
('Futebol'), ('Futsal'), ('Voleibol');


-- Inserir Jogos de Futebol
INSERT INTO Jogo_Coletivo (id_modalidade_coletiva, nome_jogo, resultado)
VALUES
(1, 'FC Porto vs SL Benfica', '2-1'),  -- Futebol - FC Porto vs SL Benfica
(1, 'Sporting CP vs SC Braga', '0-0'),  -- Futebol - Sporting CP vs SC Braga
(1, 'Vitória SC vs Rio Ave FC', '1-1'),  -- Futebol - Vitória SC vs Rio Ave FC

-- Inserir Jogos de Futsal
(2, 'Sporting CP Futsal vs SL Benfica Futsal', '3-2'),  -- Futsal - Sporting CP Futsal vs SL Benfica Futsal
(2, 'SC Braga Futsal vs Modicus Sandim', '1-1'),  -- Futsal - SC Braga Futsal vs Modicus Sandim
(2, 'Leões de Porto Salvo vs AD Fundão', '4-3'),  -- Futsal - Leões de Porto Salvo vs AD Fundão

-- Inserir Jogos de Voleibol
(3, 'Sporting CP Voleibol vs SL Benfica Voleibol', '3-1'),  -- Voleibol - Sporting CP Voleibol vs SL Benfica Voleibol
(3, 'AJF Bastardo vs SC Espinho', '2-3'),  -- Voleibol - AJF Bastardo vs SC Espinho
(3, 'VC Viana vs Leixões SC Voleibol', '3-0');  -- Voleibol - VC Viana vs Leixões SC Voleibol



INSERT INTO JogoColetivo_Equipa (id_equipa, id_jogo_coletivo)
VALUES
-- FC Porto vs SL Benfica
(1, 1),  -- FC Porto
(2, 1),  -- SL Benfica

-- Sporting CP vs SC Braga
(3, 2),  -- Sporting CP
(4, 2),  -- SC Braga

-- Vitória SC vs Rio Ave FC
(5, 3),  -- Vitória SC
(6, 3),  -- Rio Ave FC

-- Sporting CP Futsal vs SL Benfica Futsal
(19, 4),  -- Sporting CP Futsal
(20, 4),  -- SL Benfica Futsal

-- SC Braga Futsal vs Modicus Sandim
(21, 5),  -- SC Braga Futsal
(22, 5),  -- Modicus Sandim

-- Leões de Porto Salvo vs AD Fundão
(23, 6),  -- Leões de Porto Salvo
(24, 6),  -- AD Fundão

-- Sporting CP Voleibol vs SL Benfica Voleibol
(25, 7),  -- Sporting CP Voleibol
(26, 7),  -- SL Benfica Voleibol

-- AJF Bastardo vs SC Espinho
(27, 8),  -- AJF Bastardo
(28, 8),  -- SC Espinho

-- VC Viana vs Leixões SC Voleibol
(29, 9),  -- VC Viana
(30, 9);  -- Leixões SC Voleibol

INSERT INTO Tipo_Aposta (nome_tipo_aposta, disponivel)
VALUES

-- Tipo Apostas Desportos INDIVIDUAIS
('Vencedor da Partida', 1),  -- Aposta no vencedor da partida (geral)
('Total de Sets Acima/Abaixo', 1),  -- Aposta no número total de sets (Ténis, Padel)
('Vencedor do 1º Set/Frame', 1),  -- Aposta no vencedor do primeiro set ou frame (Ténis, Snooker)
('Total de Aces', 1),  -- Aposta no número total de aces (Ténis)
('Número de Frames Acima/Abaixo', 1),  -- Aposta no número de frames (Snooker)
('Break Máximo', 1),  -- Aposta no jogador que terá o break mais alto (Snooker)
('Vencedor da Etapa', 1),  -- Aposta no vencedor da etapa (Ciclismo)
('Vencedor da Corrida', 1),  -- Aposta no vencedor de uma corrida (Fórmula 1)
('Pole Position', 1),  -- Aposta em quem consegue a pole position (Fórmula 1)
('Volta Mais Rápida', 1),  -- Aposta no piloto com a volta mais rápida (Fórmula 1)
('Total de Games Acima/Abaixo', 1),  -- Aposta no número total de games (Ténis, Padel)
('Vencedor do Campeonato', 1),  -- Aposta no vencedor do campeonato (geral)
('Primeiro Jogador a Vencer um Set/Frame', 1),  -- Aposta em quem vencerá o primeiro set ou frame (Ténis, Snooker)
('Total de Golos em Ciclismo', 1),  -- Aposta em total de vitórias por ciclista ou equipa (Ciclismo)

-- Tipo Apostas Desportos COLETIVOS
('Vencedor do Jogo', 1),  -- Aposta no vencedor da partida
('Ambas as Equipas Marcam', 1),  -- Aposta se ambas as equipas marcam
('Resultado Exato', 1),  -- Aposta no resultado exato do jogo
('Total de Golos Acima/Abaixo', 1),  -- Aposta no total de golos acima/abaixo de um valor (ex: 2.5)
('Primeiro a Marcar', 1),  -- Aposta em qual equipa ou jogador marca primeiro
('Intervalo/Final', 1),  -- Aposta no resultado ao intervalo e no final do jogo
('Handicap Asiático', 1),  -- Aposta com handicap asiático
('Número Total de Cantos', 1),  -- Aposta no número total de cantos no jogo
('Número Total de Cartões', 1),  -- Aposta no número total de cartões no jogo
('Primeiro Jogador a Marcar', 1),  -- Aposta em qual jogador marcará primeiro
('Último Jogador a Marcar', 1),  -- Aposta em qual jogador marcará por último
('Jogador X Marca Durante o Jogo', 1),  -- Aposta se o jogador específico marcará durante o jogo
('Dupla Hipótese', 1);  -- Aposta em dois resultados possíveis (ex: vitória da equipa A ou empate)


-- Aposta no vencedor da partida - Ronnie O'Sullivan
INSERT INTO Aposta_JogoIndividual (id_jogador, id_tipo_aposta, id_jogo_individual, detalhe_aposta, valor_odd)
VALUES (1, 1, 1, 'Ronnie O\'Sullivan vence a partida', 1.80),

-- Aposta no vencedor da partida - Judd Trump
(2, 1, 1, 'Judd Trump vence a partida', 2.00),

-- Aposta no vencedor do 1º frame - Ronnie O'Sullivan
(1, 3, 1, 'Ronnie O\'Sullivan vence o 1º frame', 1.90),

-- Aposta no break máximo - Judd Trump
(2, 6, 1, 'Judd Trump faz o break máximo', 3.50),

-- Aposta no vencedor da partida - Novak Djokovic
(31, 1, 16, 'Novak Djokovic vence a partida', 1.50),

-- Aposta no vencedor da partida - Carlos Alcaraz
(32, 1, 16, 'Carlos Alcaraz vence a partida', 2.50),

-- Aposta no total de sets acima de 3.5
-- Nota: Como o tipo de aposta requer um jogador, associamos ao jogador principal
(31, 2, 16, 'Total de sets acima de 3.5', 1.80),

-- Aposta no total de aces de Novak Djokovic acima de 10.5
(31, 4, 16, 'Djokovic aces acima de 10.5', 1.95),

-- Aposta no vencedor da corrida - Max Verstappen
(11, 8, 11, 'Max Verstappen vence a corrida', 2.20),

-- Aposta na pole position - Lewis Hamilton
(15, 9, 11, 'Lewis Hamilton conquista a pole position', 3.00),

-- Aposta na volta mais rápida - Max Verstappen
(11, 10, 11, 'Max Verstappen faz a volta mais rápida', 2.50),

-- Aposta na dupla vencedora - Galán/Lebrón
(41, 1, 26, 'Galán/Lebrón vencem a partida', 1.60),

-- Aposta no total de games acima de 18.5
(41, 11, 26, 'Total de games acima de 18.5', 1.85),

-- Aposta no vencedor do 1º set - Galán/Lebrón
(41, 3, 26, 'Galán/Lebrón vencem o 1º set', 1.70),

-- Aposta no vencedor da etapa - Tadej Pogačar
(51, 7, 36, 'Tadej Pogačar vence a etapa', 2.10),

-- Aposta no vencedor do campeonato - Primož Roglič
(53, 12, 36, 'Primož Roglič vence a Volta a França', 3.50),

-- Aposta no total de vitórias acima de 3.5 para Tadej Pogačar
(51, 14, 36, 'Pogačar conquista mais de 3.5 vitórias', 1.75),

-- Aposta no vencedor da partida - Jannik Sinner
(36, 1, 18, 'Jannik Sinner vence a partida', 1.85),

-- Aposta no total de aces acima de 15.5 no jogo
(36, 4, 18, 'Total de aces acima de 15.5', 1.90),

-- Aposta em Casper Ruud a vencer o primeiro set
(35, 13, 18, 'Casper Ruud vence o primeiro set', 2.00);


###### APOSTAS NOS JOGADORES #######
INSERT INTO Aposta_Jogador (id_tipo_aposta, id_jogador, id_equipa, detalhe_aposta, valor_odd)
VALUES
-- Aposta: Primeiro Jogador a Marcar (id_tipo_aposta = 24)
(24, 73, 1, 'Mehdi Taremi marca o primeiro golo contra o SL Benfica', 2.50),  -- FC Porto
(24, 78, 2, 'João Mário marca o primeiro golo contra o FC Porto', 3.00),       -- SL Benfica
(24, 83, 3, 'Pedro Gonçalves marca o primeiro golo contra o SC Braga', 2.80),  -- Sporting CP
(24, 87, 4, 'Ricardo Horta marca o primeiro golo contra o Sporting CP', 3.20), -- SC Braga

-- Aposta: Jogador X Marca Durante o Jogo (id_tipo_aposta = 26)
(26, 79, 2, 'Ángel Di María marca a qualquer momento contra o FC Porto', 1.90), -- SL Benfica
(26, 74, 1, 'Otávio marca a qualquer momento contra o SL Benfica', 2.10),       -- FC Porto
(26, 85, 3, 'Paulinho marca a qualquer momento contra o SC Braga', 2.00),       -- Sporting CP
(26, 90, 4, 'Vítor Oliveira marca a qualquer momento contra o Sporting CP', 2.20), -- SC Braga

-- Aposta: Último Jogador a Marcar (id_tipo_aposta = 25)
(25, 73, 1, 'Mehdi Taremi marca o último golo contra o SL Benfica', 2.70),     -- FC Porto
(25, 80, 2, 'Rafa Silva marca o último golo contra o FC Porto', 3.10),         -- SL Benfica
(25, 84, 3, 'Marcus Edwards marca o último golo contra o SC Braga', 3.00),     -- Sporting CP
(25, 88, 4, 'Al Musrati marca o último golo contra o Sporting CP', 3.50);      -- SC Braga

INSERT INTO Aposta_JogoColetivo (id_jogo_coletivo, id_equipa, id_tipo_aposta, detalhe_aposta, valor_odd)
VALUES
-- **Vencedor do Jogo**
(1, 1, 15, 'FC Porto vence o jogo contra SL Benfica', 2.50),
(1, NULL, 15, 'Empate entre FC Porto e SL Benfica', 3.00),
(1, 2, 15, 'SL Benfica vence o jogo contra FC Porto', 2.80),

-- **Total de Golos Acima/Abaixo**
(1, NULL, 18, 'Total de golos acima de 2.5', 1.80),
(1, NULL, 18, 'Total de golos abaixo de 2.5', 2.00),

-- **Resultado Exato**
(1, NULL, 17, 'Resultado exato 1-0 a favor do FC Porto', 7.50),
(1, NULL, 17, 'Resultado exato 1-1', 6.00),
(1, NULL, 17, 'Resultado exato 0-1 a favor do SL Benfica', 7.00),

-- **Ambas as Equipas Marcam**
(1, NULL, 16, 'Ambas as equipas marcam - Sim', 1.70),
(1, NULL, 16, 'Ambas as equipas marcam - Não', 2.10),

-- **Handicap Asiático**
(1, 1, 21, 'FC Porto -1.0', 3.50),
(1, 2, 21, 'SL Benfica -1.0', 3.80),

-- **Primeiro a Marcar**
(1, 1, 19, 'FC Porto marca o primeiro golo', 1.90),
(1, 2, 19, 'SL Benfica marca o primeiro golo', 2.00),
(1, NULL, 19, 'Sem golos marcados', 8.00);


INSERT INTO Aposta_JogoColetivo (id_jogo_coletivo, id_equipa, id_tipo_aposta, detalhe_aposta, valor_odd)
VALUES
-- **Vencedor do Jogo**
(2, 3, 15, 'Sporting CP vence o jogo contra SC Braga', 2.20),
(2, NULL, 15, 'Empate entre Sporting CP e SC Braga', 3.10),
(2, 4, 15, 'SC Braga vence o jogo contra Sporting CP', 3.00),

-- **Total de Golos Acima/Abaixo**
(2, NULL, 18, 'Total de golos acima de 2.5', 1.95),
(2, NULL, 18, 'Total de golos abaixo de 2.5', 1.85),

-- **Resultado Exato**
(2, NULL, 17, 'Resultado exato 2-1 a favor do Sporting CP', 8.00),
(2, NULL, 17, 'Resultado exato 1-1', 6.50),
(2, NULL, 17, 'Resultado exato 1-2 a favor do SC Braga', 9.00),

-- **Ambas as Equipas Marcam**
(2, NULL, 16, 'Ambas as equipas marcam - Sim', 1.80),
(2, NULL, 16, 'Ambas as equipas marcam - Não', 2.00),

-- **Handicap Asiático**
(2, 3, 21, 'Sporting CP -0.5', 2.10),
(2, 4, 21, 'SC Braga +0.5', 1.70),

-- **Primeiro a Marcar**
(2, 3, 19, 'Sporting CP marca o primeiro golo', 1.85),
(2, 4, 19, 'SC Braga marca o primeiro golo', 2.05),
(2, NULL, 19, 'Sem golos marcados', 7.50);

INSERT INTO Aposta_JogoColetivo (id_jogo_coletivo, id_equipa, id_tipo_aposta, detalhe_aposta, valor_odd)
VALUES
-- **Vencedor do Jogo**
(3, 5, 15, 'Vitória SC vence o jogo contra Rio Ave FC', 2.40),
(3, NULL, 15, 'Empate entre Vitória SC e Rio Ave FC', 3.20),
(3, 6, 15, 'Rio Ave FC vence o jogo contra Vitória SC', 2.90),

-- **Total de Golos Acima/Abaixo**
(3, NULL, 18, 'Total de golos acima de 2.5', 2.00),
(3, NULL, 18, 'Total de golos abaixo de 2.5', 1.80),

-- **Resultado Exato**
(3, NULL, 17, 'Resultado exato 1-0 a favor do Vitória SC', 7.00),
(3, NULL, 17, 'Resultado exato 0-0', 6.50),
(3, NULL, 17, 'Resultado exato 0-1 a favor do Rio Ave FC', 7.50),

-- **Ambas as Equipas Marcam**
(3, NULL, 16, 'Ambas as equipas marcam - Sim', 1.85),
(3, NULL, 16, 'Ambas as equipas marcam - Não', 1.95),

-- **Handicap Asiático**
(3, 5, 21, 'Vitória SC -0.5', 2.20),
(3, 6, 21, 'Rio Ave FC +0.5', 1.65),

-- **Primeiro a Marcar**
(3, 5, 19, 'Vitória SC marca o primeiro golo', 1.90),
(3, 6, 19, 'Rio Ave FC marca o primeiro golo', 2.00),
(3, NULL, 19, 'Sem golos marcados', 8.50);

-- Boletins para o Utilizador 2 (Ana Pereira)
INSERT INTO Boletim (id_tipo_aposta_boletim, id_utilizador, valor_apostado, data_bilhete, resultado_boletim)
VALUES
(1, 2, 25.00, '2024-09-16', FALSE),  -- Boletim Simples
(2, 2, 40.00, '2024-09-17', FALSE),  -- Boletim Múltipla
(3, 2, 35.00, '2024-09-18', FALSE),  -- Boletim Combinada

-- Boletins para o Utilizador 5 (Pedro Martins)
(1, 5, 30.00, '2024-09-19', FALSE),  -- Boletim Simples
(2, 5, 45.00, '2024-09-20', FALSE),  -- Boletim Múltipla
(3, 5, 50.00, '2024-09-21', FALSE),  -- Boletim Combinada

-- Boletins para o Utilizador 8 (Helena Fernandes)
(1, 8, 35.00, '2024-09-22', FALSE),  -- Boletim Simples
(2, 8, 50.00, '2024-09-23', FALSE),  -- Boletim Múltipla
(3, 8, 55.00, '2024-09-24', FALSE);  -- Boletim Combinada

INSERT INTO ApostaJogoIndividual_Boletim (id_boletim, id_aposta_individual)
VALUES
(1, 1),
(2, 5),
(2, 9),
(2, 15),
(3, 18),
(6, 11),
(5, 6),
(9, 16);

-- Inserção na tabela ApostaJogador_Boletim
INSERT INTO ApostaJogador_Boletim (id_boletim, id_equipa, id_jogador)
VALUES
(6, 2, 78), 
(7, 3, 83),
(9, 4, 87);

INSERT INTO ApostaJogoColetivo_Boletim (id_boletim, id_aposta_jogo_coletivo)
VALUES
(8, 7),
(6, 4),
(5, 3),
(8, 10);