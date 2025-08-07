-- Inserir estados
INSERT INTO estado (nome, uf) VALUES
('São Paulo', 'SP'),
('Rio de Janeiro', 'RJ');

-- Inserir municípios
INSERT INTO municipio (estado_id, nome, codigo_ibge) VALUES
(1, 'São Paulo', 3550308),
(1, 'Campinas', 3509502),
(2, 'Rio de Janeiro', 3304557),
(2, 'Niterói', 3303302);

-- Inserir motoristas
INSERT INTO motorista (nome, cpf, telefone, endereco, cidade_id, data_admissao) VALUES
('Carlos Silva', '12345678901', '11999999999', 'Rua A, 123', 1, '2018-05-10'),
('Maria Souza', '23456789012', '21988888888', 'Av. B, 456', 3, '2019-11-01');

-- Inserir veículos
INSERT INTO veiculo (placa, modelo, capacidade, ano_fabricacao) VALUES
('ABC1234', 'Volvo 9700', 50, 2015),
('DEF5678', 'Mercedes-Benz O500', 45, 2017);

-- Inserir linhas
INSERT INTO linha (codigo, nome, origem, destino, distancia_km) VALUES
('001', 'São Paulo - Campinas', 'São Paulo', 'Campinas', 100.50),
('002', 'Rio de Janeiro - Niterói', 'Rio de Janeiro', 'Niterói', 15.75);

-- Inserir viagens
INSERT INTO viagem (linha_id, veiculo_id, motorista_id, data_viagem, passageiros_qtd) VALUES
(1, 1, 1, '2025-08-01 08:00:00', 45),
(2, 2, 2, '2025-08-01 09:30:00', 40);

-- Inserir passageiros
INSERT INTO passageiro (nome, cpf, telefone, email, cidade_id) VALUES
('João Pereira', '34567890123', '11977777777', 'joao@email.com', 1),
('Ana Martins', '45678901234', '21966666666', 'ana@email.com', 3);

-- Inserir passagens
INSERT INTO passagem (viagem_id, passageiro_id, data_compra, preco, assento) VALUES
(1, 1, '2025-07-30 15:00:00', 50.00, '12A'),
(2, 2, '2025-07-31 10:00:00', 7.50, '7B');
