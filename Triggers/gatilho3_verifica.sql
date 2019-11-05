.mode	columns
.headers	on
.nullvalue	NULL
.width 3 9 4 5

.print ''
SELECT ED.produtoID AS "ID Produto", ED.encomendaID AS "Encomenda", ED.quantidade_produto AS "Qnt", P.stock AS "Stock" 
FROM EncomendaDetalhada ED, Produto P
WHERE P.produtoID = 20 AND P.produtoID = ED.produtoID;
.print ''

.print 'Adicionada encomenda detalhada valida, com 2 unidades de produto de ID 20:'

--Adicionado à encomenda de ID 2 uma quantidade de 2 unidades do produto de ID 20 (dentro do stock)
INSERT INTO EncomendaDetalhada VALUES (20,2,2,0);

SELECT ED.produtoID AS "ID Produto", ED.encomendaID AS "Encomenda", ED.quantidade_produto AS "Qnt", P.stock AS "Stock" 
FROM EncomendaDetalhada ED, Produto P
WHERE P.produtoID = 20 AND P.produtoID = ED.produtoID;

.print ''
.print 'Adicionada encomenda detalhada invalida, com 200 unidades de produto de ID 20:'

--Adicionado à encomenda de ID 3 uma quantidade de 200 unidades do produto de ID 20 (ultrapassa o stock)
INSERT INTO EncomendaDetalhada VALUES (20, 3,200,0);

.print ''

SELECT ED.produtoID AS "ID Produto", ED.encomendaID AS "Encomenda", ED.quantidade_produto AS "Qnt", P.stock AS "Stock" 
FROM EncomendaDetalhada ED, Produto P
WHERE P.produtoID = 20 AND P.produtoID = ED.produtoID;

.print ''
