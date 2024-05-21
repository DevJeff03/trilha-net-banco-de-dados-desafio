1 --

SELECT 
	nome,
	ano
FROM Filmes

2 --

SELECT
	nome,
	ano, 
	Duracao
FROM Filmes 
ORDER BY ano

3 --

SELECT 
	nome, 
	ano, 
	duracao 
FROM Filmes 
WHERE nome = 'De Volta para o Futuro'

4 -- 

SELECT 
	nome, 
	ano, 
	duracao 
FROM Filmes 
WHERE ano = 1997

5 --

SELECT 
	nome, 
	ano, 
	duracao 
FROM Filmes 
WHERE ano > 2000

6 -- 

SELECT 
	nome, 
	ano, 
	duracao 
FROM Filmes 
WHERE duracao > 100 AND duracao < 150 
ORDER BY duracao

7 -- 

SELECT 
	ano, 
	COUNT(ano) Quantidade 
FROM Filmes 
GROUP BY ano 
ORDER BY Quantidade desc

8 --

SELECT 
	Id, 
	PrimeiroNome, 
	UltimoNome, 
	Genero 
FROM Atores 
WHERE Genero = 'M'

9 --

SELECT 
	Id, 
	PrimeiroNome, 
	UltimoNome, 
	Genero 
FROM Atores 
WHERE Genero = 'F' 
ORDER BY PrimeiroNome

10 --

SELECT
	Filmes.Nome,
	Generos.Genero
FROM 
((FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id)
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id)

11 --

SELECT 
	Filmes.Nome,
	Generos.Genero
FROM
((FilmesGenero
INNER JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id)
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id)
WHERE Generos.Genero = 'Mistério'

12 -- 

SELECT
	Filmes.Nome,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM
	((ElencoFilme
INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id)
INNER JOIN Atores ON ElencoFilme.Id = Atores.Id)
INNER JOIN Generos ON ElencoFilme.IdAtor = Generos.Id