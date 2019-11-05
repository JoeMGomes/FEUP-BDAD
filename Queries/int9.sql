.mode	columns
.headers	on
.nullvalue	NULL
.width 3 16 6 16

.print ''

--Clientes com cartão ordenados por valor de desconto imediato usufruído num determinado mês (abril)
SELECT C.clienteID AS "ID", C.nome AS "Nome Cliente", CA.cartaoID AS "Cartao", sum (E.preco_total*(D.percentagem/100.0)) AS "Valor descontado"
FROM Promocao D, Pagamento P, Cartao CA, Encomenda E, Cliente C
WHERE D.promocaoID = P.promocaoID AND P.cartaoID = CA.cartaoID AND D.desconto_direto = 1 AND E.encomendaID = P.encomendaID AND C.clienteID = CA.clienteID
AND '04' = strftime('%m', date(E.data))
GROUP BY CA.cartaoID
ORDER BY "Valor descontado" DESC;

.print ''