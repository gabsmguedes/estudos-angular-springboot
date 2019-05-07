CREATE TABLE usuario (
	id BIGINT(20) PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL,
	senha VARCHAR(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE permissao (
	id BIGINT(20) PRIMARY KEY,
	descricao VARCHAR(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE usuario_permissao (
	id_usuario BIGINT(20) NOT NULL,
	id_permissao BIGINT(20) NOT NULL,
	PRIMARY KEY (id_usuario, id_permissao),
	FOREIGN KEY (id_usuario) REFERENCES usuario(id),
	FOREIGN KEY (id_permissao) REFERENCES permissao(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO usuario (id, nome, email, senha) VALUES (1, 'Administrador', 'admin@finan.com', '$2a$10$YBkGH.TH.Fbrt2ZDH9DNK.2Eg/CY.mZQm6U5lKSYUOjS7RzaXIuP6');
INSERT INTO usuario (id, nome, email, senha) VALUES (2, 'Gabriel', 'gabs@finan.com', '$2a$10$4tengcQSjMjni4ylvXNGreIDuHdFvLba6u1.J4Xeg2oEwM09rCKKi');

INSERT INTO permissao (id, descricao) VALUES (1, 'ROLE_CADASTRAR_CATEGORIA');
INSERT INTO permissao (id, descricao) VALUES (2, 'ROLE_PESQUISAR_CATEGORIA');
INSERT INTO permissao (id, descricao) VALUES (3, 'ROLE_CADASTRAR_PESSOA');
INSERT INTO permissao (id, descricao) VALUES (4, 'ROLE_REMOVER_PESSOA');
INSERT INTO permissao (id, descricao) VALUES (5, 'ROLE_PESQUISAR_PESSOA');
INSERT INTO permissao (id, descricao) VALUES (6, 'ROLE_CADASTRAR_LANCAMENTO');
INSERT INTO permissao (id, descricao) VALUES (7, 'ROLE_REMOVER_LANCAMENTO');
INSERT INTO permissao (id, descricao) VALUES (8, 'ROLE_PESQUISAR_LANCAMENTO');

INSERT INTO usuario_permissao (id_usuario, id_permissao) VALUES (1, 1);
INSERT INTO usuario_permissao (id_usuario, id_permissao) VALUES (1, 2);
INSERT INTO usuario_permissao (id_usuario, id_permissao) VALUES (1, 3);
INSERT INTO usuario_permissao (id_usuario, id_permissao) VALUES (1, 4);
INSERT INTO usuario_permissao (id_usuario, id_permissao) VALUES (1, 5);
INSERT INTO usuario_permissao (id_usuario, id_permissao) VALUES (1, 6);
INSERT INTO usuario_permissao (id_usuario, id_permissao) VALUES (1, 8);

INSERT INTO usuario_permissao (id_usuario, id_permissao) VALUES (2, 2);
INSERT INTO usuario_permissao (id_usuario, id_permissao) VALUES (2, 5);
INSERT INTO usuario_permissao (id_usuario, id_permissao) VALUES (2, 8);

