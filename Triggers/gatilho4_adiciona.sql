CREATE TRIGGER IF NOT EXISTS R2 
AFTER INSERT ON Fornecimento
	BEGIN
		UPDATE Produto
		SET stock = stock + new.quantidade_produto
	WHERE produtoID = new.produtoID;
	END;