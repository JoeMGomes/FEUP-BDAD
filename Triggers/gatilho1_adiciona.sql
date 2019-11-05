CREATE TRIGGER IF NOT EXISTS R1 
AFTER INSERT ON EncomendaDetalhada
	BEGIN
		UPDATE Produto
		SET stock = stock - new.quantidade_produto
	WHERE produtoID = new.produtoID;
	END;