.mode	columns
.headers	on
.nullvalue	NULL
.width 7 12 3

.print ''

--Fornecedores que forneceram produtos numa quantidade total superior a 10
SELECT FP.produtoID AS "Produto", F.fornecedorID AS "Fornecedor", sum(FP.quantidade_produto) AS "Qnt"
FROM Fornecimento FP, Fornecedor F
WHERE FP.fornecedorID = F.fornecedorID
GROUP BY "Fornecedor", "Produto"
HAVING "Qnt" >= 10
ORDER BY "Qnt";

.print ''