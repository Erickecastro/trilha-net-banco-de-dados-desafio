USE Filmes;
GO

SELECT Nome, Ano
FROM Filmes;
GO

SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC;
GO

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';
GO

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997;
GO

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000;
GO

SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100
  AND Duracao < 150
ORDER BY Duracao ASC;
GO

SELECT Ano, COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY Ano DESC;
GO

SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'M';
GO

SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome ASC;
GO

SELECT f.Nome, g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
ORDER BY f.Nome;
GO

SELECT f.Nome, g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';
GO


SELECT
    f.Nome AS Filme,
    a.PrimeiroNome,
    a.UltimoNome,
    ef.Papel
FROM Filmes f
INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme
INNER JOIN Atores a ON ef.IdAtor = a.Id
ORDER BY f.Nome, a.PrimeiroNome, a.UltimoNome;
GO