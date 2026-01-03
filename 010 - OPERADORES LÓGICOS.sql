-- (Exemplo 1) Uso do comando BETWEEN
-- Selecione veículos que custam entre 100k e 200k na tabela products

-- SELECT *
-- FROM sales.products
-- WHERE price >= 100000 AND price <= 200000
-- ORDER BY price

SELECT *
FROM sales.products
WHERE price BETWEEN 100000 AND 200000
ORDER BY price

-- (Exemplo 2) Uso do comando NOT
-- Selecione veículos que custam abaixo de 100k ou acima de 200k

-- SELECT *
-- FROM sales.products
-- WHERE price < 100000 OR price > 200000
-- ORDER BY price

SELECT *
FROM sales.products
WHERE price NOT BETWEEN 100000 AND 200000
ORDER BY price

-- (Exemplo 3) Uso do comando IN
-- Selecionar produtos que sejam da marca HOND, TOYOTA ou RENAULT

-- SELECT *
-- FROM sales.products
-- WHERE brand = 'HONDA' OR brand = 'TOYOTA' OR brand = 'RENAULT'

SELECT *
FROM sales.products
WHERE brand IN ('HONDA', 'TOYOTA', 'RENAULT')
ORDER BY brand

-- (Exemplo 4) IUso do comando LIKE (matchs imperfeitos)
-- Selecione os primeiros nomes distintos da tabela customers que começam com as iniciais ANA

SELECT DISTINCT first_name
FROM sales.customers
WHERE first_name LIKE 'ANA%'

-- (Exemplo 5) Uso do comando ILIKE (ignora letras maiúsculas e minúsculas)
-- Selecione os primeiros nomes distintos com iniciais 'ana'

SELECT DISTINCT first_name
FROM sales.customers
WHERE first_name ILIKE 'ana%'

-- (Exemplo 6) Uso do comando IS NULL
-- Selecionar apenas as linhas que contém nulo no campo "population" na tabela temp_table.regions
SELECT *
FROM temp_tables.regions
WHERE population IS NULL