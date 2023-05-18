CREATE OR REPLACE FUNCTION calcular_idade(data DATE) RETURNS INTEGER AS $$
DECLARE
    idade INTEGER;
BEGIN
    SELECT EXTRACT(YEAR FROM age(now(), data)) INTO idade;
    RETURN idade;
END;
$$ LANGUAGE plpgsql;

SELECT f.nome, calcular_idade(f.datanasc) FROM funcionario f