-- 1. Listar todas as viagens com detalhes da linha, veículo e motorista
SELECT
  v.id AS viagem_id,
  l.nome AS linha,
  ve.modelo AS veiculo,
  m.nome AS motorista,
  v.data_viagem,
  v.passageiros_qtd
FROM viagem v
JOIN linha l ON v.linha_id = l.id
JOIN veiculo ve ON v.veiculo_id = ve.id
JOIN motorista m ON v.motorista_id = m.id;

-- 2. Mostrar passagens vendidas para uma viagem com nomes e assentos
SELECT
  p.nome AS passageiro,
  pa.assento,
  pa.preco,
  pa.data_compra
FROM passagem pa
JOIN passageiro p ON pa.passageiro_id = p.id
WHERE pa.viagem_id = 1;

-- 3. Quantidade de passagens vendidas por viagem
SELECT
  v.id AS viagem_id,
  l.nome AS linha,
  COUNT(pa.id) AS total_passagens_vendidas
FROM viagem v
JOIN linha l ON v.linha_id = l.id
LEFT JOIN passagem pa ON pa.viagem_id = v.id
GROUP BY v.id, l.nome;

-- 4. Motoristas que realizaram viagens com mais de 40 passageiros
SELECT DISTINCT
  m.nome,
  m.cpf,
  m.telefone
FROM motorista m
JOIN viagem v ON v.motorista_id = m.id
WHERE v.passageiros_qtd > 40;

-- 5. Verificar veículos com capacidade excedida
SELECT
  v.id AS viagem_id,
  ve.placa,
  ve.capacidade,
  v.passageiros_qtd
FROM viagem v
JOIN veiculo ve ON v.veiculo_id = ve.id
WHERE v.passageiros_qtd > ve.capacidade;
