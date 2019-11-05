.mode	columns
.headers	on
.nullvalue	NULL
.width 2 20

.print ''
--Seleciona os funcionários que trabalham na seccao 1 de qualquer loja
SELECT F.funcionarioID AS "ID",F.nome AS "Nome do Funcionario" 
FROM Funcionario F NATURAL JOIN FuncionarioSeccao FS
WHERE F.funcionarioID = FS.funcionarioID AND seccaoID = 1; 

.print ''