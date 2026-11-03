Use DbVitoriaPetter;
GO

CREATE TABLE  categorias(
  id_categorias 
);
NSERT INTO Filmes
    (Id_Filmes, titulo, ano_lancamento, duracao, classificacao_indicativa, sinopse, Id_Categoria)
VALUES
    (1, 'Matrix',               1999, 136, '14', 'Um programador descobre que a realidade é uma simulação.', 5),
    (2, 'Toy Story',            1995,  81, 'L',  'Brinquedos ganham vida quando ninguém está olhando.', 4),
    (3, 'Missão Impossível',    1996, 110, '14', 'Um agente tenta provar sua inocência após uma missão fracassada.', 1),
    (4, 'Meu Malvado Favorito', 2010,  95, 'L',  'Um vilão adota três meninas como parte de um plano.', 4),
    (5, 'Tropa de Elite',       2007, 115, '16', 'Um capitão procura alguém para assumir seu lugar na corporação.', 3),
    (6, 'Se Beber, Não Case!',  2009, 100, '16', 'Três amigos tentam lembrar o que aconteceu na despedida de solteiro.', 2),
    (7, 'Interestelar',         2014, 169, '10', 'Exploradores atravessam um buraco de minhoca para salvar a humanidade.', 5),
    (8, 'Central do Brasil',    1998, 110, '14', 'Uma ex-professora ajuda um menino a procurar o pai.', 3),
    (9, 'Os Incríveis',         2004, 115, 'L',  'Uma família de super-heróis tenta viver uma vida comum.', 4);
    (10, 'Titanic', 1997, 195, '12', 'Um jovem artista e uma jovem da alta sociedade vivem um romance durante a viagem do Titanic.', 6),

    (11, 'Diário de uma Paixão', 2004, 123, '12', 'Um casal enfrenta diferenças sociais e desafios ao longo de uma história de amor.', 6),

    (12, 'Como Eu Era Antes de Você', 2016, 110, '12','Uma jovem cria uma ligação especial com um homem que passa a depender de seus cuidados.', 6);






INSERT INTO Estudantes (IdEstudante, Nome, Turma, Apelido)
VALUES
(1, 'Peter Parker','2A','Homem-Aranha'),
(2,'Mary Jane','2A','MJ'),
(3,'Tony Stark','3B','Homem de Ferro'),
(4, 'Natasha Romanoff', '2B', 'Viúva Negra'),
(5, 'Thor Odinson', '2B', 'Thor'),
(6, 'Bruce Wayne', '2B', 'Batman'),
(7, 'Clark Kent', '2C', 'Superman'),
(8, 'Diana Prince', '2C', 'Mulher-Maravilha'),
(9, 'Barry Allen', '2C', 'Flash'),
(10, 'Arthur Curry', '2A', 'Aquaman');







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



Select * from Estudantes;



SELECT --Select responsável por selecionar os dados das tabelas Videos e Estudantes

v.Titulo, -- v .Titulo seleciona o titulo do video da tabela Videos

e.Nome AS Autor, -- e.Nome seleciona o nome do estudante da tabela Estudantes e renomeia a coluna como Autor

e.Apelido AS Heroi, --e.Apelido seleciona o apelido do estudante da tabela Estudantes e renomeia a coluna como heroi

v.Duracao, --v.Duracao selecionaa duracao do video da tabela videos

FROM Videos AS v -- FROM Videos AS v seleciona a tabela Videos e renomeia como v

INNER JOIN Estudantes AS e -- INNER JOIN Estudantes AS e seleciona a tabela Estudantes e renomeia como e

ON v.matricula_estudante = e.IdEstudante; --