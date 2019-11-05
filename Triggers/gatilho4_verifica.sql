.mode	columns
.headers	on
.nullvalue	NULL
.width 3 22 5

.print ''
SELECT produtoID AS "ID", nome AS "Nome Produto", stock AS "Stock" FROM Produto LIMIT 5;
.print ''

--adiciona um fornecimento de 20 unidades do produto de ID 1 
INSERT INTO Fornecimento VALUES(13,20,1,1);

.print 'Adicionado fornecimento de 20 unidades do produto de ID 1:'
.print ''
SELECT produtoID AS "ID", nome AS "Nome Produto", stock AS "Stock" FROM Produto LIMIT 5;
.print ''
