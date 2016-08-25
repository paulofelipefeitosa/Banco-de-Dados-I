-- Quest�o 1

SELECT idproduto, nome AS [Produto], quantest AS [Estoque Real], estmin AS [Estoque Minimo], 'Num. Ref.' AS [Refer�ncia]
FROM Produto

-- Quest�o 2

SELECT *, (venda - custo) AS [Lucro]
FROM Produto

-- Quest�o 3

SELECT *, (venda*1.25) AS [Aumento]
FROM Produto

-- Quest�o 4

SELECT DISTINCT idreside
FROM Funcionario

-- Quest�o 5

SELECT DISTINCT idvendedor
FROM Pedido

-- Quest�o 6

SELECT idproduto, nome, idtipo, custo, venda
FROM Produto
ORDER BY nome ASC

-- Quest�o 7

SELECT idproduto, nome, custo, venda, (venda - custo) AS [Diferenca]
FROM Produto
ORDER BY Diferenca DESC

-- Quest�o 8 - 01

SELECT idfuncionario, nome, idreside, sexo, salario
FROM Funcionario
ORDER BY idreside ASC, sexo ASC, salario DESC

-- Quest�o 8 - 02

SELECT func.idfuncionario, func.nome, cid.nome, func.sexo, func.salario
FROM Funcionario AS [func] JOIN Cidade AS [cid]
ON func.idreside = cid.idcidade
ORDER BY cid.nome ASC, func.sexo ASC, func.salario DESC


-- Quest�o 9 - 01

SELECT nome, idsetor, idreside, idnatural
FROM Funcionario
WHERE idnatural IN (7, 8, 15)
ORDER BY idsetor, nome

-- Quest�o 9 - 02

SELECT func.nome, se.nome, func.idreside
FROM Funcionario AS [func] JOIN Setor AS [se]
ON func.idsetor = se.idsetor
WHERE func.idnatural IN (7, 8, 15)
ORDER BY se.nome, func.nome

-- Quest�o 10

SELECT idcidade, nome
FROM Cidade
WHERE nome NOT LIKE '