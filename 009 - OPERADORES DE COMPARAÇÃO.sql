-- (Exemplo 1) Uso de operadores como flag
-- Crie uma coluna que retorne TRUE sempre que um cliente for um profissional clt
SELECT
	customer_id,
	first_name,
	professional_status,
	(professional_status = 'clt') as cliente_clt
FROM sales.customers