.mode	columns
.headers	on
.nullvalue	NULL
.width 3 22 5

.print ''
SELECT produtoID AS "ID", nome AS "Nome Produto", stock AS "Stock" FROM Produto LIMIT 5;
.print ''

--adiciona uma encomenda que terá 4 unidades do produto de ID 1 
INSERT INTO Encomenda VALUES(6,'2019-04-10',20,12,4);
INSERT INTO EncomendaDetalhada VALUES(1,6,4,8);

.print 'Adicionada encomenda com 4 unidades do produto de ID 1:'
.print ''
SELECT produtoID AS "ID", nome AS "Nome Produto", stock AS "Stock" FROM Produto LIMIT 5;
.print ''
