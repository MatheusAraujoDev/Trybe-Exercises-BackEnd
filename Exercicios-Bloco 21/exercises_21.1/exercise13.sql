-- 13. Escreva uma query que exiba as seguintes informações de cada funcionário:
-- id , primeiro nome e ano no qual foi contratado (exiba somente o ano).
SELECT employee_id, first_name,
    LEFT(hire_date, 4) 'hire_year'
FROM hr.employees;