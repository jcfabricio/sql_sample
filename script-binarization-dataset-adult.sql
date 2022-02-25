# Binarizando a variável sex (0/1)
SELECT * FROM schema_test.tb_adult LIMIT 5;

# Checando as categorias da variável
SELECT DISTINCT sex FROM schema_test.tb_adult;

# Male = 0 / Female = 1
SELECT 
	CASE WHEN sex = 'Male' THEN 0 ELSE 1 END AS sex
FROM schema_test.tb_adult;

# Criando uma nova versão da tabela com a nova variável
CREATE TABLE schema_test.tb_adult_v2
AS
SELECT 
	age,
    workclass,
    fniwgt,
    education,
    education_num,
    marital_status,
    occupation,
    relationship,
    race,
    CASE WHEN sex = 'Male' THEN 0 ELSE 1 END AS sex_bin,
    sex,
    capital_gain,
    capital_loss,
    hours_per_week,
    native_country,
    class
FROM schema_test.tb_adult;

# Visualizando o cabeçalho da nova tabela
SELECT * FROM schema_test.tb_adult_v2;

# Verificando as categorias da variável sex_bin
SELECT sex_bin FROM schema_test.tb_adult_v2;