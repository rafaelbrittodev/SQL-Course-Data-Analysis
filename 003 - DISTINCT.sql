
-- (Exemplo 1) Seleção de uma coluna sem DISTINCT
-- Liste as marcas de carros que cosntam na tebela products
SELECT brand
FROM sales.products -- 333 linhas

-- (Exemplo 2) Seleção de uma coluna com DISTINCT
-- Liste as marcas de carro distintas que constam na tabela products
SELECT DISTINCT brand
FROM sales.products -- 40 linhas

-- (Eemplo 3) Seleção de mais de uma coluna com DISTINCT
-- Liste as marcas e anos de modelo distintos que constam na tabela products
SELECT DISTINCT brand, model_year
FROM sales.products
ORDER BY model_year

