-- (Exemplo 1) Seleção de N primeiras linhas usando LIMIT
-- Liste as 10 primeiras linhas da tabela funnel
SELECT *
FROM sales.funnel
LIMIT 10

-- (Exemplo 2) Seleção das N primeiras linhas usando LIMIT e ORDER BY
-- Liste os 10 produtos mais caros da tabela products
SELECT *
FROM sales.products
ORDER BY price DESC
LIMIT 10

