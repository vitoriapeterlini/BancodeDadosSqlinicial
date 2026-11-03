SELECT name as Banco_De_Dados --Selecionando o nome dos bancos de dados
from sys.databases --Selecionando todos os bancos de dados existentes no servidor
Order by name; --Ordenando todos os banco de. dado

Use DbVitoriaPetter;
GO

Select name From sys.tables;
GO

CREATE TABLE Estudantes(
    IdEstudante INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Turma VARCHAR(50) NOT NULL,
    Apelido VARCHAR(30)
);

CREATE TABLE Videos(
    IdVideo INT PRIMARY KEY,
    Titulo VARCHAR(100) NOT NULL,
    Descricao VARCHAR(255) NOT NULL,
    data_publicacao DATE NOT NULL,
    Duracao TIME NOT NULL,
    MATRICULA_ESTUDANTE INT NOT NULL,
    FOREIGN KEY (MATRICULA_ESTUDANTE) REFERENCES Estudantes(IdEstudante)
);

--INSERINDO DADOS NA TABELA ESTUDANTES

INSERT INTO Estudantes (IdEstudante, Nome, Turma, Apelido)
VALUES
(1, 'Jair Bolsonaro', '2A', 'Bolsonaro'),
(2, 'Neymar do Santos Do Nascimento Junior', '2A', 'Neymar Jr'),
(3, 'Luis Inacio da Silva', '2A', 'Lule'),
(4, 'Victor da Silva do Nascimento', '2A', 'Vitão'),
(5, 'Luis Filipe Alves', '2A', 'Luisao'),
(6, 'Lucas oliveira Tofaneli', '2A', 'Luquinhas'),
(7, 'Ruan Henrique Faria', '2A', 'Ruansao'),
(8, 'Marco Tulio', '2A', 'Authentic Games'),
(9, 'Valentina da Silva do Nascimento', '2A', 'Vavá'),
(10, 'Vinicius da Silva do Nascimento', '2A', 'Vini')

Select * from Estudantes;

INSERT INTO Videos (IdVideo, Titulo, Descricao, data_publicacao, Duracao, matricula_estudante)
VALUES
(1, 'Teia de Dados','Homem-Aranha I', '2023-01-15', '00:45:00', 1),
(2, 'Amor e Ação','Mary Jane II', '2023-02-20', '00:50:00', 2),
(3, 'Homem de Ferro: Ascensão','Tony Stark III', '2023-03-10', '01:30:00', 3),
(4, 'Agente Secreta','Natasha Romanoff IV', '2023-04-05', '01:15:00', 4),
(5, 'Deus do Trovão','Thor Odinson V', '2023-05-12', '01:20:00', 5),
(6, 'Cavaleiro das Trevas','Bruce Wayne VI', '2023-06-18', '01:40:00', 6),
(7, 'O Homem de Aço','Clark Kent VII', '2023-07-22', '01:25:00', 7),
(8, 'A Princesa Guerreira','Diana Prince VIII', '2023-08-30', '01:35:00', 8),
(9, 'Velocidade Extrema','Barry Allen IX', '2023-09-14', '01:10:00', 9),
(10, 'Rei dos Mares','Arthur Curry X', '2023-10-05', '01:50:00', 10);

Select * from Videos;

/* Alterar dados de uma linha com UPDATE */
UPDATE Estudantes
SET Apelido = '22'
WHERE IdEstudante = 1;

Select * from Estudantes;

-- BUSCAR DADOS DE UMA TABELA COM INNER JOIN - INNER JOIN É USADO PARA COMBINAR LINHAS DE DUAS OU MAIS TABELAS

SELECT --Select responsavel por selecionar os dados da tabelas videos e estudantes

v.Titulo, -- v.Titulo seleciona o nome do estudande da tabela Estudantes e renomeia a coluna como Autor

e.Nome AS Autor, --e.Nome seleciona o nome do estudante da tabela Estudantes e renomeia a coluna como Autor

e.Apelido AS Heroi, -- e.Apelido seleciona o apelido do estudante da tabela Estudantes e renomeia a coluna como Heroi 

v.Duracao -- v.Duracao seleciona a duracao do video da tabela Videos

FROM Videos AS v -- FROM Videos AS v seleciona a tabela Videos e renomeia como v

INNER JOIN Estudantes AS e -- INNER JOIN Estudandes AS e seleciona AS e seleciona a tabela Estudantes e renomeia como e

ON v.MATRICULA_ESTUDANTE = e.IdEstudante;