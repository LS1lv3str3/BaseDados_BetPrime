-- ########################
-- #   SCRIPT DE UPDATE   #
-- ########################

-- ---------- Tabela Morada ----------

-- a) Atualizar o endereço e a cidade para uma morada específica
UPDATE Morada
SET endereco = 'Avenida das Flores, 456', cidade = 'Coimbra'
WHERE id_morada = 3;

-- ---------- Tabela Utilizador ----------

-- a) Desativar a conta de um utilizador
UPDATE Utilizador
SET ativo = FALSE
WHERE id_utilizador = 5;

-- b) Atualizar o endereço de email de um utilizador
UPDATE Utilizador
SET email = 'novo.email@exemplo.com'
WHERE id_utilizador = 2;

-- ---------- Tabela Verificacao_Indentidade ----------

-- a) Alterar o estado de verificação para 'Verificado' após aprovação
UPDATE Verificacao_Indentidade
SET status = 'Verificado', data_envio = CURDATE()
WHERE id_verificacao_indentidade = 4;

-- ---------- Tabela Modalidade_Individual ----------

-- a) Atualizar o nome de uma modalidade
UPDATE Modalidade_Individual
SET nome_modalidade_individual = 'Ténis de Mesa'
WHERE id_modalidade_individual = 3;

-- ---------- Tabela Jogo_Individual ----------

-- a) Reagendar um jogo para uma nova data e hora
UPDATE Jogo_Individual
SET data = '2024-06-01 16:00:00'
WHERE id_jogo_individual = 16;

-- ---------- Tabela Jogador ----------

-- a) Atualizar a nacionalidade de um jogador
UPDATE Jogador
SET nacionalidade = 'Espanha'
WHERE id_jogador = 41;

-- ---------- Tabela Jogador_JogoIndividual ----------

-- a) Substituir um jogador num jogo

-- Primeiro, remover o jogador antigo
DELETE FROM Jogador_JogoIndividual
WHERE id_jogador = 2 AND id_jogo_individual = 1;

-- Depois, adicionar o novo jogador
INSERT INTO Jogador_JogoIndividual (id_jogador, id_jogo_individual)
VALUES (3, 1);

-- ---------- Tabela Equipa ----------

-- a) Atualizar o nome da equipa
UPDATE Equipa
SET nome_equipa = 'FC Porto B'
WHERE id_equipa = 1;

-- ---------- Tabela Jogador_Equipa ----------

-- a) Transferir um jogador para outra equipa

-- Primeiro, remover o jogador da equipa atual
DELETE FROM Jogador_Equipa
WHERE id_jogador = 73 AND id_equipa = 1;

-- Depois, adicionar o jogador à nova equipa
INSERT INTO Jogador_Equipa (id_jogador, id_equipa)
VALUES (73, 2);

-- ---------- Tabela Modalidade_Coletiva ----------

-- a) Atualizar o nome de uma modalidade coletiva
UPDATE Modalidade_Coletiva
SET nome_modalidade = 'Basquetebol'
WHERE id_modalidade_coletiva = 2;

-- ---------- Tabela Jogo_Coletivo ----------

-- a) Atualizar o resultado de um jogo
UPDATE Jogo_Coletivo
SET resultado = '3-1'
WHERE id_jogo_coletivo = 1;

-- ---------- Tabela JogoColetivo_Equipa ----------

-- a) Substituir uma equipa num jogo

-- Primeiro, remover a equipa antiga
DELETE FROM JogoColetivo_Equipa
WHERE id_equipa = 2 AND id_jogo_coletivo = 1;

-- Depois, adicionar a nova equipa
INSERT INTO JogoColetivo_Equipa (id_equipa, id_jogo_coletivo)
VALUES (3, 1);

-- ---------- Tabela Tipo_Aposta ----------

-- a) Desativar um tipo de aposta
UPDATE Tipo_Aposta
SET disponivel = FALSE
WHERE id_tipo_aposta = 5;

-- ---------- Tabela Aposta_JogoIndividual ----------

-- a) Atualizar a odd para uma aposta específica
UPDATE Aposta_JogoIndividual
SET valor_odd = 2.10
WHERE id_aposta_individual = 1;

-- ---------- Tabela Aposta_Jogador ----------

-- a) Atualizar o detalhe e a odd de uma aposta em jogador
UPDATE Aposta_Jogador
SET detalhe_aposta = 'Mehdi Taremi marca dois golos', valor_odd = 3.50
WHERE id_jogador = 73 AND id_equipa = 1 AND id_tipo_aposta = 26;

-- ---------- Tabela Aposta_JogoColetivo ----------

-- a) Atualizar a odd para uma aposta de jogo
UPDATE Aposta_JogoColetivo
SET valor_odd = 2.60
WHERE id_aposta_jogo_coletivo = 3;

-- ---------- Tabela Tipo_Aposta_Boletim ----------

-- a) Atualizar o nome de um tipo de boletim
UPDATE Tipo_Aposta_Boletim
SET nome_tipo_aposta_boletim = 'Acumulada'
WHERE id_tipo_aposta_boletim = 2;

-- ---------- Tabela Boletim ----------

-- a) Atualizar o valor apostado
UPDATE Boletim
SET valor_apostado = 50.00
WHERE id_boletim = 2;

-- b) Marcar um boletim como vencedor
UPDATE Boletim
SET resultado_boletim = TRUE
WHERE id_boletim = 2;

-- ---------- Tabela ApostaJogoIndividual_Boletim ----------

-- a) Alterar uma aposta associada a um boletim

-- Primeiro, remover a associação antiga
DELETE FROM ApostaJogoIndividual_Boletim
WHERE id_boletim = 2 AND id_aposta_individual = 5;

-- Depois, adicionar a nova aposta
INSERT INTO ApostaJogoIndividual_Boletim (id_boletim, id_aposta_individual)
VALUES (2, 6);

-- ---------- Tabela ApostaJogoColetivo_Boletim ----------

-- a) Adicionar uma nova aposta a um boletim
INSERT INTO ApostaJogoColetivo_Boletim (id_boletim, id_aposta_jogo_coletivo)
VALUES (2, 5);

-- ---------- Tabela ApostaJogador_Boletim ----------

-- a) Atualizar o jogador numa aposta associada a um boletim

-- Primeiro, remover a associação antiga
DELETE FROM ApostaJogador_Boletim
WHERE id_boletim = 6 AND id_jogador = 78 AND id_equipa = 2;

-- Depois, adicionar o novo jogador
INSERT INTO ApostaJogador_Boletim (id_boletim, id_equipa, id_jogador)
VALUES (6, 1, 74);
