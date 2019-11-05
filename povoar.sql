PRAGMA foreign_keys = ON;

--Moradas
INSERT INTO Morada VALUES(1,'Avenida da Boavista',1600, 405, 123, 'Porto');
INSERT INTO Morada VALUES(2,'Parque da Republica',400, 4405, 867, 'Vila Nova de Gaia');
INSERT INTO Morada VALUES(3,'Avenida Fernao Magalhaes',234, 405, 743, 'Porto');
INSERT INTO Morada VALUES(4,'Rua Antonio Batista',1612, 405, 563, 'Porto');
INSERT INTO Morada VALUES(5,'Rua Salvador Branco',134, 405, 143, 'Porto');
INSERT INTO Morada VALUES(6,'Rua de Tras',123, 4405, 164, 'Vila Nova de Gaia');
INSERT INTO Morada VALUES(7,'Rua Marco Lopes',654, 405, 163, 'Porto');
INSERT INTO Morada VALUES(8,'Avenida Pedro Costa e Cruz',5345, 405, 164, 'Porto');
INSERT INTO Morada VALUES(9,'Rotunda da Areosa',1345, 405, 654, 'Porto');
INSERT INTO Morada VALUES(10,'Avenida Barros Abraao',535, 405,449, 'Porto');
INSERT INTO Morada VALUES(11,'Rotunda da Boavista',1345, 405, 127, 'Porto');
INSERT INTO Morada VALUES(12,'Rua da Luz',345, 405, 334, 'Porto');
INSERT INTO Morada VALUES(13,'Rua Dr Rui Lago',23, 405, 374, 'Porto');
INSERT INTO Morada VALUES(14,'Zona Industrial',62, 405, 948, 'Porto');
INSERT INTO Morada VALUES(15,'Zona Industrial',40, 405, 947, 'Porto');
INSERT INTO Morada VALUES(16,'Zona Industrial',71, 405, 949, 'Porto');
INSERT INTO Morada VALUES(17,'Avenida da Boavista',1604, 405, 123, 'Porto');
INSERT INTO Morada VALUES(18,'Parque da Republica',441, 4405, 867, 'Vila Nova de Gaia');
INSERT INTO Morada VALUES(19,'Avenida Fernao Magalhaes',230, 405, 653, 'Porto');
INSERT INTO Morada VALUES(20,'Rua Antonio Batista',14, 405, 123, 'Porto');
INSERT INTO Morada VALUES(21,'Rua do Barreiro',164, 405, 543, 'Porto');
INSERT INTO Morada VALUES(22,'Rua do Capitao Mor',197, 405, 239, 'Porto');

--Lojas
INSERT INTO Loja VALUES(1,5000,919191919,1);
INSERT INTO Loja VALUES(2,2500,919191903,2);

--Funcionarios
INSERT INTO Funcionario VALUES(1,'Pedro Machado','1999-04-04',1400,123456789,1,1);	--Gestor
INSERT INTO Funcionario VALUES(2,'Joao Rocha','1999-06-17',550,911911911,3,1);
INSERT INTO Funcionario VALUES(3,'Pedro Joaquim','1996-04-04',550,123356789,4,1);
INSERT INTO Funcionario VALUES(4,'Carla Martins','1994-02-03',700,123656789,2,1);	--Responsavel pelo 2
INSERT INTO Funcionario VALUES(5,'Joana Costa','1993-05-04',550,123456189,5,1);
INSERT INTO Funcionario VALUES(6,'Pedro Amorim','1996-04-04',550,123346789,6,1);
INSERT INTO Funcionario VALUES(7,'Rui Braga','1983-09-27',550,123456019,9,1);
INSERT INTO Funcionario VALUES(8,'Jose Ferreira','1993-04-04',550,123456733,7,1);
INSERT INTO Funcionario VALUES(9,'Liliana Patricio','1978-04-04',550,123456743,8,2);
INSERT INTO Funcionario VALUES(10,'Pedro Gomes','1985-02-29',550,123467823,10,2);
INSERT INTO Funcionario VALUES(11,'Joao Rocha','1991-11-14',550,123426484,11,2);
INSERT INTO Funcionario VALUES(12,'Antonia Claro','1992-10-02',550,124528611,12,2);

--Gestores
INSERT INTO Gestor VALUES(1,1);

--Secções
INSERT INTO Seccao VALUES(1,'Frescos',1);
INSERT INTO Seccao VALUES(2,'Congelados',1);
INSERT INTO Seccao VALUES(3,'Peixaria',1);
INSERT INTO Seccao VALUES(4,'Talho',1);
INSERT INTO Seccao VALUES(5,'Bebidas',1);
INSERT INTO Seccao VALUES(6,'Laticinios',1);
INSERT INTO Seccao VALUES(7,'Padaria',1);

