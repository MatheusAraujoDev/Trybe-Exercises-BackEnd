-- Utilizando o EXISTS , selecione o nome e localização dos cinemas que possuem filmes em cartaz.
USE Pixar;

SELECT 
    t.name, t.location
FROM
    Theater AS t
WHERE
    EXISTS( SELECT 
            *
        FROM
            Movies
        WHERE
            Movies.theater_id = t.id);