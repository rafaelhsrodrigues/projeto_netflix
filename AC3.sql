/*
PROJETO NETFLIX: Atraves de dados, analisar quais tipos de series fazem sucesso no site de Reviews
e encontrar algum padr�o para a Netflix investir em uma proxima produ��o

Para esta AC:
		1 - visualizar apenas as series
		2 - visualizar as series bem avaliadas (70+)
*/



SELECT
	*
FROM netflix

--visualizar apenas as series e as colunas que ser�o analisadas
SELECT
	title, type, release_year, age_certification, runtime, genres, production_countries, seasons, imdb_score, imdb_votes
FROM 
	netflix
WHERE
	type = 'SHOW'


--visualizar as series bem avaliadas (70+)
SELECT
	title, type, release_year, age_certification, runtime, genres, production_countries, seasons, imdb_score, imdb_votes
FROM 
	netflix
WHERE
	type = 'SHOW'
	AND
	imdb_score >= 70


--Filtrar as 100 s�ries com maior visualiza��o, e tratando a coluna 'seasons'
SELECT TOP 100
	title, type, release_year, age_certification, runtime, genres, production_countries, seasons/10 as seasons, imdb_score, imdb_votes
FROM 
	netflix
WHERE
	type = 'SHOW'
	AND
	imdb_score >= 70
ORDER BY
	imdb_votes DESC


