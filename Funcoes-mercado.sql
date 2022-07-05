--1) Criar a tabela mercado(id, descriçao, preço, categoria)--
create table mercado(
	id int primary key,
	descricao varchar,
	preco numeric,
	categoria varchar
);

--2) Insira no minimo 5 dados na tabela.--
insert into mercado
(id, descricao, preco, categoria)
values
(1, 'Açúcar', 5.86, 'Confeitos'),
(2, 'Farinha de Trigo', 7.75, 'Farináceos'),
(3, 'Sorvete', 15.90, 'Congelados'),
(4, 'Pão', 4.30, 'Padaria')
(5, 'Nutella', 25.62, 'Geléias')

--3) Criar uma função aumento_10 que aumente em 10% o valor passado por argumento.--
create function aumento_10(preco numeric) returns numeric as $$
	declare
		aumentar_preco numeric;
		preco_final numeric;
	begin
		aumentar_preco = preco * 0.10;
		preco_final = preco + aumentar_preco;
	return preco_final;
end;
$$ language PLPGSQL

--4) Atualizar valores na tabela utilizando a função feita. (dica: UPDATE ____ SET _____)--
update mercado set preco = aumento_10(preco)

--5) Criar uma nova função aumento onde--
-- - valores acima de 100 tem um aumento de 20%--
-- - entre 50 e 100 aumento de 10%--
-- - abaixo de 50 aumento de 5%--
create function aumento(preco numeric) returns numeric as $$
	declare
		aumento numeric;
		aumento_final numeric;
	begin
		if preco > 99 then
		aumento = preco * 0.20;
		aumento_final = aumento + preco;
		elsif preco > 49 then
		aumento = preco * 0.10;
		aumento_final = aumento + preco;
		else
		aumento = preco * 0.5;
		aumento_final = aumento + preco;
		return aumento_final;
		end if;
	end;
$$ language PLPGSQL 

--6) Atualizar novamente os preços do mercado.--
update mercado set preco = aumento(preco)
