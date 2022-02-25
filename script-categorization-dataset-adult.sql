# Categorizando a variável age

# age entre 17-30 = group 1
# age entre 31-45 = group 2
# age entre 46-60 = group 3
# age entre 61-75 = group 4
# age entre 76-90 = group 5

CREATE TABLE schema_test.tb_adult_v3
AS
SELECT
	CASE 
		WHEN age >= '17' AND age <= '30'THEN 'Group 1'
        WHEN age >= '30' AND age <= '45' THEN 'Group 2'
        WHEN age >= '45' AND age <= '60' THEN 'Group 3'
        WHEN age >= '60' AND age <= '75' THEN 'Group 4'
        WHEN age >= '75' AND age <= '90' THEN 'Group 5' 
	END AS age_group,
    age,
    workclass,
    fniwgt,
    education,
    education_num,
    marital_status,
    occupation,
    relationship,
    race,
    sex,
    sex_bin,
    capital_gain,
    capital_loss,
    hours_per_week,
    native_country,
    class
FROM schema_test.tb_adult_v2;

# Visualizando o cabeçalho dos dados da nova tabela
SELECT * FROM schema_test.tb_adult_v3 LIMIT 5;

# Verificando as categorias da variável age_group
SELECT DISTINCT age_group FROM schema_test.tb_adult_v3;