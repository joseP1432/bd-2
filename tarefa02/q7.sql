CREATE OR REPLACE FUNCTION calcular_atividades_membro(mem_cod INTEGER, pro_cod INTEGER) 
RETURNS INTEGER AS $$
DECLARE
    atividades_membro INTEGER;
BEGIN
    SELECT COUNT(*) INTO atividades_membro FROM atividade a
    JOIN atividade_membro am ON a.codigo  = am.codatividade 
    JOIN atividade_projeto ap ON a.codigo = ap.codatividade 
    WHERE am.codmembro = mem_cod AND ap.codprojeto  = pro_cod;
   
    RETURN atividades_membro;
END;
$$ LANGUAGE plpgsql;

SELECT f.nome, p.descricao, calcular_atividades_membro(f.codigo, p.codigo) FROM funcionario f, projeto p  