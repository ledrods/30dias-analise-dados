--selecionar todas as linhas e colunas da tabela
--a) pedidos
select * from pedidos;
--b)clientes
SELECT * from clientes;
--c)categorias
select * from categorias;
--d)locais 
select * from locais;
--e)produtos
select * from produtos;
--f)lojas 
select * from lojas;


--exemplo 2 selecionar algumas tabelas da coluna clientes
select 
	id_cliente AS 'ID DO CLIENTE', 
	nome, 
    data_nascimento, 
    email 
from clientes;

--exemplo 3 selecionar as 5 primeiras linhas da tabela produto
select * from produtos
limit 5;

--exemplo 4 selecionar todas as linhas da tabela produto 
--só que ordenando pela coluna preço_unit 
select * from produtos
order by preco_unit desc;