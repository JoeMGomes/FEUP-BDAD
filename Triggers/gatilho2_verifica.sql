.mode	columns
.headers	on
.nullvalue	NULL
.width 11 6 14 6 11 10

.print ''
SELECT * FROM Pagamento;

.print ''
.print 'Adicionado pagamento valido:'

--Adicionado pagamento de encomenda datada dentro das datas da promoção utilizada (2019-04-04 a 2019-04-20)
INSERT INTO Encomenda VALUES(7,'2019-04-10',15,12,4);
INSERT INTO Pagamento VALUES(6, 20, 'Dinheiro', 1,7, 1);


SELECT * FROM Pagamento;
.print ''
.print 'Adicionado pagamento invalido:'

--Adicionado pagamento de encomenda datada fora das datas da promoção utilizada (2019-04-04 a 2019-04-20)
INSERT INTO Encomenda VALUES(8,'2019-04-23',16,12,4);
INSERT INTO Pagamento VALUES(7, 20, 'Dinheiro', 1,8, 1);

.print ''
SELECT * FROM Pagamento;
.print ''
