.mode	columns
.headers	on
.nullvalue	NULL
.width 3 12

.print ''

--Devolve todos os fornecedores que já fizeram pelo menos um fornecimento a uma loja
SELECT Fornecedor.fornecedorID AS "ID", Fornecedor.nome AS "Fornecedor"
FROM Fornecedor
WHERE exists (
    SELECT *
    FROM Fornecimento 
    WHERE Fornecedor.fornecedorID = Fornecimento.fornecedorID);

.print ''