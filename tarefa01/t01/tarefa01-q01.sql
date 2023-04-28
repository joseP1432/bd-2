  SELECT f.nome, f.salario FROM funcionario f 
  WHERE f.salario > 
    (SELECT fc.salario
      FROM funcionario fc, departamento d
      WHERE fc.codigo = d.codigo AND d.codigo=1
    )