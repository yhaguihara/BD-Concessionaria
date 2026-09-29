# 🚗 BD-Concessionária

Repositório dedicado à modelagem, criação e manipulação de um banco de dados relacional para o gerenciamento de uma concessionária de veículos. 

Este projeto aborda desde a modelagem conceitual até a implementação dos scripts SQL para estruturação e consulta dos dados.

## 📋 Funcionalidades

O banco de dados foi projetado para suportar as seguintes operações principais:
* **Gestão de Veículos:** Cadastro de carros, motos, marcas, modelos, anos de fabricação e controle de estoque.
* **Gestão de Clientes:** Registro de dados dos compradores para histórico e contato.
* **Gestão de Vendas:** Controle de transações, vinculando clientes, veículos, vendedores e valores.
* **Gestão de Funcionários:** Cadastro de vendedores, mecânicos e gerentes da concessionária.
* **Ordem de Serviço (Opcional):** Controle de manutenções e revisões na oficina da concessionária.

## 💻 Tecnologias Utilizadas

* **Linguagem:** SQL
* **SGBD:** MySQL / PostgreSQL / SQL Server *(Altere para o sistema que você utilizou)*
* **Modelagem:** BRModelo / MySQL Workbench / Draw.io *(Altere para a ferramenta de diagrama utilizada)*

## 📂 Estrutura do Projeto

```text
├── modelagem/           # Diagramas Entidade-Relacionamento (DER) e Modelos Lógicos
├── sql/
│   ├── 01_ddl.sql       # Scripts de criação (CREATE TABLE, ALTER TABLE)
│   ├── 02_dml.sql       # Scripts de inserção de dados (INSERT)
│   └── 03_dql.sql       # Scripts de consultas e relatórios (SELECT, JOIN, VIEWS)
└── README.md            # Documentação do projeto
