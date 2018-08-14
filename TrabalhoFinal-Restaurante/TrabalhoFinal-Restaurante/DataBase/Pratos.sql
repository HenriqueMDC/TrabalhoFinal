DROP TABLE pratos;
DROP TABLE ingredientes;
DROP TABLE ingredientes_pratos;

CREATE TABLE pratos(
	id							INT IDENTITY(1,1) PRIMARY KEY,
	modo_preparo				VARCHAR(2000) NOT NULL,
	propriedades_nutricionais	VARCHAR(500),
	preco						REAL NOT NULL,
	email						VARCHAR(100) NOT NULL,
	celular						VARCHAR(14),
	descricao					TEXT,
);

CREATE TABLE ingredientes(
	id		INT IDENTITY(1,1) PRIMARY KEY,
	nome	VARCHAR(500)
);

CREATE TABLE ingredientes_pratos(
	id				INT IDENTITY(1,1),
	id_prato		INT,
	id_ingrediente	INT,
	FOREIGN KEY (id_prato) REFERENCES pratos(id),
	FOREIGN KEY (id_ingrediente) REFERENCES ingredientes(id)
);