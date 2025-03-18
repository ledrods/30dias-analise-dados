--utilizar o group by para descobrir a qtd de clientes por sexo 
SELECT
	sexo,
    count(*) as 'clientes por sexo'
from clientes
group by sexo;

--fazer uma consulta para retornar o total de produtos por marca 
SELECT
	marca_produto,
    count(*) AS 'total de produtos'
from produtos
group by marca_produto;


select * from pedidos;
--fazer uma consulta a tabela pedidos e descobrir a receita total e o custo total por id_loja

SELECT
	id_loja,
    SUM(receita_venda) AS 'receita total',
    SUM(custo_venda) AS 'custo total'
from pedidos
GROUP BY id_loja;
