CREATE TRIGGER IF NOT EXISTS checkStock
BEFORE INSERT ON EncomendaDetalhada
WHEN (SELECT stock FROM Produto WHERE New.produtoID = produtoID) < New.quantidade_produto
    BEGIN
        SELECT RAISE(ABORT, "Stock insuficiente");
    END;