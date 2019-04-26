CREATE TABLE pessoa (
	id BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL,
	ativo BOOLEAN NOT NULL,
	logradouro VARCHAR(100) NOT NULL,
	numero BIGINT(10) NOT NULL,
	complemento VARCHAR(80) NOT NULL,
	bairro VARCHAR(100) NOT NULL,
	cep VARCHAR(9) NOT NULL,
	cidade VARCHAR(100) NOT NULL,
	estado VARCHAR(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento,
	bairro, cep, cidade, estado) VALUES ('Gabriel Moura', true, 'José Leão Pimentel', 95, 
	'Casa', 'San Fernando Valley', '19800-730', 'Assis', 'São Paulo');