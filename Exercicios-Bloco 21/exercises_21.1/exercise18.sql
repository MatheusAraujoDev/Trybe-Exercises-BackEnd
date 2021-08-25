-- Escreva uma query que exiba as seguintes informações de cada funcionário:
-- nome , sobrenome , tempo que trabalha na empresa (em dias) .
SELECT first_name,
    last_name,
    DATEDIFF(CURRENT_DATE() , HIRE_DATE) 'tempo trabalhado na empresa'
FROM hr.employees;