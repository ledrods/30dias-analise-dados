--mostrar apenas produtos que custem mais que 1800
select * from produtos
where preco_unit > 1800;

--mostrar produtos iguais a 3100
select * from produtos
where preco_unit = 3100;

--mostrar apenas produtos da marca dell 
select * from produtos 
where marca_produto = 'DELL';

--mostrar pedidos que foram feitos no dia 01/01/2019
select * from pedidos
where data_venda = '2019-01-01';

--mostrar clientes solteiros do sexo masculino 
select * from clientes
where estado_civil = 'S' and sexo = 'M';

--mostrar produtos da marca Dell ou samgung
SELECT * from produtos
where marca_produto ='DELL' or marca_produto = 'SAMSUNG';