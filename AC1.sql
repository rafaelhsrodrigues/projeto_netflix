/*
PROJETO NETFLIX: Atraves de dados, analisar quais tipos de series fazem sucesso no site de Reviews
e encontrar algum padr�o para a Netflix investir em uma proxima produ��o
*/


CREATE DATABASE projeto_netflix


--Tarefas -> Importar dados

--Verificando se a importa��o ocorreu
SELECT
	*
FROM netflix

/*Entendimento da base
	Proximos passos:
		1 - visualizar apenas as series
		2 - visualizar as series bem avaliadas (70+)
		3 - visualizar as series com maior quantidade de votos
		4 - encontrar as series bem avaliadas com maior popularidade
		5 - Insights
*\