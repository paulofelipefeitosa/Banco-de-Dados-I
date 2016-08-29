-- Questão 1

SELECT se.nome, se.idsetor, func.nome
FROM Setor AS [se] JOIN Funcionario AS [func]
ON se.idchefe = func.idfuncionario
ORDER BY se.nome

-- Questão 2

SELECT tip.idtipo, tip.nome AS [Nome do Tipo], pro.nome AS [Nome do Produto], pro.quantest, pro.venda, (pro.quantest*pro.venda) AS [Valor Total], pro.idproduto
FROM Produto AS [pro] JOIN Tipo AS [tip]
ON pro.idtipo = tip.idtipo

-- Questão 3

SELECT tip.nome, COUNT(pro.idproduto) AS [Quantidade], SUM(pro.venda) AS [Total]
FROM Produto AS [pro] JOIN Tipo AS [tip]
ON pro.idtipo = tip.idtipo
GROUP BY pro.idtipo

-- Questão 4

SELECT COUNT(cli.idcliente) AS [Quantidade], cid.nome
FROM Cliente AS [cli] JOIN Cidade AS [cid]
ON cli.idcidade = cid.idcidade
GROUP BY cli.idcidade
ORDER BY cid.nome

-- Questão 5

SELECT COUNT(fun.email) AS [Quantidade], fc.nome, fc.idfuncao, fun.sexo
FROM Funcionario AS [fun] JOIN Funcao AS [fc]
ON fun.idfuncao = fc.idfuncao
GROUP BY fc.idfuncao, fun.sexo
HAVING fun.email IS NULL
ORDER BY fc.nome

-- Questão 6

SELECT pro.nome, tip.nome, AVG(custo) AS [Custo Medio], AVG(venda) AS [Venda Media], (venda - custo) AS [Diferenca]
FROM Produto AS [pro] JOIN Tipo AS [tip]
ON pro.idtipo = tip.idtipo
ORDER BY pro.nome

-- Questão 7

SELECT se.nome, se.idsetor, SUM(fun.salario) AS [Total], fun.sexo
FROM Funcionario AS [fun] JOIN Setor AS [se]
ON fun.idsetor = se.idsetor
GROUP BY se.idsetor, fun.sexo
ORDER BY se.nome

-- Questão 8

SELECT fc.nome, fun.sexo, COUNT(fun.idfuncionario) AS [Quantidade], SUM(fun.salario) AS [Total Salario]
FROM Funcionario AS [fun] JOIN Funcao AS [fc]
ON fun.idfuncao = fc.idfuncao
GROUP BY fc.idfuncao, fun.sexo
HAVING SUM(fun.salario) > 1000.00
ORDER BY fc.nome

-- Questão 9

SELECT cli.nome, fun.nome, SUM(it.preco * it.quant) AS [Total Pedido], ped.idpedido
FROM Pedido AS [ped] JOIN Funcionario AS [fun]
ON ped.idvendedor = fun.idfuncionario
JOIN Cliente AS [cli]
ON ped.idcliente = cli.idcliente
JOIN Itens AS [it]
ON ped.idpedido = it.idpedido
GROUP BY it.idpedido
ORDER BY ped.idpedido

-- Questão 10

SELECT fun.nome, fun.sexo, fun.salario, cid.nome
FROM Funcionario AS [fun] JOIN Cidade AS [cid]
ON fun.idnatural = cid.idcidade
JOIN Pais AS [pa]
ON cid.idpais = pa.idpais
WHERE pa.nome NOT LIKE 'Brasil'

-- Questão 11

SELECT cid.nome, pa.nome, COUNT(fun.idfuncionario) AS [Quantidade Func], SUM(fun.salario) AS [Total Sal], AVG(fun.salario) AS [Media Sal]
FROM Funcionario AS [fun] JOIN Cidade AS [cid]
ON fun.idreside = cid.idcidade
JOIN Pais AS [pa]
ON cid.idpais = pa.idpais
GROUP BY cid.idcidade

-- Questão 12

SELECT fun.nome, nat.nome, res.nome
FROM Funcionario AS [fun] JOIN Cidade AS [res]
ON fun.idreside = res.idcidade
JOIN Cidade AS [nat]
ON fun.idnatural = nat.idcidade
ORDER BY fun.nome

-- Questão 13

SELECT ped.idpedido, ped.via, cli.nome, fun.nome
FROM Pedido AS [ped] JOIN Cliente AS [cli]
ON ped.idcliente = cli.idcliente
JOIN Funcionario AS [fun]
ON ped.idvendedor = fun.idfuncionario
WHERE ped.via = 'A' --Verificar os dados no Banco
ORDER BY ped.idpedido

-- Questão 14

