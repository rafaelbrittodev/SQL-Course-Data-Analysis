-- (Exemplo 1) Contagem agrupada de uma coluna
-- Calcule o n de clientes da tabela customers por estado
SELECT state, COUNT(*) AS contagem
FROM sales.customers
GROUP BY state
ORDER BY contagem DESC

-- (Exemplo 2) Contagem agrupada de várias colunas
-- Calcule o n de clientes por estado e status profissional
SELECT state, professional_status, COUNT(*) AS contagem
FROM sales.customers
GROUP BY state, professional_status
ORDER BY state, contagem DESC

-- (Exemplo 3) Seleçao de valores distintos
-- Selecione os estados distintos na tabela customers utilizando o group by
SELECT DISTINCT state
FROM sales.customers

SELECT state
FROM sales.customers
GROUP BY state