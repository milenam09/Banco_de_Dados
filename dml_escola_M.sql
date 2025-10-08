--Comando para usar um banco ja criado
USE db_escola_M;


--Comando para inserir um novo registro

INSERT INTO tb_escola(nome, endereco)
VALUES('Moura Branco', 'Rua Tapajós 1085 - Olimpico');

SELECT * FROM tb_escola;

--registro na tabela aluno
INSERT INTO tb_aluno(nome,cpf,data_nas,matricula,id_escola) VALUES
('Milena','47269169802','2008/09/01','qf3axAFQjx',1),
('Rawany','58048489881','2009/6/01','ADaEu5gAzO',1);


INSERT INTO tb_aluno(nome,cpf,data_nas,matricula,id_escola) VALUES
('Guilherme','54248434511','2009/06/25','4365',1),
('Bia','57648480981','2009/03/26','0976',1),
('Gustavo','58042111881','2009/06/25','0987',1),
('Julio','58055589881','2009/06/25','7888',1),
('Maduda','58048477681','2009/10/09','7766',1);

SELECT * FROM tb_aluno;

INSERT INTO tb_turma (numero_sala,serie,periodo,nome_turma,id_escola) VALUES
('10','2A','Manha','os mais mais',1),
('5','1A','Manha','os lindos',1);

SELECT * FROM tb_turma;

INSERT INTO tb_prova(nome_profe,materia,duracao,nota,data_prova,id_aluno)
VALUES
('Andreia','Matematica','14:30:00',10,'2025-06-14',1),
('Eliana','Geografia','14:30:00',8.5, '2025-06-15',1);

SELECT * FROM tb_prova;

--tabela turmaprova - INTERMEDIARIA

INSERT INTO tb_turma_prova(id_turma,id_prova)
VALUES 
(2,17),
(2,16);

SELECT * FROM tb_turma_prova;


--Comando que atualiza o nome do aluno pelo cpf
UPDATE tb_aluno
SET nome = 'Guilherme'
WHERE cpf = '54248434511';

SELECT * FROM tb_aluno;

--Comando que exclui um registro
DELETE FROM tb_aluno
WHERE matricula ='ADaEu5gAzO'

SELECT * FROM tb_aluno

