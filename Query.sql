-- 1
--SELECT 
--	Nome, 
--	Ano 
--FROM Filmes

-- 2
--SELECT
--	Nome,
--	Ano
--FROM Filmes
--ORDER BY Ano ASC

-- 3
--SELECT
--	Nome,
--	Ano,
--	Duracao
--FROM Filmes
--WHERE Nome = 'De Volta para o Futuro'

-- 4
--SELECT
--	Nome, 
--	Ano,
--	Duracao
--FROM Filmes
--WHERE Ano = 1997

-- 5
--SELECT
--	Nome, 
--	Ano,
--	Duracao
--FROM Filmes
--WHERE Ano > 2000

-- 6
--SELECT
--	Nome, 
--	Ano,
--	Duracao
--FROM Filmes
--WHERE Duracao > 100 AND Duracao < 150
--ORDER BY Duracao ASC

-- 7
--SELECT
--	Ano,
--	COUNT(*) AS Quantidade	
--FROM Filmes
--GROUP BY Ano
--ORDER BY Quantidade DESC

-- 8
--SELECT *
--FROM Atores
--WHERE Genero = 'M'

-- 9
--SELECT *
--FROM Atores
--WHERE Genero = 'F'
--ORDER BY PrimeiroNome

-- 10 
--SELECT 
--	f.Nome, g.Genero
--FROM Filmes AS f
--INNER JOIN	FilmesGenero AS fg ON f.id = fg.IdFilme
--INNER JOIN	Generos AS g ON g.id = fg.IdGenero

-- 11 
--SELECT 
--	f.Nome, 
--	g.Genero
--FROM Filmes AS f
--INNER JOIN	FilmesGenero AS fg ON f.id = fg.IdFilme
--INNER JOIN	Generos AS g ON g.id = fg.IdGenero
--WHERE g.Genero = 'Mistério'

-- 12
SELECT 
	f.Nome,
	a.PrimeiroNome, a.UltimoNome,
	ef.Papel
FROM Filmes AS f
INNER JOIN	ElencoFilme AS ef ON f.id = ef.IdFilme
INNER JOIN	Atores AS a ON a.id = ef.IdAtor
