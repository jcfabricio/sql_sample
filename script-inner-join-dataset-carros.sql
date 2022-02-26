# Cria a tabela categoria
CREATE TABLE schema_test.tb_categoria(
	id_categoria INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(30) NULL
);

# Cria a tabela cor
CREATE TABLE schema_test.tb_cor(
	id_cor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_cor VARCHAR(30) NULL
);

# Cria a tabela fabricante
CREATE TABLE schema_test.tb_fabricante(
	id_fabricante INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_fabricante VARCHAR(30) NULL
);

# Cria a tabela tipo
CREATE TABLE schema_test.tb_tipo(
	id_tipo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_tipo VARCHAR(30) NULL
);

# Cria a tabela carro
CREATE TABLE schema_test.tb_carro(
	id_carro INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_carro VARCHAR(30) NULL,
    id_categoria INT NOT NULL,
    id_cor INT NOT NULL,
    id_fabricante INT NOT NULL,
    id_tipo INT NOT NULL,
    CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id_categoria),
    CONSTRAINT fk_cor FOREIGN KEY (id_cor) REFERENCES tb_cor(id_cor),
    CONSTRAINT fk_fabricante FOREIGN KEY (id_fabricante) REFERENCES tb_fabricante(id_fabricante),
    CONSTRAINT fk_tipo FOREIGN KEY (id_tipo) REFERENCES tb_tipo(id_tipo),
    ano VARCHAR(30) NULL,
    kilometragem INT NULL,
    preco INT NULL
);

# Utilizando inner join para buscar dados em 5 tabelas.
SELECT 
	C.nome_carro, F.nome_fabricante, C.ano, C.kilometragem, Ca.nome_categoria, Co.nome_cor, T.nome_tipo, C.preco
FROM schema_test.tb_carro C INNER JOIN schema_test.tb_fabricante F
ON C.id_fabricante = F.id_fabricante
INNER JOIN schema_test.tb_categoria Ca 
ON C.id_categoria = Ca.id_categoria
INNER JOIN schema_test.tb_cor Co
ON C.id_cor = Co.id_cor
INNER JOIN schema_test.tb_tipo T
ON C.id_tipo = T.id_tipo;

# Utilizando a cláusula where
SELECT 
	C.nome_carro,
    F.nome_fabricante, 
    C.ano, 
    C.kilometragem, 
    Ca.nome_categoria,
    Co.nome_cor,
    T.nome_tipo, 
    C.preco
FROM 
	schema_test.tb_carro C, 
    schema_test.tb_fabricante F,
    schema_test.tb_categoria Ca,
    schema_test.tb_cor Co,
    schema_test.tb_tipo T
WHERE 
	C.id_fabricante = F.id_fabricante AND
    C.id_categoria = Ca.id_categoria AND
    C.id_cor = Co.id_cor AND
    C.id_tipo = T.id_tipo;