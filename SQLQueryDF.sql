-- #1
SELECT 
    Nome, 
    Ano 
FROM Filmes LIMIT 14;

-- #2
SELECT 
    Nome, 
    Ano, 
    Duracao 
FROM Filmes 
ORDER BY Ano LIMIT 14;

-- #3
SELECT 
    Nome, 
    Ano, 
    Duracao 
FROM Filmes 
WHERE Nome = 'De Volta para o Futuro';

-- #4
SELECT
    Nome,
    Ano,
    Duracao
FROM Filmes 
WHERE Ano = 1997;

-- #5
SELECT 
    Nome, 
    Ano, 
    Duracao 
FROM Filmes 
WHERE Ano > '2000';

-- #6
SELECT 
    Nome, 
    Ano, 
    Duracao 
FROM Filmes 
WHERE Duracao > '100' AND Duracao < '150' 
ORDER BY Duracao
LIMIT 14;


-- #7
SELECT 
    Ano, 
    COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

-- #8
SELECT 
    Id,
    PrimeiroNome,
    UltimoNome,
    Genero
FROM Atores 
WHERE Genero = 'M';


-- #9
SELECT 
    Id,
    PrimeiroNome, 
    UltimoNome,
    Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

-- #10
select 
	f.Nome,
	g.Genero
from FilmesGenero fg
join Filmes f on f.id = fg.IdFilme
join Generos g on g.Id = fg.IdGenero;

-- #11
select 
	f.Nome,
	g.Genero
from FilmesGenero fg
join Filmes f on f.id = fg.IdFilme
join Generos g on g.Id = fg.IdGenero
where g.Genero = 'Mistério';

-- #12
SELECT
    f.Nome,
    a.PrimeiroNome,
    a.UltimoNome,
    ef.Papel
FROM ElencoFilme ef
INNER JOIN Filmes f on f.id = ef.IdFilme
INNER JOIN Atores a on a.Id = ef.IdAtor;
