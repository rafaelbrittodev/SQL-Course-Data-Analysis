

-- (Exemplo 1) Seleção de uma coluna de uma tabla
-- Liste os emails dos clientes da tabela sales.customers
SELECT email
FROM sales.customers

-- (Exemplo 2) Seleção de mais de uma coluna de uma tabela
-- Liste os emails e nomes dos clientes da tabela sales.customers
SELECT email, first_name, last_name
FROM sales.customers

-- (Exemplo 3) Seleção de todas as colunas de uma tabela
-- Liste todas as informações dos clientes da tabela sales.customers
SELECT *
FROM sales.customers



