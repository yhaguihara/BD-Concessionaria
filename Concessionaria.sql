CREATE DATABASE db_loja;

USE db_loja;

CREATE TABLE tbl_carros (
    id INT,
    placa VARCHAR(10) PRIMARY KEY,
    marca VARCHAR(30),
    modelo VARCHAR(30),
    ano INT,
    combustivel VARCHAR(1)
);

CREATE TABLE tbl_vendedores (
    codigo INT PRIMARY KEY,
    nome VARCHAR(60),
    carro VARCHAR(10),
    cidade VARCHAR(40),
    estado VARCHAR(2),
    comissao FLOAT,
    FOREIGN KEY (carro) REFERENCES tbl_carros(placa)
);

INSERT INTO tbl_carros (id, placa, marca, modelo, ano, combustivel) VALUES
(1, 'ABC1234', 'Ford', 'Corcel II', 1982, 'G'),
(2, 'JKG5678', 'Ford', 'Focus', 2001, 'A'),
(3, 'LKO8954', 'Renault', 'Clio', 2007, 'F'),
(4, 'MMS1609', 'VolksWagen', 'Fusca', 1973, 'G'),
(5, 'ASD123', 'Honda', 'Civic', 2010, 'F'),
(6, 'gtr4596', 'GM', 'Corsa', 2004, 'A');

INSERT INTO tbl_vendedores (codigo, nome, carro, cidade, estado, comissao) VALUES
(1, 'Juca da Silva', 'ABC1234', 'Pelotas', 'RS', 3.50),
(3, 'Antonio Vieira', 'JKG5678', 'Dois Vizinhos', 'PR', 5.00),
(44, 'Julieta da Silva', NULL, 'Verê', 'PR', 2.50),
(6, 'Maria Francisca', 'LKO8954', 'Dois Vizinhos', 'PR', 2.00),
(45, 'Marieta da Silva', NULL, 'Verê', 'PR', 2.80),
(9, 'juca silva', NULL, 'PELOTAS', 'RS', 3.50),
(18, 'Maria Guedes', 'MMS1609', 'Brasília', 'DF', 5.40),
(20, 'Jian de Barros', 'ASD123', 'Curitiba', 'PR', 3.40),
(28, 'Fagundes de azevedo', NULL, 'Verê', 'PR', 2.80),
(40, 'Ari Ribas', 'gtr4596', 'Erechim', 'RS', 3.50);

INSERT INTO tbl_carros (id, placa, marca, modelo, ano, combustivel) VALUES
(7, 'AAA0001', 'A definir', 'A definir', NULL, NULL),
(8, 'BBB0002', 'A definir', 'A definir', NULL, NULL),
(9, 'CCC0003', 'A definir', 'A definir', NULL, NULL),
(10, 'DDD0004', 'A definir', 'A definir', NULL, NULL);

UPDATE tbl_carros
   SET marca = 'Fiat', modelo = 'Uno', ano = 2012, combustivel = 'F'
 WHERE placa = 'AAA0001';

UPDATE tbl_carros
   SET marca = 'Chevrolet', modelo = 'Onix', ano = 2018, combustivel = 'F'
 WHERE placa = 'BBB0002';

UPDATE tbl_carros
   SET marca = 'Toyota', modelo = 'Corolla', ano = 2015, combustivel = 'F'
 WHERE placa = 'CCC0003';

UPDATE tbl_carros
   SET marca = 'Volkswagen', modelo = 'Gol', ano = 2009, combustivel = 'A'
 WHERE placa = 'DDD0004';

UPDATE tbl_vendedores SET carro = 'AAA0001' WHERE codigo = 44;
UPDATE tbl_vendedores SET carro = 'BBB0002' WHERE codigo = 45;
UPDATE tbl_vendedores SET carro = 'CCC0003' WHERE codigo = 9;
UPDATE tbl_vendedores SET carro = 'DDD0004' WHERE codigo = 28;

SELECT * FROM tbl_carros;
SELECT * FROM tbl_vendedores;