--FuncionarioSecção
INSERT INTO FuncionarioSeccao VALUES(2,1);
INSERT INTO FuncionarioSeccao VALUES(3,1);
INSERT INTO FuncionarioSeccao VALUES(4,2);
INSERT INTO FuncionarioSeccao VALUES(5,2);
INSERT INTO FuncionarioSeccao VALUES(6,3);
INSERT INTO FuncionarioSeccao VALUES(7,3);
INSERT INTO FuncionarioSeccao VALUES(8,4);
INSERT INTO FuncionarioSeccao VALUES(9,5);
INSERT INTO FuncionarioSeccao VALUES(10,5);
INSERT INTO FuncionarioSeccao VALUES(11,6);
INSERT INTO FuncionarioSeccao VALUES(12,7);

--FuncionarioResponsavel
INSERT INTO FuncionarioResponsavel VALUES(2,4);
INSERT INTO FuncionarioResponsavel VALUES(3,4);
INSERT INTO FuncionarioResponsavel VALUES(6,2);
INSERT INTO FuncionarioResponsavel VALUES(9,10);
INSERT INTO FuncionarioResponsavel VALUES(12,10);
INSERT INTO FuncionarioResponsavel VALUES(11,10);

--Produtos
INSERT INTO Produto VALUES(1, 'Cenoura' ,100,0.4,0.75,1);
INSERT INTO Produto VALUES(2, 'Alface' ,100,0.25,0.5,1);
INSERT INTO Produto VALUES(3, 'Tomate' ,100,0.49,0.7,1);
INSERT INTO Produto VALUES(4, 'Abobora' ,100,1.2,1.4,1);
INSERT INTO Produto VALUES(5, 'Pizza 4 Queijos' ,50,1.67,2.49,2);
INSERT INTO Produto VALUES(6, 'Pizza Queijo e Fiambre' ,45,1.67,2.49,2);
INSERT INTO Produto VALUES(7, 'Lasanha Bolonhesa' ,34,1.87,2.99,2);
INSERT INTO Produto VALUES(8, 'Pasta Carbonara' ,35,1.9,2.69,2);
INSERT INTO Produto VALUES(9, 'Rissois Carne' ,20,1.3,1.69,2);
INSERT INTO Produto VALUES(10, 'Salmao' ,10,5,7.99,3);
INSERT INTO Produto VALUES(11, 'Pescada' ,23,3,5.59,3);
INSERT INTO Produto VALUES(12, 'Solha' ,15,2.76,5.29,3);
INSERT INTO Produto VALUES(13, 'Peito Frango',23,1.3,1.69,4);
INSERT INTO Produto VALUES(14, 'Bife Borrego',17,2.7,4.99,4);
INSERT INTO Produto VALUES(15, 'Frango Inteiro' ,28,1.3,1.69,4);
INSERT INTO Produto VALUES(16, 'Carne Vaca Picada' ,10,3.9,4.12,4);
INSERT INTO Produto VALUES(17, 'Sumo Laranja' ,36,0.7,1.49,5);
INSERT INTO Produto VALUES(18, 'Sumo Maca' ,50,0.7,1.49,5);
INSERT INTO Produto VALUES(19, 'Vinho Branco' ,38,2.25,4.30,5);
INSERT INTO Produto VALUES(20, 'Leite Meio Gordo' ,40,.5,.7,6);
INSERT INTO Produto VALUES(21, 'Leite Gordo' ,44,.6,.8,6);
INSERT INTO Produto VALUES(22, 'Leite Magro' ,46,.9,1.2,6);
INSERT INTO Produto VALUES(23, 'Pao de Agua' ,25,.1,.2,7);
INSERT INTO Produto VALUES(24, 'Baguete' ,10,.3,.5,7);
INSERT INTO Produto VALUES(25, 'Pao de Centeio' ,15,.15,.3,7);

--Fornecedores
INSERT INTO Fornecedor VALUES(1,'MaxiTudo 1',934857163,14);
INSERT INTO Fornecedor VALUES(2,'MaxiTudo 2',934323112,15);
INSERT INTO Fornecedor VALUES(3,'MaxiTudo 3',939477235,16);
INSERT INTO Fornecedor VALUES(4,'MaxiTudo 4',939477535,17);
INSERT INTO Fornecedor VALUES(5,'MaxiTudo 5',939777535,18);



--Fornecimentos
INSERT INTO Fornecimento VALUES(1,23,1,21);
INSERT INTO Fornecimento VALUES(2,3,1,2);
INSERT INTO Fornecimento VALUES(3,21,1,11);
INSERT INTO Fornecimento VALUES(4,19,2,4);
INSERT INTO Fornecimento VALUES(5,15,3,16);
INSERT INTO Fornecimento VALUES(6,11,2,25);
INSERT INTO Fornecimento VALUES(7,13,2,14);
INSERT INTO Fornecimento VALUES(8,18,3,19);
INSERT INTO Fornecimento VALUES(9,1,1,9);
INSERT INTO Fornecimento VALUES(10,3,3,16);
INSERT INTO Fornecimento VALUES(11,8,1,4);
INSERT INTO Fornecimento VALUES(12,1,5,10);


