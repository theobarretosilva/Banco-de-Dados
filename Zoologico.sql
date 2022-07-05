create table empresas_parceiras(
	cod int primary key,
	nome varchar,
	aluguel decimal (7,2),
	email varchar,
	funcao varchar
);

insert into empresas_parceiras
(cod, nome, aluguel, email, funcao)
values
(2508, 'Juninho Cachorro-quentes', 5000.00, 'juninhocahorrao@gmail.com', 'Vender cachorro_quentes'),
(2208, 'Mario dos crepezão', 4000.00, 'mariovendedorvidafelizcrepes@yahoo.com', 'Vender crepes deliciosos'),
(2105, 'Claudia do sorvetinho', 10000.00, 'claudiasorvetesltda@outlook.com', 'Vender sorvetes para alegrar as crianças');
---------------------------------------------------------------------------------------------------------------------------
create table empresas_parceiras(
	cod int primary key,
	nome varchar,
	aluguel decimal (7,2),
	email varchar,
	funcao varchar
);

insert into empresas_parceiras
(cod, nome, aluguel, email, funcao)
values
(2508, 'Juninho Cachorro-quentes', 5000.00, 'juninhocahorrao@gmail.com', 'Vender cachorro_quentes'),
(2208, 'Mario dos crepezão', 4000.00, 'mariovendedorvidafelizcrepes@yahoo.com', 'Vender crepes deliciosos'),
(2105, 'Claudia do sorvetinho', 10000.00, 'claudiasorvetesltda@outlook.com', 'Vender sorvetes para alegrar as crianças');
---------------------------------------------------------------------------------------------------------------------------
create table contas(
	cod int primary key,
	mes_ano varchar,
	valor_total_estoque decimal (9,3),
	valor_total_bilheteria decimal (9,3),
	valor_total_funcionário decimal (8,2),
	lucro decimal (9,3),
	gastos_extras decimal (7,2)
);

insert into contas
(cod, mes_ano, valor_total_estoque, valor_total_bilheteria, valor_total_funcionário, lucro, gastos_extras)
values
(8496, 'Agosto_2016', 250000.500, 240000.000, 100000.00, 500000.450, 30000.00),
(4592, 'Agosto_2017', 300000.000, 200000.000, 110000.00, 410000.350, 15000.00),
(8513, 'Agosto_2018', 350000.000, 400000.000, 150000.00, 750000.900, 35000.00)
---------------------------------------------------------------------------------------------------------------------------
create table visitantes(
	cpf varchar primary key,
	checkin date,
	nome varchar,
	idade int
)
---------------------------------------------------------------------------------------------------------------------------
create table bilheteria(
	n_pulseira int primary key,
	esta_zoo boolean,
	cod_visitante varchar references visitantes (cpf)
)
---------------------------------------------------------------------------------------------------------------------------
create table fornecedor(
	cnpj varchar primary key,
	produto varchar,
	email varchar,
	local varchar
)
---------------------------------------------------------------------------------------------------------------------------
create table estoque(
	codigo int primary key,
	cod_fornecedor varchar references fornecedor (cnpj),
	preco decimal (5,2),
	quantidade int,
	data_compra date,
	marca varchar,
	validade date,
	produto varchar
)

insert into estoque
(codigo, cod_fornecedor, preco, quantidade, data_compra, marca, validade, produto)
values
(8434, '09.638.885/0001-23', 150.20, 50, '2022-01-23', 'rolex', '2025-05-14', 'Ração da galerinha dos leões'),
(8524, '09.638.885/0001-20', 500.70, 90, '2021-05-22', 'svarowski', '2028-02-18', 'Ração gold para macacos'),
(8462, '08.637.881/0002-15', 320.50, 40, '2020-12-05', 'versace', '2024-02-11', 'Ração para elefantes caridosos')
---------------------------------------------------------------------------------------------------------------------------
create table animais(
	cod int primary key,
	nome varchar,
	setor varchar,
	observacoes varchar,
	especie varchar,
	ultima_visita_veterinario date,
	peso decimal (6,3),
	ano_nascimento date,
)

insert into animais
(cod, nome, setor, observacoes, especie, ultima_visita_veterinario, peso, ano_nascimento)
values
(8812, 'Julinha', 'Mamífero', 'Está grávida', 'Macaca', '2022-02-08', 2.500, '2022-01-15'),
(8422, 'Maurício', 'Mamífero', 'Está morrendo', 'Leão', '2021-10-20', 350.000, '2020-12-20')
---------------------------------------------------------------------------------------------------------------------------
create table funcionarios(
	pis varchar primary key,
	nome varchar,
	cpf varchar,
	carga_horaria int,
	salario decimal (6,2),
	email varchar,
	data_nascimento date,
	cargo varchar
)

