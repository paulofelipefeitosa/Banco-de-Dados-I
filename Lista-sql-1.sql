-- Questão 1

SELECT idproduto, nome AS [Produto], quantest AS [Estoque Real], estmin AS [Estoque Minimo], 'Num. Ref.' AS [Referência]
FROM Produto

-- Questão 2

SELECT *, (venda - custo) AS [Lucro]
FROM Produto

-- Questão 3

SELECT *, (venda*1.25) AS [Aumento]
FROM Produto

-- Questão 4

SELECT DISTINCT idreside
FROM Funcionario

-- Questão 5

SELECT DISTINCT idvendedor
FROM Pedido

-- Questão 6

SELECT idproduto, nome, idtipo, custo, venda
FROM Produto
ORDER BY nome ASC

-- Questão 7

SELECT idproduto, nome, custo, venda, (venda - custo) AS [Diferenca]
FROM Produto
ORDER BY Diferenca DESC

-- Questão 8 - 01

SELECT idfuncionario, nome, idreside, sexo, salario
FROM Funcionario
ORDER BY idreside ASC, sexo ASC, salario DESC

-- Questão 8 - 02

SELECT func.idfuncionario, func.nome, cid.nome, func.sexo, func.salario
FROM Funcionario AS [func] JOIN Cidade AS [cid]
ON func.idreside = cid.idcidade
ORDER BY cid.nome ASC, func.sexo ASC, func.salario DESC


-- Questão 9 - 01

SELECT nome, idsetor, idreside, idnatural
FROM Funcionario
WHERE idnatural IN (7, 8, 15)
ORDER BY idsetor, nome

-- Questão 9 - 02

SELECT func.nome, se.nome, func.idreside
FROM Funcionario AS [func] JOIN Setor AS [se]
ON func.idsetor = se.idsetor
WHERE func.idnatural IN (7, 8, 15)
ORDER BY se.nome, func.nome

-- Questão 10

SELECT idcidade, nome
FROM Cidade
WHERE nome NOT LIKE '