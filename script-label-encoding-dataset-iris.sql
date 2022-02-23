CREATE TABLE schema_test.TB_IRIS (
	id_iris INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    sepal_length DOUBLE NULL,
    sepal_width DOUBLE NULL,
    petal_length DOUBLE NULL,
    petal_width DOUBLE NULL,
    class VARCHAR(20) NULL
);

SELECT * FROM schema_test.TB_IRIS;

# Aplicando codificação (encoding) a variável class através da técnica de label encoding.

# Verifica as possiveis categorias da variável class
SELECT DISTINCT class FROM schema_test.TB_IRIS;

SELECT
	id_iris,
    sepal_length,
    sepal_width,
    petal_length,
    petal_width,
    CASE
		WHEN class = 'Iris-setosa' THEN 1
        WHEN class = 'Iris-versicolor' THEN 2
        ELSE 3
        END AS class
FROM schema_test.tb_iris;



