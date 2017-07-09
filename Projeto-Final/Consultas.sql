-- Consultas de dados

-- IN
SELECT fu.idfuncionario AS [ID], fu.nome AS [Nome], eq.nomeequipe AS [Nome da Equipe]
FROM Funcionario AS fu JOIN Equipe AS eq
ON fu.idequipe = eq.idequipe
WHERE fu.bairro IN ('Bessa', 'Manaíra');

-- NOT IN
-- INNER JOIN
SELECT fu.idfuncionario AS [ID], fu.nome AS [Nome], eq.nomeequipe AS [Nome da Equipe]
FROM Funcionario AS fu JOIN Equipe AS eq
ON fu.idequipe = eq.idequipe
JOIN Programa AS pr
ON fu.idfuncionario = pr.idfuncionario
JOIN Linguagens AS li
ON li.idlinguagem = pr.idlinguagem
WHERE li.nome NOT IN ('PHP', 'Javascript', 'Ruby', 'Pascal', 'Delphi');

-- BETWEEN
SELECT fu.idfuncionario AS [ID], fu.nome AS [Nome], DATEDIFF(YEAR, fu.datanasc, GETDATE()) AS [Idade]
FROM Funcionario AS fu
WHERE DATEDIFF(YEAR, fu.datanasc, GETDATE()) BETWEEN 20 AND 30;

-- NOT BETWEEN
SELECT fu.idfuncionario AS [ID], fu.nome AS [Nome], YEAR(fu.datanasc) AS [Ano de Nascimento]
FROM Funcionario AS fu
WHERE YEAR(fu.datanasc) BETWEEN 1980 AND 1995;

-- IS NULL
SELECT fu.idfuncionario AS [ID], fu.nome AS [Nome], fu.email AS [E-mail]
FROM Funcionario AS fu
WHERE fu.email IS NULL;

-- IS NOT NULL
SELECT fu.idfuncionario AS [ID], fu.nome AS [Nome], fu.idequipe AS [ID da Equipe]
FROM Funcionario AS fu
WHERE fu.email IS NOT NULL;

-- LIKE
SELECT fu.idfuncionario AS [ID], fu.nome AS [Nome], eq.nomeequipe AS [Nome da Equipe]
FROM Funcionario AS fu JOIN Equipe AS eq
ON fu.idequipe = eq.idequipe
WHERE fu.nome LIKE 'Rafael%';

-- NOT LIKE
SELECT fu.idfuncionario AS [ID], fu.nome AS [Nome], eq.nomeequipe AS [Nome da Equipe]
FROM Funcionario AS fu JOIN Equipe AS eq
ON fu.idequipe = eq.idequipe
WHERE fu.nome NOT LIKE '%Silva%' OR fu.nome NOT LIKE '%Medeiros%';

-- ORDER BY
SELECT fu.idfuncionario AS [ID], fu.nome AS [Nome], DATEDIFF(YEAR, fu.datanasc, GETDATE()) AS [Idade]
FROM Funcionario AS fu
ORDER BY Idade;

-- GROUP BY
-- COUNT
SELECT eq.nomeequipe AS [Nome da Equipe], COUNT(DISTINCT fu.idfuncionario) AS [Quantidade de Funcionários]
FROM Funcionario AS fu JOIN Equipe AS eq
ON fu.idequipe = eq.idequipe
GROUP BY eq.nomeequipe
ORDER BY COUNT(fu.idfuncionario);

-- INNER JOIN
-- GROUP BY
-- SUM
SELECT eq.nomeequipe AS [Nome da Equipe], SUM(ca.salario) AS [Soma dos salários da Equipe]
FROM Funcionario AS fu JOIN Equipe AS eq
ON fu.idequipe = eq.idequipe
JOIN Alocado AS al
ON fu.idfuncionario = al.idfuncionario
JOIN Cargo AS ca
ON al.idfuncionario = fu.idfuncionario
GROUP BY eq.nomeequipe
ORDER BY SUM(ca.salario);

-- GROUP BY
-- INNER JOIN
-- AVG
SELECT eq.nomeequipe AS [Nome da Equipe], AVG(ca.salario) AS [Soma dos salários da Equipe]
FROM Funcionario AS fu JOIN Equipe AS eq
ON fu.idequipe = eq.idequipe
JOIN Alocado AS al
ON fu.idfuncionario = al.idfuncionario
JOIN Cargo AS ca
ON al.idfuncionario = fu.idfuncionario
GROUP BY eq.nomeequipe
ORDER BY AVG(ca.salario);

-- MAX
-- SUBCONSULTA
SELECT fu.idfuncionario AS [ID], fu.nome AS [Nome], MAX(DATEDIFF(YEAR, fu.datanasc, GETDATE())) AS [Maior Idade]
FROM Funcionario AS fu
GROUP BY fu.idfuncionario, Nome, fu.datanasc
HAVING DATEDIFF(YEAR, fu.datanasc, GETDATE()) = (SELECT MAX(DATEDIFF(YEAR, fu.datanasc, GETDATE())) FROM Funcionario AS fu);

-- MIN
-- SUBCONSULTA
SELECT fu.idfuncionario AS [ID], fu.nome AS [Nome], MIN(DATEDIFF(YEAR, fu.datanasc, GETDATE())) AS [Menor Idade]
FROM Funcionario AS fu
GROUP BY fu.idfuncionario, Nome, fu.datanasc
HAVING DATEDIFF(YEAR, fu.datanasc, GETDATE()) = (SELECT MIN(DATEDIFF(YEAR, fu.datanasc, GETDATE())) FROM Funcionario AS fu);

-- GROUP BY
-- INNER JOIN
-- HAVING
SELECT eq.nomeequipe AS [Nome da Equipe], SUM(ca.salario) AS [Soma dos salários da Equipe]
FROM Funcionario AS fu JOIN Equipe AS eq
ON fu.idequipe = eq.idequipe
JOIN Alocado AS al
ON fu.idfuncionario = al.idfuncionario
JOIN Cargo AS ca
ON al.idfuncionario = fu.idfuncionario
GROUP BY eq.nomeequipe
HAVING SUM(ca.salario) > 1000
ORDER BY SUM(ca.salario);

-- LEFT JOIN
SELECT fu.nome [Nome], eq.nomeequipe AS [Equipe]
FROM Funcionario AS fu LEFT JOIN Equipe AS eq
ON fu.idequipe = eq.idequipe

-- RIGHT JOIN
-- NOT IN
SELECT fu.idfuncionario AS [ID], fu.nome AS [Nome], li.nome AS [Linguagem]
FROM Funcionario AS fu RIGHT JOIN Programa AS pr
ON fu.idfuncionario = pr.idfuncionario
RIGHT JOIN Linguagens AS li
ON li.idlinguagem = pr.idlinguagem;

-- FULL JOIN
SELECT fu.idfuncionario AS [ID], fu.nome AS [Nome], li.nome AS [Linguagem]
FROM Funcionario AS fu FULL JOIN Programa AS pr
ON fu.idfuncionario = pr.idfuncionario
FULL JOIN Linguagens AS li
ON li.idlinguagem = pr.idlinguagem;
