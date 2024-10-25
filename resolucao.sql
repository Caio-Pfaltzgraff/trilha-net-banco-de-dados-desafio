--DESAFIO 01
SELECT Nome, Ano FROM Filmes;

--DESAFIO 02
SELECT 
Nome,Ano, Duracao
FROM Filmes
ORDER BY Ano;

--DESAFIO 03
SELECT
Nome, Ano, Duracao
FROM Filmes
WHERE Nome LIKE '%de volta para o futuro%'

--DESAFIO 04
SELECT
Nome, Ano, Duracao
FROM Filmes
WHERE
Ano = 1997;

--DESAFIO 05
SELECT
Nome, Ano, Duracao
FROM Filmes
WHERE
Ano > 2000;

--DESAFIO 06
SELECT
Nome, Ano, Duracao
FROM Filmes
WHERE
Duracao > 100
AND Duracao < 150
ORDER BY Duracao;

--DESAFIO 07
SELECT
Ano,
COUNT(*) Quantidade
FROM Filmes
GROUP BY ANO 
ORDER BY Quantidade DESC;

--DESAFIO 08
SELECT *
FROM Atores
WHERE Genero = 'M';

--DESAFIO 09
SELECT *
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

--DESAFIO 10
SELECT
F.Nome, G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG
ON F.Id = FG.IdFilme
INNER JOIN Generos G
ON FG.IdGenero = G.Id;

--DESAFIO 11
SELECT
F.Nome, G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG
ON F.Id = FG.IdFilme
INNER JOIN Generos G
ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério';

--DESAFIO 12
SELECT 
F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM Filmes F
INNER JOIN ElencoFilme EF
ON F.Id = EF.IdFilme
INNER JOIN Atores A
ON EF.IdAtor = A.Id;
