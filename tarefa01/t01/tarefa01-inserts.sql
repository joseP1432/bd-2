-- Adicionando Funcionários

insert into funcionario
(nome, sexo, dt_nasc, salario)
values ('Maria', 'F', '1981-07-01', 2500.00),
('Josefa', 'F', '1986-09-17', 2500.00),
('Carlos', 'M', '1985-11-21', 2500.00),
('Humberto', 'M', '1970-05-07', 1500.00),
('José', 'M', '1979-07-12', 3500.00),
('Xuxa', 'F', '1970-03-28', 13500.00),
('Sasha', 'F', '1970-03-28', 1500.00),
('Victor', 'M', '1970-03-28', 500.00),
('Doisberto', 'M', '1980-07-14', 2500.00),
('Tresberta', 'F', '1992-09-01', 3000.00);

-- Adicionando departamentos 

insert into departamento (descricao, cod_gerente)
values ('Dep História', 1),
('Dep Computação', null),
('Dep Geografia', null),
('Dep Alfabetização', 2),
('Dep Robotica', 5);

-- Atualizando funcionários

UPDATE funcionario SET cod_depto=1 WHERE codigo=1;
UPDATE funcionario SET cod_depto=2 WHERE codigo=2;
UPDATE funcionario SET cod_depto=2 WHERE codigo=3;
UPDATE funcionario SET cod_depto=4 WHERE codigo=4;
UPDATE funcionario SET cod_depto=4 WHERE codigo=5;
UPDATE funcionario SET cod_depto=3 WHERE codigo=6;
UPDATE funcionario SET cod_depto=3 WHERE codigo=7;
UPDATE funcionario SET cod_depto=5 WHERE codigo=8;
UPDATE funcionario SET cod_depto=5 WHERE codigo=9;
UPDATE funcionario SET cod_depto=4 WHERE codigo=10;


insert into projeto(nome, descricao, cod_responsavel, cod_depto, data_inicio, data_fim)
values ('APF', 'Analisador de Ponto de Função', 2, 2, '2018-02-26', '2019-06-30'),
('Monitoria', 'Projeto de Monitoria 2019.1', 1, 3, '2019-02-26', '2019-12-30'),
('BD', 'Projeto de Banco de Dados', 3, 5, '2018-02-26', '2018-06-30'),
('ES', 'Projeto de Engenharia de Software', 5, 1, '2018-02-26', '2018-06-30'),
('ARQ', 'Projeto de Arquitetura de Software', 4, 4, '2018-02-26', '2018-06-30');

insert into atividade(nome, descricao, cod_responsavel, data_inicio, data_fim)
values ('Atividade 1', 'APF - Atividade 1', 1, '2018-02-26', '2018-06-30'),
('Atividade 2','APF - Atividade 2', 1,'2018-06-26', '2018-07-30'),
('Atividade 3','APF - Atividade 3', 3, '2018-08-26', '2018-09-30'),
('Atividade 4','APF - Atividade 4', 2, '2018-08-26', '2018-09-30'),
('Atividade 5','APF - Atividade 5', 2, '2018-09-30', '2018-10-30'),
('Monitoria','Monitoria - Atividade 1', 5, '2018-06-26', '2018-07-30'),
('Ativiade 1','BD - Atividade 1', 5, '2018-06-26', '2018-07-30'),
('Ativiade 2','BD - Atividade 2', 3, '2018-08-26', '2018-09-30'),
('Ativiade 3','BD - Atividade 3', 3, '2018-08-26', '2018-09-30'),
('Ativiade 4','ES - Atividade 1', 4, '2018-09-30', '2018-10-30'),
('Ativiade 5','ES - Atividade 2', 4, '2018-06-26', '2018-07-30');

insert into atividade_projeto(cod_atividade, cod_projeto)
values (1,2),(2,1),(4,2),(5,3),(1,5);