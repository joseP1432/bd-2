CREATE OR REPLACE PROCEDURE exibir_funcionarios_acima_media()
LANGUAGE plpgsql AS $$
DECLARE
  dep_sigla VARCHAR;
  dep_media_idade NUMERIC;
  func_nome VARCHAR;
  func_calc_idade NUMERIC;
BEGIN
  -- Selecionar cada departamento
  FOR dep_sigla, dep_media_idade IN 
  SELECT departamento, media_idade FROM media_idade()
  LOOP	
  	FOR func_nome, func_calc_idade IN
      SELECT f.nome, calcular_idade(f.datanasc)
        FROM funcionario f
        JOIN departamento d ON f.depto = d.codigo
    LOOP	
	    IF func_calc_idade > dep_media_idade THEN
	    	RAISE NOTICE 'Funcionário: % - Idade: % - Departamento: %', func_nome, func_calc_idade, dep_sigla;
	    	EXIT;
	    END IF; 
	END LOOP;
  END LOOP;
END;
$$;

CALL exibir_funcionarios_acima_media();
