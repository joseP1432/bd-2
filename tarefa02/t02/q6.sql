CREATE OR REPLACE PROCEDURE exibir_equipe(pro_codigo INTEGER)
LANGUAGE plpgsql AS $$
DECLARE
	equ_codigo INTEGER;
	equ_nome VARCHAR;
 	dep_sigla VARCHAR;
  	func_nome VARCHAR;
	
BEGIN
	SELECT e.codigo, e.nomeequipe INTO equ_codigo, equ_nome FROM equipe e
	JOIN projeto p ON e.codigo = p.equipe
	WHERE p.codigo = pro_codigo;
 
	FOR func_nome, dep_sigla IN SELECT f.nome, d.sigla FROM funcionario f 
	JOIN departamento d ON f.depto = d.codigo
	JOIN membro m ON m.codfuncionario = f.codigo 
	WHERE m.codequipe = equ_codigo
		LOOP 
			RAISE NOTICE 'Equipe: % - Funcionário: % - Departamento: %',equ_nome, func_nome, dep_sigla;
		END LOOP;
END;
$$;

CALL exibir_equipe(2);
