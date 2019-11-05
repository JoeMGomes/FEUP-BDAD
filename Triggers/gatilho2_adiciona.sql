CREATE TRIGGER IF NOT EXISTS VerifyDate
BEFORE INSERT ON Pagamento
WHEN (SELECT date(data_fim) FROM Promocao WHERE New.promocaoID = Promocao.promocaoID) < (SELECT date(Encomenda.data) FROM Encomenda WHERE Encomenda.encomendaID = New.encomendaID)
OR (SELECT date(Encomenda.data) FROM Encomenda WHERE Encomenda.encomendaID = New.encomendaID) < (SELECT date(data_inicio) FROM Promocao WHERE New.promocaoID = Promocao.promocaoID)
    BEGIN
        SELECT RAISE(ABORT, "Promoção fora de prazo");
    END;