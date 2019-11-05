.mode	columns
.headers	on
.nullvalue	NULL
.width 3 16 16 9 10 6

.print ''

--Faixa etária dos funcionários pelos quais cada gestor está responsável
SELECT R.funcionarioID AS "ID", R.nome AS "Nome Responsavel", count(F.funcionarioID) AS "Nr. Funcionarios", date('now') - max(date(F.data_nascimento)) AS "Mais novo", date('now') - min(date(F.data_nascimento)) AS "Mais velho", avg(date('now') - date(F.data_nascimento)) AS "Media"
FROM Funcionario F, FuncionarioResponsavel FR,  Funcionario R 
WHERE F.funcionarioID = FR.funcionario AND R.funcionarioID = FR.responsavel 
GROUP BY FR.responsavel;

.print ''