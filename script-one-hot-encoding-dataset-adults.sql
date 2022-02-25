# Aplicando a técnica de codificação One Hot Encoding a variável relationship

# Verificando as categorias da variável
SELECT DISTINCT(relationship) FROM schema_test.tb_adult_v3;

CREATE TABLE schema_test.tb_adult_v4
AS
SELECT
	age_group,
    age,
    workclass,
    fniwgt,
    education,
    education_num,
    marital_status,
    occupation,
    relationship,
	CASE WHEN relationship = 'Not-in-family' THEN 1 ELSE 0 END AS relationship_n,
    CASE WHEN relationship = 'Husband' THEN 1 ELSE 0 END AS relationship_h,
    CASE WHEN relationship = 'Wife' THEN 1 ELSE 0 END AS relationship_w,
    CASE WHEN relationship = 'Own-child' THEN 1 ELSE 0 END AS relationship_on,
    CASE WHEN relationship = 'Unmarried' THEN 1 ELSE 0 END AS relationship_u,
    CASE WHEN relationship = 'Other-relative' THEN 1 ELSE 0 END AS relationship_or,
    race,
    sex,
    sex_bin,
    capital_gain,
    capital_loss,
    hours_per_week,
    native_country,
    class
FROM schema_test.tb_adult_v3;

# Visualizando o cabeçalho dos dados na nova tabela
SELECT * FROM schema_test.tb_adult_v4 LIMIT 5;

# Verificando as categorias das variáveis dummy
SELECT DISTINCT relationship_n FROM schema_test.tb_adult_v4;
SELECT DISTINCT relationship_h FROM schema_test.tb_adult_v4;
SELECT DISTINCT relationship_w FROM schema_test.tb_adult_v4;
SELECT DISTINCT relationship_on FROM schema_test.tb_adult_v4;
SELECT DISTINCT relationship_u FROM schema_test.tb_adult_v4;
SELECT DISTINCT relationship_or FROM schema_test.tb_adult_v4;