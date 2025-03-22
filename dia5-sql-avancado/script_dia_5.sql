-- Seleciona os produtos cujo preço unitário está acima da média dos preços de todos os produtos
SELECT product_name, unit_price 
FROM products
WHERE unit_price > (SELECT AVG(unit_price) FROM products);

-- Seleciona os clientes que nunca fizeram um pedido
SELECT customer_id, company_name 
FROM customers
WHERE customer_id NOT IN (SELECT DISTINCT customer_id FROM orders);

-- Calcula o total de vendas por categoria e exibe apenas aquelas com vendas superiores a 5000
WITH vendas_categoria AS (
    SELECT p.category_id, c.category_name, SUM(od.unit_price * od.quantity) AS total_vendas
    FROM order_details od
    JOIN products p ON od.product_id = p.product_id
    JOIN categories c ON p.category_id = c.category_id
    GROUP BY p.category_id, c.category_name
)
SELECT * FROM vendas_categoria WHERE total_vendas > 5000;

-- Lista os funcionários junto com o nome do seu gerente (caso tenham)
WITH funcionarios_gerentes AS (
    SELECT e.employee_id, e.first_name || ' ' || e.last_name AS funcionario,
           m.first_name || ' ' || m.last_name AS gerente
    FROM employees e
    LEFT JOIN employees m ON e.reports_to = m.employee_id
)
SELECT * FROM funcionarios_gerentes;

-- Calcula o ranking dos produtos mais vendidos em quantidade total
SELECT p.product_name, SUM(od.quantity) AS total_vendido,
       RANK() OVER (ORDER BY SUM(od.quantity) DESC) AS ranking
FROM order_details od
JOIN products p ON od.product_id = p.product_id
GROUP BY p.product_id, p.product_name;

-- Calcula o total de vendas mensais para cada pedido, usando funções de janela
SELECT order_id, order_date, 
       SUM(unit_price * quantity) OVER (PARTITION BY EXTRACT(MONTH FROM order_date)) AS vendas_mensais
FROM order_details
JOIN orders USING (order_id);

-- Seleciona os 5 clientes que mais gastaram, somando o valor total de seus pedidos
SELECT c.customer_id, c.company_name, SUM(od.unit_price * od.quantity) AS total_gasto
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_details od ON o.order_id = od.order_id
GROUP BY c.customer_id, c.company_name
ORDER BY total_gasto DESC
LIMIT 5;

-- Determina o produto que gerou maior lucro para a empresa, considerando descontos aplicados
SELECT p.product_id, p.product_name, 
       SUM(od.unit_price * od.quantity * (1 - od.discount)) AS total_lucro
FROM order_details od
JOIN products p ON od.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_lucro DESC
LIMIT 1;
