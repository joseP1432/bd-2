CREATE VIEW total_func AS
SELECT func.cod_depto, COUNT(*) as TOTAL
FROM funcionario func
GROUP BY func.cod_depto;

SELECT d.descricao, f.nome, tf.TOTAL
FROM departamento d
LEFT OUTER JOIN funcionario f ON d.cod_gerente = f.codigo
LEFT OUTER JOIN total_func tf ON d.codigo = tf.cod_depto;