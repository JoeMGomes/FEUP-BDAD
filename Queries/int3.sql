.mode	columns
.headers	on
.nullvalue	NULL
.width 7

.print ''

--Calcula o lucro total da cadeia de lojas
SELECT 
    (SELECT sum(Qtd) 
    FROM 
    (SELECT sum(Fornecimento.quantidade_produto)*Produto.preco_compra AS "Qtd" 
    FROM Fornecimento NATURAL JOIN Produto 
    GROUP BY Produto.produtoID))
    - 
    (SELECT sum(Encomenda.preco_total) AS "Total bruto" 
    FROM Encomenda) AS "Lucro";

.print ''
