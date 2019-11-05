.mode	columns
.headers	on
.nullvalue	NULL
.width 3 16 6

.print ''

--Top 3 de funcionários tendo em conta os funcionários pelos quais é responsável (2 pontos) e o valor das encomendas processadas por ele
SELECT "ID", "Nome Funcionario", sum("Pontos") as "Pontos" FROM(
    SELECT F.funcionarioID AS "ID", F.nome AS "Nome Funcionario",
    count (FR.funcionario)*2.0 AS "Pontos"
    FROM Funcionario F, FuncionarioResponsavel FR
    WHERE F.funcionarioID = FR.responsavel
    GROUP BY F.funcionarioID

    UNION

    SELECT F.funcionarioID AS "ID",  F.nome AS "Nome Funcionario",
    sum (E.preco_total) AS "Pontos"
    FROM Funcionario F, Encomenda E
    WHERE F.funcionarioID = E.funcionarioID
    GROUP BY F.funcionarioID)
GROUP BY "ID"

ORDER BY "Pontos" DESC, "ID" LIMIT 3;

.print ''