--comando que cria um novo banco de dados no SSMS
CREATE DATABASE db_escola_M;

--comando que separa em blocos, executando em ordem sequencial.
GO

USE db_escola_M;

--comando que cria tabela
CREATE TABLE tb_escola(
    id          INT             IDENTITY(1,1)   PRIMARY KEY
   ,nome        NVARCHAR(150)   NOT NULL
   ,endereco    NVARCHAR(255)   NOT NULL
);
GO

--Comando consultar tabelas
SELECT * FROM tb_escola;

--Tabela Aluno
CREATE TABLE tb_aluno(
    id          INT                IDENTITY(1,1)   PRIMARY KEY,
    nome        NVARCHAR (150)                     NOT NULL,
    CPF         NCHAR(14)          UNIQUE          NOT NULL,
    matricula   NVARCHAR(10)       UNIQUE          NOT NULL,
    data_nas    DATE                               NOT NULL,
    id_escola   INT                NOT NULL

    FOREIGN KEY (id_escola) REFERENCES tb_escola(id)
);


--Tabela Prova
CREATE TABLE tb_prova(
    id          INT                 IDENTITY(1,1)   PRIMARY KEY,
    nome_profe  NVARCHAR(150)       NOT NULL,
    materia     NVARCHAR (200)      NOT NULL,
    duracao     TIME                NOT NULL,
    nota        DECIMAL(3,1)        NOT NULL,
    data_prova  DATE                NOT NULL,
    id_aluno    INT                 NOT NULL,

    FOREIGN KEY(id_aluno) REFERENCES tb_aluno(id)
);

SELECT * FROM tb_prova;

--Tabela turma

CREATE TABLE tb_turma(
    id              INT             IDENTITY(1,1)   PRIMARY KEY,
    numero_sala     INT             NOT NULL,
    periodo         NCHAR(5)        NOT NULL,
    serie           NVARCHAR(10)    NOT NULL,
    nome_turma      NVARCHAR(150)   NOT NULL,
    id_escola       INT             NOT NULL,

    FOREIGN KEY (id_escola) REFERENCES tb_escola(id)
);

SELECT * FROM tb_turma

--Tabela turmaprova

CREATE TABLE tb_turma_prova(
    id_turma        INT     NOT NULL,
    id_prova        INT     NOT NULL,

    PRIMARY KEY (id_turma,id_prova)
);

SELECT * FROM  tb_turma_prova
