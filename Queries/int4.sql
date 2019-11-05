.mode	columns
.headers	on
.nullvalue	NULL
.width 3 16 7 10 10

.print ''

--Seleciona as promoções válidas para determinados clientes, entre as datas 2019-04-06 e 2019-04-12, ordenadas pela data em que termina essa promoção
SELECT clienteID AS "ID", Cliente.nome AS "Nome Cliente", cartaoID AS "Cartao", promocaoID AS "Promocao", Promocao.data_fim AS "Termina em" 
FROM Cliente NATURAL JOIN Cartao NATURAL JOIN CartaoPromocao NATURAL JOIN Promocao
WHERE date (Promocao.data_inicio) <= date ("2019-04-06") AND date(Promocao.data_fim) >= date("2019-04-12") 
ORDER BY date(Promocao.data_fim) ASC;

.print ''