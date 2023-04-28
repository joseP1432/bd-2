SELECT pro.nome, dep.descricao, func.nome, dep_func.descricao AS dep_do_func
FROM projeto pro 
JOIN departamento dep ON pro.cod_depto = dep.codigo
JOIN funcionario func ON pro.cod_responsavel = func.codigo
JOIN departamento dep_func ON func.cod_depto = dep_func.codigo