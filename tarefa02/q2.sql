CREATE OR REPLACE FUNCTION media_idade()
RETURNS TABLE(departamento VARCHAR, media_idade NUMERIC) AS $$
BEGIN
  RETURN QUERY
  SELECT d.sigla, ROUND(AVG(EXTRACT(YEAR FROM AGE(current_date, f.datanasc))),2) AS media_idade
  FROM funcionario f
  join departamento d on f.depto = d.codigo  
  GROUP BY d.codigo ;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM media_idade();