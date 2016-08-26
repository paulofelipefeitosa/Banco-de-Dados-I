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

-- Questão 10 - 01

SELECT cid.idcidade, cid.nome
FROM Cidade AS [cid] JOIN Pais AS [pa]
ON cid.idpais = pa.idpais
WHERE pa.nome NOT LIKE 'Brasil'
ORDER BY cid.idcidade

-- Questão 10 - 02

SELECT idcidade, nome
FROM Cidade
WHERE idpais NOT IN (SELECT idpais
					 FROM Pais
					 WHERE nome LIKE 'Brasil')
ORDER BY idcidade

-- Questão 11

SELECT *, (salario*1.52) AS [Novo Salario]
FROM Funcionario
WHERE sexo = 'F'

-- Questão 12

SELECT *
FROM Produto
WHERE custo BETWEEN 20.00 and 100.00
ORDER BY idproduto

-- Questão 13

SELECT *
FROM Funcionario
WHERE fone IS NULL

-- Questão 14

SELECT *
FROM Produto
WHERE qntest < estmin

-- Questão 15

SELECT *
FROM Produto
WHERE idtipo NOT IN (1, 2, 3) and venda BETWEEN 10.00 and 50.00

-- Questão 16

SELECT *
FROM Funcionario
WHERE email IS NOT NULL

-- Questão 17

SELECT *
FROM Funcionario
WHERE datanasc BETWEEN '01/12/65' and '31/03/66'
ORDER BY nome

-- Questão 18

SELECT DATEDIFF(hour, datanasc, GETDATE())/8766 AS [idade] --valor aproximado
FROM Funcionario
ORDER BY idade, nome

-- Questão 19

SELECT *
FROM Funcionario
WHERE sexo = 'M' and estcivil = 'C' and salario <= 3000.00 --Saber como está a nomeação do estado civil
ORDER BY nome

-- Questão 20

SELECT idproduto, nome, idtipo, venda
FROM Produto
WHERE venda <= 50.00 and idtipo NOT IN (1, 3)
ORDER BY nome DESC

-- Questão 21

SELECT *
FROM Funcionario
WHERE datanasc BETWEEN '01/01/65' and '31/12/66'
		and idnatural NOT IN (4, 6, 10)
ORDER BY nome

-- Questão 22

SELECT nome, venda
FROM Produto
WHERE descricao LIKE '%chocolate%'
		and venda >= 15.00
ORDER BY venda DESC

-- Questão 23

SELECT idfuncionario, nome
FROM Funcionario
WHERE sexo = 'M' and nome NOT LIKE '[AM]%'
ORDER BY nome

-- Questão 24

SELECT *
FROM Pedido
WHERE via = 'A' and frete >= 300.00 --Saber como está os valores da coluna VIA
ORDER BY idpedido

-- Questão 25

SELECT *
FROM Funcionario
WHERE email IS NULL and celular IS NOT NULL
ORDER BY nome