SELECT tip.nome, pro.nome
FROM Tipo AS [tip] LEFT JOIN Produto AS [pro]
ON tip.idtipo = pro.idtipo
ORDER BY tip.nome

-- Questão 15

SELECT fc.nome, fun.nome
FROM Funcao AS [fc] LEFT JOIN Funcionario AS [fun]
ON fc.idfuncao = fun.idfuncao
ORDER BY fc.nome, fun.nome

-- Questão 16
-- É uma Tabela em baixo da outra
/*
FROM Cidade AS [cid] FULL JOIN Funcionario AS [fun]
ON cid.idcidade = fun.idreside
FULL JOIN Cliente AS [cli]
ON cid.idcidade = cli.idcidade
WHERE cli.idcliente IS NOT NULL or fun.idfuncionario IS NOT NULL
*/

-- Questão 17
-- É uma tabela embaixo da outra

-- Questão 18 - 01

SELECT SUM(quant) AS [Quantidade]
FROM Itens
GROUP BY idproduto
HAVING SUM(quant) = (SELECT MAX(SUM(quant))
					 FROM Itens
					 GROUP BY idproduto)
					 
-- Questão 18 - 02

SELECT quant
FROM Itens
GROUP BY idproduto
ORDER BY idpedido

-- Questão 19

SELECT cid.nome, pa.nome
FROM Cidade AS [cid] JOIN Pais AS [pa]
ON cid.idpais = pa.idpais
WHERE cid.idcidade = (SELECT MAX(idcidade)
						FROM Cidade)
						
-- Questão 20

SELECT se.idsetor, se.nome, funche.nome
FROM Setor AS [se] JOIN Funcionario AS [funche]
ON se.idchefe = funche.idfuncionario
JOIN Funcionario AS [funnor]
ON se.idsetor = funnor.idsetor
GROUP BY se.idsetor
HAVING funnor.salario < (SELECT AVG(salario)
						 FROM Funcionario)
ORDER BY se.nome

-- Questão 21

SELECT idproduto, nome, venda, (venda*0.15) AS [Desconto], (venda-Desconto) AS [Preco Promocao]
FROM Produto
WHERE venda > (SELECT AVG(venda)
				FROM Produto)
ORDER BY idtipo

-- Questão 22

SELECT fun.nome, fun.datanasc, DATEDIFF(hour, datanasc, GETDATE())/8766 AS [idade], cid.nome, pa.nome
FROM Funcionario AS [fun] JOIN Cidade AS [cid]
ON fun.idnatural = cid.idcidade
JOIN Pais AS [pa]
ON cid.idpais = pa.idpais
WHERE fun.sexo = 'M' 
		and fun.datanasc = (SELECT MIN(datanasc)
							FROM Funcionario
							WHERE sexo = 'M' and (DATEDIFF(hour, 								datanasc, GETDATE())/8766) BETWEEN 50 and 								60)

-- Questão 23

SELECT funnor.idfuncionario, funnor.nome, se.nome AS [Setor], funche.nome AS [Chefe], fc.nome AS [Funcao], funnor.salario, fc.gratific, (funnor.salario + fc.gratific) AS [Salario Total]

FROM Setor AS [se] JOIN Funcionario AS [funche]
ON se.idchefe = funche.idfuncionario
JOIN Funcionario AS [funnor]
ON se.idsetor = funnor.idsetor
JOIN Funcao AS [fc]
ON funnor.idfuncao = fc.idfuncao

WHERE (funnor.salario + fc.gratific) 
		 = (SELECT MIN(func.salario + fc.gratific)
			FROM Funcionario AS [func] JOIN Funcao AS [fc]
			ON func.idfuncao = fc.idfuncao
			WHERE (func.salario + fc.gratific) > 1500.00 )

ORDER BY se.idsetor

-- Questão 24

SELECT ped.idpedido, prod.nome, tip.nome AS [Tipo], ped.preco

FROM Pedido AS [ped] JOIN Produto AS [prod]
ON ped.idproduto = prod.idproduto
JOIN Tipo AS [tip]
ON prod.idtipo = tip.idtipo

WHERE ped.preco = (SELECT MAX(preco)
					FROM Pedido )

ORDER BY ped.idpedido

-- Questão 25 -> Incompleta

SELECT se.nome, se.idsetor, SUM(func.salario) AS [Total]

FROM Funcionario AS [func] JOIN Setor AS [se]
ON func.idsetor = se.idsetor

GROUP BY se.idsetor

HAVING SUM(func.salario) > 5000.00 and 

-- Questão 27 -> Estudar, posso usar valores de cima em subquerys?

SELECT prod.nome, prod.venda, (SELECT MAX())
FROM Produto AS [prod] JOIN Itens AS [it]
ON prod.idproduto = it.idproduto
GROUP BY prod.idproduto
