-- Escreva uma query para exibir o nome do segundo projeto com menor quantidade de horas.
SELECT Name FROM Projects
ORDER BY Hours ASC
LIMIT 1
OFFSET 1;