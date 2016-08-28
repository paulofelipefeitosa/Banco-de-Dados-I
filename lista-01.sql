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
WHERE via = 'A' and frete >= 300.00
ORDER BY idpedido

-- Questão 25

SELECT *
FROM Funcionario
WHERE email IS NULL and celular IS NOT NULL
ORDER BY nome

-- Questão 26

SELECT COUNT(*) AS [Quantidade]
FROM Cidade
WHERE idpais <> (SELECT idpais
				 FROM Pais
				 WHERE nome LIKE 'Brasil')
				 
-- Questão 27

SELECT COUNT(*) AS [Quantidade]
FROM Funcionario
WHERE email IS NOT NULL

-- Questão 28

SELECT SUM(venda * qntest) AS [Total Geral]
FROM Produto

-- Questão 29

SELECT SUM(frete) AS [Soma dos Fretes]
FROM Pedido
WHERE via = 'M' -- Verificar os dados no Banco

-- Questão 30 - 01

SELECT AVG(salario) AS [Media]
FROM Funcionario
WHERE sexo = 'F' and salario BETWEEN 1000.00 and 2000.00
		and idsetor NOT IN ('PRS', 'MKT')

-- Questão 30 - 02

SELECT AVG(salario) AS [Media]
FROM Funcionario
WHERE sexo = 'F' and salario BETWEEN 1000.00 and 2000.00
		and idsetor NOT LIKE 'PRS' and idsetor NOT LIKE 'MKT'
		
-- Questão 31

SELECT AVG(salario) AS [Media]
FROM Funcionario
WHERE idfuncao NOT IN (10, 11) and estcivil <> 'C' --Verificar os dados no banco

-- Questão 32

SELECT AVG(venda) AS [Media]
FROM Produto
WHERE idproduto = 1

-- Questão 33

SELECT MIN(datanasc) AS [Data]
FROM Funcionario
WHERE sexo = 'F'

-- Questao 34

SELECT MAX(preco) AS [Mais caro]
FROM Itens

-- Questão 35

SELECT MAX(datapedid) AS [Data]
FROM Pedido

-- Questão 36

SELECT MONTH(MIN(datapedid)) AS [Mês]
FROM Pedido
WHERE via = 'A'

-- Questão 37

SELECT MAX(quant) AS [Maximo], idpedido
FROM Pedido
GROUP BY idpedido

-- Questão 38

SELECT SUM(salario) AS [Total], idsetor
FROM Funcionario
GROUP BY idsetor
HAVING SUM(salario) > 5000.00

-- Questão 39

SELECT AVG(custo) AS [Custo], AVG(venda) AS [Venda], (Venda - Custo), idtipo
FROM Produto
GROUP BY idtipo

-- Questão 40

SELECT idproduto, COUNT(idpedido) AS [Quantidade]
FROM Itens
GROUP BY idproduto
HAVING COUNT(idpedido) > 20

-- Questão 41

SELECT AVG(DATEDIFF(hour, datanasc, GETDATE())/8766) AS [Idade Media], idsetor, sexo
FROM Funcionario
GROUP BY idsetor, sexo
HAVING AVG(DATEDIFF(hour, datanasc, GETDATE())/8766) < 40

-- Questão 42

SELECT COUNT(idfuncionario) AS [Quantidade], idnatural, sexo
FROM Funcionario
GROUP BY idnatural, sexo
HAVING COUNT(idfuncionario) >= 3

-- Questão 43

SELECT COUNT(idcidade) AS [Quantidade], idpais
FROM Cidade
GROUP BY idpais
HAVING COUNT(idcidade) > 5

-- Questão 44

SELECT idcliente, YEAR(datapedid) AS [Ano], COUNT(idpedido) AS [Quantidade]
FROM Pedido
GROUP BY idcliente, YEAR(datapedid)
HAVING COUNT(idpedido) > 5

-- Questão 45

SELECT AVG(custo) AS [Custo], AVG(venda) AS [Venda], ((Venda-Custo)*100.00)/Venda AS [Diferenca], idtipo
FROM Produto
GROUP BY idtipo
HAVING Diferenca > 40.00

-- Questão 46

SELECT SUM(salario) AS [Soma Total], AVG(salario) AS [Media], sexo
FROM Funcionario
GROUP BY sexo
HAVING estcivil = 'S' and salario > 1500.00

-- Questão 47

SELECT MONTH(datapedid), AVG(frete), YEAR(datafatura), MONTH(datafatura)
FROM Pedido
GROUP BY YEAR(datafatura), MONTH(datafatura)
HAVING YEAR(datafatura) = 1998

-- Questão 48

SELECT idpedido, SUM(quant), SUM(preco*quant) AS [Total]
FROM Itens
GROUP BY idpedido
HAVING Total > 1000.00

-- Questão 49

SELECT COUNT(idfuncionario) AS [Quantidade], idsetor, idfuncao
FROM Funcionario
GROUP BY idsetor, idfuncao
HAVING estcivil <> 'V' --Verificar os dados no Banco

-- Questão 50

SELECT COUNT(idcidade) AS [Quantidade], idpais
FROM Cidade
GROUP BY idpais
HAVING COUNT(idcidade) > 3 and idpais <> (SELECT idpais
											FROM Pais
											WHERE nome = 'Brasil')
