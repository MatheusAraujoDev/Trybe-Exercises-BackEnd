# Bloco 22 - Exercícios Dia 3

## Desafios sobre VIEW

Exercício 1: Crie uma view chamada film_with_categories utilizando as tabelas category , film_category e film do banco de dados sakila . Essa view deve exibir o título do filme, o id da categoria e o nome da categoria, conforme a imagem abaixo. Os resultados devem ser ordenados pelo título do filme.

![image](https://user-images.githubusercontent.com/80549950/131920584-4c94e3a0-9acf-4bbb-8a52-d8b306b45e9b.png)




Exercício 2: Crie uma view chamada film_info utilizando as tabelas actor , film_actor e film do banco de dados sakila . Sua view deve exibir o actor_id , o nome completo do ator ou da atriz em uma coluna com o ALIAS actor e o título dos filmes. Os resultados devem ser ordenados pelos nomes de atores e atrizes. Use a imagem a seguir como referência.

![image](https://user-images.githubusercontent.com/80549950/131920606-030d7da9-0780-4571-ad12-9a60219a1386.png)




Exercício 3: Crie uma view chamada address_info que faça uso das tabelas address e city do banco de dados sakila . Sua view deve exibir o address_id , o address , o district , o city_id e a city . Os resultados devem ser ordenados pelo nome das cidades. Use a imagem abaixo como referência.

![image](https://user-images.githubusercontent.com/80549950/131920635-242e4d97-a15e-411b-b2c5-7aacc8a38f7a.png)


Exercício 4: Crie uma view chamada movies_languages , usando as tabelas film e language do banco de dados sakila . Sua view deve exibir o título do filme , o id do idioma e o idioma do filme , como na imagem a seguir.

![image](https://user-images.githubusercontent.com/80549950/131920649-0fe1918f-f3f5-4a59-8e67-0d220bca5ed4.png)




## Desafios sobre INDEX

Exercício 1: Verifique o impacto de um FULLTEXT INDEX na tabela category (banco de dados sakila ), adicionando-o na coluna name . Após ter adicionado o índice, mensure o custo da query utilizando o execution plan , como já foi feito em lições anteriores. Após ter criado e mensurado o custo da query, exclua o índice e mensure novamente esse custo.

```
-- Após ter criado o índice, mensure o custo com a seguinte query:
SELECT *
FROM sakila.category
WHERE MATCH(name) AGAINST('action');

-- Após ter excluído o índice, mensure o custo com a seguinte query:
SELECT *
FROM sakila.category
WHERE name LIKE '%action%';
```

Exercício 2: Verifique o impacto de um INDEX na tabela address (banco de dados sakila ) adicionando-o na coluna postal_code . Após ter adicionado o índice, mensure o custo da query utilizando o execution plan, como já foi feito em lições anteriores. Após ter criado e mensurado o custo da query, exclua o índice e mensure novamente esse custo.

```
-- Mensure o custo com a seguinte query:
SELECT *
FROM sakila.address
WHERE postal_code = '36693';
```


## Desafios sobre ALTER TABLE

###### Restaure o banco de dados HR abaixo antes de continuar, caso não o tenha restaurado em alguma lição anterior:
###### O banco de dados usado como base para os próximos exercícios pode ser restaurado através deste _[Arquivo SQL](https://s3.us-east-2.amazonaws.com/assets.app.betrybe.com/back-end/sql/hr-cebf8bc2a5bb252bc470ae28943604c6.sql)_.

```
-1. Baixe o conteúdo do arquivo .sql linkado acima;
-2. Copie todo o código SQL;
-3. Abra o MySQL Workbench e abra uma nova janela de query;
-4. Cole o SQL para dentro dessa janela;
-5. Selecione todo o código usando CTRL + A;
-6. Execute-o teclando CTRL + ENTER.
```

Exercício 1: Escreva uma query SQL para alterar na tabela localtions o nome da coluna street_address para address , mantendo o mesmo tipo e tamanho de dados.

Exercício 2: Escreva uma query SQL para alterar o nome da coluna region_name para region , mantendo o mesmo tipo e tamanho de dados.

Exercício 3: Escreva uma query SQL para alterar o nome da coluna country_name para country , mantendo o mesmo tipo e tamanho de dados.

