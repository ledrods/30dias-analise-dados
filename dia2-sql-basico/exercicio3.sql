--count count(*) count(distinct)
select
	count(nome)
from clientes;

SELECT
	count(*)
from clientes;

SELECT
	count(DISTINCT escolaridade)
from clientes;

-- sum avg min max 
SELECT 
	SUM(receita_venda) as 'Soma de receita',
    AVG(receita_venda) AS 'Média de receita',
    MIN(receita_venda) AS 'Mínimo de receita',
    MAX(receita_venda) AS 'Máximo de receita'
from pedidos;