insert into funcionarios
(pis, nome, cpf, carga_horaria, salario, email, data_nascimento, cargo)
values
('170.33259.50-4', 'Marilha', '102.227.489-90', 12, 1500.50, 'marilhasilvadaconceicao@gmail.com', '1968-08-22', 'Cuida do leão'),
('174.33459.20-1', 'Marcos Silva', '102.227.649-29', 8, 1100.50, 'marquinhoscatchau@gmail.com', '1985-04-15', 'Catador de lixo')
---------------------------------------------------------------------------------------------------------------------------
create table contas(
	cod int primary key,
	mes_ano varchar,
	valor_total_estoque decimal (9,3),
	valor_total_bilheteria decimal (9,3),
	valor_total_funcionário decimal (8,2),
	lucro decimal (9,3),
	gastos_extras decimal (7,2)
);

insert into contas
(cod, mes_ano, valor_total_estoque, valor_total_bilheteria, valor_total_funcionário, lucro, gastos_extras)
values
(8496, 'Agosto_2016', 250000.500, 240000.000, 100000.00, 500000.450, 30000.00),
(4592, 'Agosto_2017', 300000.000, 200000.000, 110000.00, 410000.350, 15000.00),
(8513, 'Agosto_2018', 350000.000, 400000.000, 150000.00, 750000.900, 35000.00)
---------------------------------------------------------------------------------------------------------------------------
create table visitantes(
	cpf varchar primary key,
	checkin date,
	nome varchar,
	idade int
)
---------------------------------------------------------------------------------------------------------------------------
create table bilheteria(
	n_pulseira int primary key,
	esta_zoo boolean,
	cod_visitante varchar references visitantes (cpf)
)
---------------------------------------------------------------------------------------------------------------------------
create table fornecedor(
	cnpj varchar primary key,
	produto varchar,
	email varchar,
	local varchar
)
---------------------------------------------------------------------------------------------------------------------------
create table estoque(
	codigo int primary key,
	cod_fornecedor varchar references fornecedor (cnpj),
	preco decimal (5,2),
	quantidade int,
	data_compra date,
	marca varchar,
	validade date,
	produto varchar
)

insert into estoque
(codigo, cod_fornecedor, preco, quantidade, data_compra, marca, validade, produto)
values
(8434, '09.638.885/0001-23', 150.20, 50, '2022-01-23', 'rolex', '2025-05-14', 'Ração da galerinha dos leões'),
(8524, '09.638.885/0001-20', 500.70, 90, '2021-05-22', 'svarowski', '2028-02-18', 'Ração gold para macacos'),
(8462, '08.637.881/0002-15', 320.50, 40, '2020-12-05', 'versace', '2024-02-11', 'Ração para elefantes caridosos')
---------------------------------------------------------------------------------------------------------------------------
create table animais(
	cod int primary key,
	nome varchar,
	setor varchar,
	observacoes varchar,
	especie varchar,
	ultima_visita_veterinario date,
	peso decimal (6,3),
	ano_nascimento date,
)

insert into animais
(cod, nome, setor, observacoes, especie, ultima_visita_veterinario, peso, ano_nascimento)
values
(8812, 'Julinha', 'Mamífero', 'Está grávida', 'Macaca', '2022-02-08', 2.500, '2022-01-15'),
(8422, 'Maurício', 'Mamífero', 'Está morrendo', 'Leão', '2021-10-20', 350.000, '2020-12-20')
---------------------------------------------------------------------------------------------------------------------------
create table funcionarios(
	pis varchar primary key,
	nome varchar,
	cpf varchar,
	carga_horaria int,
	salario decimal (6,2),
	email varchar,
	data_nascimento date,
	cargo varchar
)

insert into funcionarios
(pis, nome, cpf, carga_horaria, salario, email, data_nascimento, cargo)
values
('170.33259.50-4', 'Marilha', '102.227.489-90', 12, 1500.50, 'marilhasilvadaconceicao@gmail.com', '1968-08-22', 'Cuida do leão'),
('174.33459.20-1', 'Marcos Silva', '102.227.649-29', 8, 1100.50, 'marquinhoscatchau@gmail.com', '1985-04-15', 'Catador de lixo')
