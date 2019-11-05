.mode	columns
.headers	on
.nullvalue	NULL
.width 26

.print ''

--Ruas onde moram simultaneamente clientes e funcionários
SELECT rua AS "Rua"
FROM Morada, Cliente 
WHERE Morada.moradaID = Cliente.moradaID
INTERSECT 
SELECT rua AS "Rua"
FROM Morada, Funcionario
WHERE Morada.moradaID = Funcionario.moradaID;

.print ''