##### SCRIPTS INSERT ######

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


##### Criar Circuitos Formula 1 #####
INSERT INTO Jogo_Individual (id_modalidade_individual, nome_competicao, data)
VALUES 
(2, 'Grande Prémio do Bahrein', '2024-03-03 15:00:00'),
(2, 'Grande Prémio de Mónaco', '2024-05-26 14:00:00'),
(2, 'Grande Prémio da Grã-Bretanha', '2024-07-14 16:00:00'),
(2, 'Grande Prémio da Bélgica', '2024-08-04 14:00:00'),
(2, 'Grande Prémio de Abu Dhabi', '2024-12-01 14:00:00');


##### Criar Corridas Ciclismo #####
INSERT INTO Jogo_Individual (id_modalidade_individual, nome_competicao, data)
VALUES 
(5, 'Volta a França 2024', '2024-07-06 10:00:00'),
(5, 'Volta a Portugal 2024', '2024-08-01 09:00:00'),
(5, 'Giro d\'Italia 2024', '2024-05-11 10:00:00'),
(5, 'Vuelta a España 2024', '2024-08-24 10:00:00'),
(5, 'Paris-Roubaix 2024', '2024-04-14 11:00:00');


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
('Rui', 'Silva', 'Portugal');


INSERT INTO Tipo_Aposta (nome_tipo_aposta, disponivel)
VALUES 
-- Tipos de Aposta Comuns (aplicáveis a Padel, Ténis e Snooker)
('Vencedor do Jogo', TRUE),
('Total de Sets', TRUE),
('Vencedor do 1º Set', TRUE),

-- Tipos de Aposta Específicos para Padel
('Total de Jogos', TRUE),

-- Tipos de Aposta Específicos para Ténis
('Total de Aces', TRUE),

-- Tipos de Aposta Específicos para Snooker
('Vencedor do Frame', TRUE),
('Total de Frames', TRUE),
('Break Máximo', TRUE),

-- Tipos de Aposta para Ciclismo
('Vencedor da Volta', TRUE),
('Vencedor da Etapa', TRUE),
('Melhor Trepador', TRUE),
('Melhor Sprinter', TRUE),

-- Tipos de Aposta para Fórmula 1
('Vencedor da Corrida', TRUE),
('Pole Position', TRUE),
('Volta Mais Rápida', TRUE),
('Número de Abandonos', TRUE),
('Vencedor do Campeonato', TRUE);