--Clientes
INSERT INTO Cliente VALUES(1,'Alvaro Conde',965325172,235214253,17);
INSERT INTO Cliente VALUES(2,'Marta Soares',963425172,235224234,18);
INSERT INTO Cliente VALUES(3,'Rosa Almeida',962253625,231231253,19);
INSERT INTO Cliente VALUES(4,'Mario Frei',653212315,946623253,20);
INSERT INTO Cliente VALUES(5,'Marta Costa',963425972,235224294,21);
INSERT INTO Cliente VALUES(6,'Rosa Rosais',961231656,223231253,22);
INSERT INTO Cliente VALUES(7,'Mario Marcos',965321231,946542253,18);	--Mora com a Marta

--Cartoes
INSERT INTO Cartao VALUES(1,20,4);
INSERT INTO Cartao VALUES(2,11,5);
INSERT INTO Cartao VALUES(3,25,6);

--LojaCliente
INSERT INTO LojaCliente VALUES(1,1);
INSERT INTO LojaCliente VALUES(1,2);
INSERT INTO LojaCliente VALUES(1,3);
INSERT INTO LojaCliente VALUES(1,4);
INSERT INTO LojaCliente VALUES(1,5);
INSERT INTO LojaCliente VALUES(1,6);
INSERT INTO LojaCliente VALUES(1,7);
INSERT INTO LojaCliente VALUES(2,1);
INSERT INTO LojaCliente VALUES(2,2);
INSERT INTO LojaCliente VALUES(2,3);
INSERT INTO LojaCliente VALUES(2,4);

--Promoções
INSERT INTO Promocao VALUES(1,30,'2019-04-04','2019-04-20',0);
INSERT INTO Promocao VALUES(4,30,'2019-04-03','2019-04-14',0);
INSERT INTO Promocao VALUES(2,10,'2019-04-04','2019-04-05',1);
INSERT INTO Promocao VALUES(3,20,'2019-04-04','2019-04-04',1);

--CartaoPromocao
INSERT INTO CartaoPromocao VALUES(1,1);
INSERT INTO CartaoPromocao VALUES(2,1);
INSERT INTO CartaoPromocao VALUES(2,2);
INSERT INTO CartaoPromocao VALUES(2,3);
INSERT INTO CartaoPromocao VALUES(2,4);
INSERT INTO CartaoPromocao VALUES(3,3);

--Encomenda/detalhada/Pagamento
INSERT INTO Encomenda VALUES(1,'2019-04-26',10,12,1);
INSERT INTO EncomendaDetalhada VALUES(12,1,3,0);
INSERT INTO EncomendaDetalhada VALUES(10,1,5,0);
INSERT INTO EncomendaDetalhada VALUES(9,1,1,0);
INSERT INTO EncomendaDetalhada VALUES(20,1,10,0);
INSERT INTO Pagamento VALUES(1, 10, 'Dinheiro', NULL,1, NULL);

INSERT INTO Encomenda VALUES(2,'2019-02-16',20,3,5);
INSERT INTO EncomendaDetalhada VALUES(1,2,4,0);
INSERT INTO EncomendaDetalhada VALUES(2,2,3,0);
INSERT INTO EncomendaDetalhada VALUES(4,2,10,20);
INSERT INTO EncomendaDetalhada VALUES(10,2,1,0);
INSERT INTO Pagamento VALUES(2, 20, 'Dinheiro', 2,2, 3);

INSERT INTO Encomenda VALUES(3,'2019-04-22',13,2,5);
INSERT INTO EncomendaDetalhada VALUES(1,3,4,0);
INSERT INTO EncomendaDetalhada VALUES(2,3,3,0);
INSERT INTO EncomendaDetalhada VALUES(4,3,10,20);
INSERT INTO EncomendaDetalhada VALUES(10,3,1,0);
INSERT INTO Pagamento VALUES(3, 20, 'Multibanco', 2, 3, 2);

INSERT INTO Encomenda VALUES(4,'2019-04-30',15,2,5);
INSERT INTO EncomendaDetalhada VALUES(1,4,4,0);
INSERT INTO EncomendaDetalhada VALUES(2,4,3,0);
INSERT INTO EncomendaDetalhada VALUES(4,4,10,20);
INSERT INTO EncomendaDetalhada VALUES(10,4,1,0);
INSERT INTO Pagamento VALUES(4, 20, 'Multibanco', 2, 4, 1);

INSERT INTO Encomenda VALUES(5,'2019-04-02',27,2,4);
INSERT INTO EncomendaDetalhada VALUES(1,5,4,0);
INSERT INTO EncomendaDetalhada VALUES(2,5,3,0);
INSERT INTO EncomendaDetalhada VALUES(4,5,10,20);
INSERT INTO EncomendaDetalhada VALUES(10,5,1,0);
INSERT INTO Pagamento VALUES(5, 20, 'Multibanco', 3, 5, 3);

