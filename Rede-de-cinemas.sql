create table contas (
	cod int primary key,
	valor_fornecedores decimal (9,2),
	valor_funcionarios decimal (9,2),
	valor_bilheteria decimal (9,2),
	mes_ano varchar (50),
	gastos decimal (9,2),
	lucro decimal (9,2)
);

insert into contas
(cod, valor_fornecedores, valor_funcionarios, valor_bilheteria, mes_ano, gastos, lucro)
values
(1, 52000.00, 35000.00, 84500.90, ‘janeiro/2020’, 15200.00, 62300.00),
(2, 32000.00, 31000.00, 81500.90, ‘fevereiro/2020’, 17500.00, 65600.00),
(3, 62000.00, 32000.00, 82500.90, ‘marco/2020’, 16300.00, 65900.00),
(4, 26000.00, 33000.00, 83500.90, ‘abril/2020’, 18200.00, 61200.00),
(5, 52000.00, 34000.00, 82600.90, ‘maio/2020’, 14200.00, 64800.00),
(6, 35000.00, 35000.00, 85500.90, ‘junho/2020’, 17900.00, 62600.00),
(7, 15000.00, 36000.00, 86900.90, ‘julho/2020’, 12800.00, 68500.00),
(8, 84000.00, 37000.00, 87600.90, ‘agosto/2020’, 15800.00, 64800.00),
(9, 23000.00, 38000.00, 88600.90, ‘setembro/2020’, 16100.00, 62900.00),
(10, 28000.00, 39000.00, 89200.90, ‘outubro/2020’, 16300.00, 61500.00)
-----------------------------------------------------------------------.
create table Filmes(
	Id int primary key,
	Nome varchar,
	Data_exibicao date,
	Classificacao_indicativa varchar,
	Duracao varchar,
	Genero varchar,
	Diretor varchar
);
Rede_cinemas=# \copy Filmes from 'C:\Users\theo_b_silva\Documents\Filmes.csv' delimiter ',' csv header
-----------------------------------------------------------------------
create table Clientes(
	CPF varchar primary key,
	Nome varchar,
	Idade int
);

insert into Clientes
(CPF, Nome, Idade)
values
('102.227.489-90', 'Marinete Jujunete', 52),
('628.897.376-91', 'Pepito Mario', 76),
('102.227.649-29', 'Guilhermino Silveira', 23),
('425.649.613-24', 'João Guilherme', 51),
('167.649.319-54', 'Larrisa Manoela', 36),
('819.435.294-92', 'Maria Joaquina', 64),
('175.491.874-36', 'Cirilo Mariozinho', 51),
('413.091.564-92', 'Eduarda Franderlinde', 43),
('763.120.854-90', 'Clarissa Assunção', 24),
('343.852.684-01', 'Théo Barreto Silva', 55)
-----------------------------------------------------------------------
create table Bilheteria(
	Id int primary key,
	Valor decimal (4,2),
	Cod_cliente varchar references Clientes (CPF),
	Forma_pagamento varchar,
	Sala_exibicao varchar
);

insert into Bilheteria
(Id, Valor, Cod_cliente, Forma_pagamento, Sala_exibicao)
values
(25, 15.00, '102.227.489-90', 'Cartão de Crédito', 'Sala 5'),
(46, 30.00, '628.897.376-91', 'Dinheiro', 'Sala 3'),
(75, 30.00, '102.227.649-29', 'Cartão de Débito', 'Sala 2'),
(45, 15.00, '425.649.613-24', 'Cheque', 'Sala 1'),
(88, 30.00, '167.649.319-54', 'Dinheiro', 'Sala 5'),
(55, 30.00, '819.435.294-92', 'Cartão de Crédito', 'Sala 3'),
(84, 15.00, '175.491.874-36', 'Dinheiro', 'Sala 2'),
(62, 30.00, '413.091.564-92', 'Dinheiro', 'Sala 4'),
(12, 15.00, '763.120.854-90', 'Dinheiro', 'Sala 1'),
(56, 15.00, '343.852.684-01', 'Dinheiro', 'Sala 2')
-----------------------------------------------------------------------
create table Funcionarios(
	PIS varchar primary key,
	Nome varchar,
	Funcao varchar,
	Salario decimal (8,2),
	Carga_horaria varchar,
	);

insert into Funcionarios
(PIS, Nome, Funcao, Salario, Carga_horaria)
values
(‘333.55555.22-1’, ‘Guilherme’, ‘Lanchonete’, ‘1500.00’, ‘8 horas’),
(‘555.46424.45-2’, ‘Júlia’, ‘Bilheteria’, ‘Limpar sala de cinema’, ‘1350.50’, ‘12 horas’),
(‘554.46124.15-5’, ‘Júliazinha’, ‘Varrer chão’, ‘12950.50’, ‘24 horas’),
(‘534.56224.18-4’, ‘Juberta Marilda’, ‘Lanchonete’, ‘4950.40’, ‘15 horas’);
(‘546.64291.78-2’, ‘Marizinha da Potranca’, ‘Bilheteria’, ‘3500.00’, ‘12 horas’)
-----------------------------------------------------------------------
create table Lanchonete(
	Cod int primary key,
	Podutos varchar,
	Valor decimal (5,2),
	Validade date,
	Cod_fornecedores varchar references Fornecedores (CNPJ)
);

insert into Lanchonete
(Cod, Produtos, Valor, Validade, Cod_fornecedores)
values
(1, 'Pipoca Amanteigada', 22.00 '2022-03-22', '44.222.111/0001-48'),
(2, 'Coca-cola - 1 Litro', 12.00 '2023-05-20', '55.566.951/0001-42'),
(3, 'Salsicha frita delicia', 6.00 '2022-03-18', '71.852.963/0001-56'),
(4, 'Pureza - 2 Litros', 15.00, '2022-05-22', '45.126.129/0001-88'),
(5, 'Sorvete Napolitano', 25.00, '2025-04-23', '45.126.129/0001-88')
-----------------------------------------------------------------------
create table Fornecedores(
	CNPJ varchar primary key,
	Nome varchar,
	Localizacao varchar,
	Email varchar,
	Telefone varchar,
	Produto varchar
	Quantidade int
);
Rede_cinemas=# \copy Fornecedores from 'C:\Users\theo_b_silva\Documents\Fornecedores.csv' delimiter ',' csv header
-----------------------------------------------------------------------
create table sessoes(
cod_filme int,
cod_bilheteria int
)
 insert into sessoes
(cod_filme, cod_bilheteria)
values
(1, 25),
(2, 46),
(3, 75),
(4, 45),
(5, 88),
(6, 55),
(8, 84),
(9, 62),
(10, 12),
(11, 56)
