SELECT f.nome, f.salario, f.cod_depto  
FROM funcionario f WHERE f.codigo <> ALL 
  (SELECT d.cod_gerente FROM departamento d, funcionario fc
  WHERE d.cod_gerente = fc.codigo) ORDER BY f.cod_depto