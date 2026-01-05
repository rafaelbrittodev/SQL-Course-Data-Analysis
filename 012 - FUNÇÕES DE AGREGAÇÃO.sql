-- TIPOS DE FUNÇOES AGREGADAS
-- COUNT ()
-- SUM ()
-- MIN ()
-- MAX ()
-- AVG ()

-- (Exemplo 1) Contagem de todas as linhas de uma tabela
-- Conte todas as visitas realizadas ao site da empresa fictícia
SELECT COUNT(*) as total_visitas
FROM sales.funnel 

-- (Exemplo 2) Contagem das linhas de uma coluna
-- Conte todos os pagamentos registrados na tabela sales.funnel
SELECT COUNT(paid_date) as pagamentos
FROM sales.funnel

-- (Exemplo 3) Contagem distinta de uma coluna
-- Conte todos os produtos distintos visitados em jan/21
SELECT COUNT (DISTINCT product_id)
FROM sales.funnel
WHERE visit_page_date BETWEEN '2021-01-01' AND '2021-01-31'

-- (Exemplo 4) Calcule o preço mínimo, máximo e médio dos produtos da tabela products
SELECT MIN(price), MAX(price), AVG(price)
FROM sales.products

-- (Exemplo 5) Informe qual é o veículo mais caro da tabela products (sub-query)
SELECT *
FROM sales.products
WHERE price = (SELECT MAX(price) FROM sales.products)
