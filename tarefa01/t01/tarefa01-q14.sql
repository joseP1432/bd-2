CREATE VIEW total_atv AS
SELECT cod_responsavel, COUNT(*) as TOTAL
FROM atividade
GROUP BY cod_responsavel;

SELECT f.nome, ta.TOTAL
FROM funcionario f, total_atv ta 
WHERE f.codigo = ta.cod_responsavel;