
-- (Exemplo 1) Filtro com condição única
-- Liste os emails dos clientes da nossa base que moram no estado de Santa Catarina
SELECT DISTINCT state
FROM sales.customers

SELECT email, state
FROM sales.customers
WHERE STATE = 'SC'

-- (Exemplo 2) Filtro com mais de uma condição
-- Liste os emails dos clientes da nossa base que moram no estado de Santa Catarina
-- ou Mato Grosso do Sul
SELECT email, state
FROM sales.customers
WHERE state = 'SC' OR state = 'MS'
ORDER BY state

-- (Exemplo 3) 
-- Liste os emails dos clientes da nossa base que moram no estado de Santa Catarina
-- ou Mato Grosso do Sul e que tem mais de 30 anos
SELECT DISTINCT birth_date
FROM sales.customers

SELECT email, state, birth_date
FROM sales.customers
WHERE (state = 'SC' OR state = 'MS') AND birth_date < '1991-12-28'
ORDER BY birth_date


