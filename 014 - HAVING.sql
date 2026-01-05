-- (Exemplo 1) Seleçào com filtro no HAVING
-- Calcule o n de clientes por estado filtrando apenas estados acima de 100 clientes
SELECT
	state,
	COUNT (*)
FROM sales.customers
-- WHERE state <> 'MG' -- todos menos minas gerais
GROUP BY state
HAVING COUNT(*) > 100
--	AND state <> 'MG' -- todos menos minas gerais