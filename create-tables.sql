-- Estados
CREATE TABLE estado (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  uf CHAR(2) NOT NULL UNIQUE
);

-- Municípios
CREATE TABLE municipio (
  id INT AUTO_INCREMENT PRIMARY KEY,
  estado_id INT NOT NULL,
  nome VARCHAR(80) NOT NULL,
  codigo_ibge INT UNIQUE NOT NULL,
  FOREIGN KEY (estado_id) REFERENCES estado(id)
);

-- Motoristas
CREATE TABLE motorista (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  cpf CHAR(11) UNIQUE NOT NULL,
  telefone CHAR(11),
  endereco VARCHAR(150),
  cidade_id INT,
  data_admissao DATE,
  FOREIGN KEY (cidade_id) REFERENCES municipio(id)
);

-- Veículos (ônibus)
CREATE TABLE veiculo (
  id INT AUTO_INCREMENT PRIMARY KEY,
  placa CHAR(7) UNIQUE NOT NULL,
  modelo VARCHAR(50) NOT NULL,
  capacidade INT NOT NULL,
  ano_fabricacao YEAR NOT NULL
);

-- Linhas de ônibus
CREATE TABLE linha (
  id INT AUTO_INCREMENT PRIMARY KEY,
  codigo VARCHAR(10) UNIQUE NOT NULL,
  nome VARCHAR(100) NOT NULL,
  origem VARCHAR(100) NOT NULL,
  destino VARCHAR(100) NOT NULL,
  distancia_km DECIMAL(6,2) NOT NULL
);

-- Viagens realizadas
CREATE TABLE viagem (
  id INT AUTO_INCREMENT PRIMARY KEY,
  linha_id INT NOT NULL,
  veiculo_id INT NOT NULL,
  motorista_id INT NOT NULL,
  data_viagem DATETIME NOT NULL,
  passageiros_qtd INT DEFAULT 0,
  FOREIGN KEY (linha_id) REFERENCES linha(id),
  FOREIGN KEY (veiculo_id) REFERENCES veiculo(id),
  FOREIGN KEY (motorista_id) REFERENCES motorista(id)
);

-- Passageiros cadastrados (ex: cartão fidelidade)
CREATE TABLE passageiro (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  cpf CHAR(11) UNIQUE NOT NULL,
  telefone CHAR(11),
  email VARCHAR(100),
  cidade_id INT,
  FOREIGN KEY (cidade_id) REFERENCES municipio(id)
);

-- Venda de passagens
CREATE TABLE passagem (
  id INT AUTO_INCREMENT PRIMARY KEY,
  viagem_id INT NOT NULL,
  passageiro_id INT NOT NULL,
  data_compra DATETIME NOT NULL,
  preco DECIMAL(10,2) NOT NULL,
  assento VARCHAR(5),
  FOREIGN KEY (viagem_id) REFERENCES viagem(id),
  FOREIGN KEY (passageiro_id) REFERENCES passageiro(id)
);
