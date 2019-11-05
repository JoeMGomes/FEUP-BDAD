.mode	columns
.headers	on
.nullvalue	NULL
.width 2 16 13

.print ''

--Número de encomendas realizadas por cada cliente
SELECT Cliente.clienteID AS "ID", Cliente.nome AS "Nome do Cliente", count(*) AS "Nr Encomendas" 
FROM Encomenda, Cliente 
WHERE Encomenda.clienteID = Cliente.clienteID 
GROUP BY Cliente.nome;

.print ''
