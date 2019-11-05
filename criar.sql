drop table if exists Morada;
create table Morada(
  moradaID integer primary key,
  rua text not null,
  numero integer not null check(numero > 0),
  codigo_postal1 integer not null check(codigo_postal1 > 0 and codigo_postal1 < 10000),
  codigo_postal2 integer not null check(codigo_postal2 > 0 and codigo_postal2 < 1000),
  cidade text not null,
  UNIQUE(cidade, rua, numero)
);

drop table if exists Loja;
create table Loja(
  lojaID integer primary key,
  area integer check(area > 0),
  telefone integer unique not null check(telefone >= 100000000 and telefone <= 999999999),
  moradaID integer references Morada unique not null
);

drop table if exists Seccao;
create table Seccao(
  seccaoID integer primary key,
  nome text not null,
  lojaID integer references Loja not null
);

drop table if exists Funcionario;
create table Funcionario(
  funcionarioID integer primary key,
  nome text not null,
  data_nascimento date,   /*forma: 'YYYY-MM-DD'*/
  salario real not null check(salario > 0),
  telefone integer unique not null check(telefone >= 100000000 and telefone <= 999999999),
  moradaID integer references Morada not null,
  lojaID integer references Loja not null
);

drop table if exists Gestor;
create table Gestor(
  Loja integer references Loja primary key,
  Funcionario integer references Funcionario unique not null
);

drop table if exists Cliente;
create table Cliente(
  clienteID integer primary key,
  nome text not null,
  telefone integer unique not null check(telefone >= 100000000 and telefone <= 999999999),
  NIF integer unique not null check(NIF >= 100000000 and NIF <= 999999999),
  moradaID integer references Morada not null
);

drop table if exists Cartao;
create table Cartao(
  cartaoID integer primary key,
  saldo real not null check(saldo >= 0),
  clienteID integer references Cliente unique not null
);

drop table if exists Promocao;
create table Promocao(
  promocaoID integer primary key,
  percentagem integer not null check (percentagem >= 0 and percentagem <= 100),
  data_inicio date not null,  /*forma: 'YYYY-MM-DD'*/
  data_fim date not null,     /*forma: 'YYYY-MM-DD'*/
  desconto_direto integer not null check (desconto_direto == 0 or desconto_direto == 1) --false or true
  check (data_inicio <= data_fim)
);

drop table if exists Encomenda;
create table Encomenda(
  encomendaID integer primary key,
  data date not null,   /*forma: 'YYYY-MM-DD'*/
  preco_total real not null,
  funcionarioID integer references Funcionario not null,
  clienteID integer references Cliente not null
);

drop table if exists Pagamento;
create table Pagamento(
  pagamentoID integer primary key,
  total real not null check(total >= 0),
  tipo_pagamento text not null check (tipo_pagamento == 'Dinheiro' or tipo_pagamento == 'Multibanco' or tipo_pagamento == 'Cheque'),
  cartaoID integer references Cartao,
  encomendaID integer references Encomenda unique not null,
  promocaoID integer references Promocao
);

drop table if exists Produto;
create table Produto(
  produtoID integer primary key,
  nome text not null,
  stock integer not null check(stock >= 0),
  preco_compra real not null,
  preco_venda real not null,
  seccaoID integer references Seccao not null
);

drop table if exists Fornecedor;
create table Fornecedor(
  fornecedorID integer primary key,
  nome text not null,
  telefone integer unique not null,
  moradaID integer references Morada unique not null
);

drop table if exists Fornecimento;
create table Fornecimento(
  fornecimentoID integer primary key,
  quantidade_produto integer not null,
  fornecedorID integer references Fornecedor not null,
  produtoID integer references Produto not null
);

drop table if exists LojaCliente;
create table LojaCliente(
  lojaID integer references Loja,
  clienteID integer references Cliente,
  primary key(lojaID,clienteID)
);

drop table if exists FuncionarioSeccao;
create table FuncionarioSeccao(
  funcionarioID integer references Funcionario,
  seccaoID integer references Seccao,
  primary key(funcionarioID,seccaoID)
);

drop table if exists EncomendaDetalhada;
create table EncomendaDetalhada(
  produtoID integer references Produto,
  encomendaID integer references Encomenda,
  quantidade_produto integer not null,
  desconto real check(desconto >= 0 and desconto <= 100),
  primary key(produtoID,encomendaID)
);

drop table if exists CartaoPromocao;
create table CartaoPromocao(
  cartaoID integer references Cartao,
  promocaoID integer references Promocao,
  primary key(cartaoID,promocaoID)
);

drop table if exists FuncionarioResponsavel;
create table FuncionarioResponsavel(
  funcionario integer references Funcionario primary key,
  responsavel integer references Funcionario not null
);
