CREATE OR REPLACE FUNCTION porcentagem_atividades_membro(mem_cod INTEGER, pro_cod INTEGER) 
RETURNS INTEGER AS $$
DECLARE
    resultado INTEGER;
  	total_atividades INTEGER;
  	total_atividades_membro INTEGER;
BEGIN
    SELECT calcular_atividades_membro(mem_cod, pro_cod) as total_atividades_membro;
   	SELECT COUNT(*) FROM atividade a INTO total_atividades;
   	IF total_atividades > 0 THEN 
   		resultado = 0;
   	ELSE
    	resultado := (total_atividades_membro::NUMERIC / total_atividades::NUMERIC) * 100;
    	resultado := ROUND(porcentagem, 2);
    END IF; 
   	RETURN resultado;
END;
$$ LANGUAGE plpgsql;

SELECT * FROM calcular_atividades_membro(1,1)