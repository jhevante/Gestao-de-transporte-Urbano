# 🚌 Sistema de Gestão de Transporte Urbano 🚍

## 🚦 Descrição

Este projeto é um modelo completo de banco de dados para um **Sistema de Gestão de Transporte Urbano**. Aqui você encontra tudo para gerenciar linhas de ônibus, veículos, motoristas, viagens, passageiros e vendas de passagens — tudo organizado e pronto para uso! 📊✨

## 🗂 Estrutura do Banco de Dados

O projeto conta com as seguintes tabelas principais:

* 🏞️ **estado** — Cadastro dos estados (nome e UF)
* 🏙️ **municipio** — Municípios vinculados aos estados
* 👨‍✈️ **motorista** — Dados dos motoristas
* 🚌 **veiculo** — Informações dos ônibus: placa, modelo, capacidade
* 🛤️ **linha** — Linhas de ônibus com origem, destino e distância
* 🚏 **viagem** — Viagens realizadas, ligadas à linha, veículo e motorista
* 👥 **passageiro** — Cadastro dos passageiros
* 🎫 **passagem** — Registro das vendas de passagens para as viagens

---

## 💻 Tecnologias

* MySQL / MariaDB
* Modelagem relacional com chaves estrangeiras para integridade referencial
* Uso inteligente de tipos de dados e enumerações para controle
* Scripts para criação e popular o banco com dados de exemplo

---

## 🚀 Scripts Inclusos

* 🛠️ Criação das tabelas e relacionamentos
* 📥 Inserção de dados fictícios para testes reais
* 🔍 Consultas SQL exemplares para extrair insights e relatórios

## 🔍 Exemplos de Consultas

* 📅 Listar todas as viagens com detalhes completos
* 🎟️ Mostrar passagens vendidas e assentos por viagem
* 📊 Contar número de passagens vendidas por viagem
* 👨‍✈️ Identificar motoristas em viagens com alta ocupação
* ⚠️ Verificar se algum veículo está com capacidade excedida.

## 🧑‍💻 Como Usar

1. 📥 Clone ou baixe este repositório.
2. 🗄️ Importe o script SQL no seu banco MySQL/MariaDB.
3. 💡 Execute as consultas de exemplo para explorar os dados.
4. 🔧 Personalize e amplie conforme suas necessidades!


## 🌟 Próximos Passos

* ⚙️ Criar procedures e triggers para automatizar processos
* 📈 Construir views para relatórios avançados
* 🔐 Adicionar controle de usuários e permissões
* 🖥️ Desenvolver uma aplicação front-end para interagir com o banco


**Jhennife** — [LinkedIn](https://linkedin.com/in/jhennife) | [GitHub](https://github.com/jhevante)
