USE db_escola_M;

--ira exibir somente as colunas personalizadas(diferentes do *)
SELECT id,nome FROM tb_escola;

--SELECT TOP limita a quantidade de registros 
SELECT TOP 3 nome FROM tb_aluno;

SELECT TOP 3 nome 
FROM tb_aluno
ORDER BY id DESC ;

--exibir somemte a turma do periodo da manha
SELECT * FROM tb_turma

SELECT nome_turma
FROM tb_turma
WHERE periodo = 'Manhã';

--exibir prova professora eliana

SELECT * FROM tb_prova

WHERE nome_profe = 'Eliana';

--exibe quantos aulos tem
SELECT COUNT(cpf) AS qtd_total_alunos FROM tb_aluno;

--SELECT nome  FROM tb_aluno

--exibir quantos alunos estao atrelados a uma prova que pertence a uma materia

SELECT COUNT(id_aluno) AS qtd_alunos
FROM tb_prova
WHERE materia ='Geografia';

SELECT * FROM tb_prova;

--exiba a data de nascimento do aluno mais velho 
SELECT MIN (data_nas) FROM tb_aluno;

SELECT * FROM tb_aluno;

--2000(max de MAIOR)
--1987(min de MENOR)

SELECT MAX (data_nas) FROM tb_aluno;

SELECT * FROM tb_aluno;

--exibe a data de nascimento e o nome do aluno mais VELHO
SELECT nome, data_nas
FROM tb_aluno
WHERE data_nas =(SELECT MIN (data_nas) FROM tb_aluno);


--exibe a data de nascimento e o nome do aluno mais NOVO
SELECT nome, data_nas
FROM tb_aluno
WHERE data_nas =(SELECT MAX (data_nas) FROM tb_aluno);

--soma os ID's das turmas cadastradas
SELECT SUM(id) AS total FROM tb_turma;

SELECT * FROM tb_turma

--media de notas da tabela prova
SELECT AVG (nota) AS media FROM tb_prova;

SELECT * FROM tb_prova;

--exibe os nomes dos alunos mais novos
SELECT MAX(data_nas) AS mais_novo, id
FROM  tb_aluno
GROUP BY id 
ORDER BY mais_novo DESC;
