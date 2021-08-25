-- Faça duas buscas, uma utilizando SUBQUERY e outra utilizando INNER JOIN , que retornem as avaliações dos filmes lançados depois de 2009.
-- Usando SUBQUERY
USE Pixar;

SELECT 
    rating
FROM
    BoxOffice
WHERE
    movie_id IN (SELECT 
            id
        FROM
            Movies
        WHERE
            year > 2009);
            
            
-- Usando INNER JOIN
USE Pixar;

SELECT 
    b.rating
FROM
    BoxOffice b
        INNER JOIN
    Movies m ON b.movie_id = m.id
WHERE
    m.year > 2009;