Dia 2 – SQL Básico (SELECT, JOINs, GROUP BY)

🎯 Objetivo do Dia

Aprender a extrair e manipular dados com SQL, utilizando comandos essenciais como SELECT, WHERE, ORDER BY, GROUP BY e JOINs.

🔹 Tópicos Abordados

1️⃣ Comandos Básicos: SELECT, WHERE, ORDER BY

SELECT: Usado para selecionar colunas e linhas de uma tabela.

WHERE: Permite filtrar registros com condições específicas.

ORDER BY: Ordena os resultados de uma consulta.

Exemplos:

-- Selecionar todas as colunas da tabela pedidos
SELECT * FROM pedidos;

-- Selecionar colunas específicas da tabela clientes
SELECT id_cliente AS 'ID DO CLIENTE', nome, data_nascimento, email FROM clientes;

-- Selecionar os 5 primeiros registros da tabela produtos
SELECT * FROM produtos LIMIT 5;

-- Ordenar produtos pelo preço em ordem decrescente
SELECT * FROM produtos ORDER BY preco_unit DESC;

2️⃣ Filtragem e Agregação: GROUP BY, HAVING, COUNT(), SUM(), AVG()

GROUP BY: Agrupa dados por colunas especificadas.

HAVING: Filtra grupos após a agregação.

COUNT(): Conta o número de registros.

SUM(), AVG(), MIN(), MAX(): Calculam soma, média, mínimo e máximo de valores.

Exemplos:

-- Contar a quantidade de clientes
SELECT COUNT(*) FROM clientes;

-- Contar a quantidade de clientes distintos por escolaridade
SELECT COUNT(DISTINCT escolaridade) FROM clientes;

-- Calcular soma, média, mínimo e máximo da receita de vendas
SELECT
    SUM(receita_venda) AS 'Soma de receita',
    AVG(receita_venda) AS 'Média de receita',
    MIN(receita_venda) AS 'Mínimo de receita',
    MAX(receita_venda) AS 'Máximo de receita'
FROM pedidos;

-- Agrupar clientes por sexo e contar quantos existem em cada categoria
SELECT sexo, COUNT(*) AS 'Clientes por sexo' FROM clientes GROUP BY sexo;

3️⃣ Junções (JOINs): INNER JOIN, LEFT JOIN, RIGHT JOIN

INNER JOIN: Retorna apenas os registros que possuem correspondência nas duas tabelas.

LEFT JOIN: Retorna todos os registros da tabela da esquerda, mesmo que não haja correspondência na direita.

RIGHT JOIN: Retorna todos os registros da tabela da direita, mesmo que não haja correspondência na esquerda.

Exemplo:

-- Retornar pedidos junto com os nomes dos clientes
SELECT pedidos.id_pedido, clientes.nome
FROM pedidos
INNER JOIN clientes ON pedidos.id_cliente = clientes.id_cliente;

4️⃣ Prática com SQLite

Criação de tabelas.

Inserção e manipulação de dados.

Execução de queries para testar comandos SQL.

📝 Tarefas Realizadas

✔️ Execução de consultas SQL para seleção, ordenação e filtragem de dados.
✔️ Uso de funções agregadas para sumarização de informações.
✔️ Aplicação de JOINs para combinar dados de diferentes tabelas.
✔️ Prática com SQLite para execução de queries e criação de tabelas.