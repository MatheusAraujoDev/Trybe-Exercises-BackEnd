# Bloco 24 - Exercícios Dia 2

###### Você continuará utilizando o mesmo dataset de filmes do dia anterior. Se você fez todos os exercícios corretamente, apenas siga para o primeiro exercício de hoje. Caso contrário, conecte-se à sua instância e utilize o trecho de código abaixo para inserir os documentos e ficar na mesma página!

```
db.movies.drop();
db.movies.insertMany([
  {
    title: "Batman",
    category: [
      "action",
      "adventure",
    ],
    imdbRating: 7.7,
    budget: 35,
  },
  {
    title: "Godzilla",
    category: [
      "action",
      "adventure",
      "sci-fi",
    ],
    imdbRating: 6.6,
    budget: 1,
  },
  {
    title: "Home Alone",
    category: [
      "family",
      "comedy",
    ],
    imdbRating: 7.4,
  },
]);
```

Para cada execução, utilize o método find() para conferir as alterações nos documentos.

O MongoDB possui diversas ferramentas, como, por exemplo, mongo , mongosh , Compass e outras ferramentas de terceiros. Você pode utilizar o que achar melhor para executar as queries . O importante é realizá-las.

- **Exercício 1** - Adicione a categoria "superhero" ao filme Batman .

Após a execução do método .find().pretty() , o resultado do filme Batman será parecido com o dessa imagem:
![image](https://user-images.githubusercontent.com/80549950/133343809-39d9c1ec-5f79-4fd8-b0fb-4d6772ccd718.png)


- **Exercício 2** - Utilizando o modificador $each , adicione as categorias "villain" e "comic-based" ao filme Batman .

Após a execução do método .find().pretty() , o resultado do filme Batman será parecido com o dessa imagem:
![image](https://user-images.githubusercontent.com/80549950/133343829-38b57b5c-93f5-4648-a701-2f878d972063.png)


- **Exercício 3** - Remova a categoria "action" do filme Batman .

Após a execução do método .find().pretty() , o resultado do filme Batman será parecido com o dessa imagem:
![image](https://user-images.githubusercontent.com/80549950/133343836-dc090c35-bb15-4f20-a485-57c2f9543f12.png)


- **Exercício 4** - Remova o primeiro elemento do array category do filme Batman .

Após a execução do método .find().pretty() , o resultado do filme Batman será parecido com o dessa imagem:
![image](https://user-images.githubusercontent.com/80549950/133343844-9095cbb3-8aa7-4ec2-99eb-3213de4a2066.png)


- **Exercício 5** - Remova o último elemento do array category do filme Batman .

Após a execução do método .find().pretty() , o resultado do filme Batman será parecido com o dessa imagem:
![image](https://user-images.githubusercontent.com/80549950/133343851-4eaafc77-c3dc-4e3e-85a5-18e38540af0f.png)


- **Exercício 6** - Adicione o elemento "action" ao array category do filme Batman , garantindo que esse valor não se duplique.

Após a execução do método .find().pretty() o resultado do filme Batman será parecido com o dessa imagem:
![image](https://user-images.githubusercontent.com/80549950/133343866-66b057dd-6c0b-4928-8d4c-643ff4beab09.png)


- **Exercício 7** - Adicione a categoria "90's" aos filmes Batman e Home Alone .

Após a execução do método .find().pretty() , o resultado do filme Batman e do filme Home Alone será parecido com o dessa imagem:
![image](https://user-images.githubusercontent.com/80549950/133343877-6c948dce-c3d0-44d2-8924-ea4b1fa34cea.png)


- **Exercício 8** - Crie um array de documentos chamado cast para o filme Home Alone com os seguintes dados:

```
{
  "actor": "Macaulay Culkin",
  "character": "Kevin"
},
{
  "actor": "Joe Pesci",
  "character": "Harry"
},
{
  "actor": "Daniel Stern"
}
```

Após a execução do método .find().pretty() , o resultado do filme Home Alone será parecido com o dessa imagem:

![image](https://user-images.githubusercontent.com/80549950/133343887-0be4c2e5-0a6d-4330-b8f0-9579b66eec62.png)


- **Exercício 9** - Adicione o campo character com o valor Marv ao array de cast em que o campo actor seja igual a Daniel Stern no filme Home Alone .

Dica : Para isso, leia aqui sobre o operador $ .

Após a execução do método .find().pretty() , o resultado do filme Home Alone será parecido com o dessa imagem:
![image](https://user-images.githubusercontent.com/80549950/133343901-a847027d-f6f2-41c2-91f8-d8feb68a05d4.png)


- **Exercício 10** - Crie um array de documentos chamado cast para o filme Batman com os seguintes dados:

```
{
  "character": "Batman"
},
{
  "character": "Alfred"
},
{
  "character": "Coringa"
}
```

Após a execução do método .find().pretty() , o resultado do filme Batman será parecido com o dessa imagem:
![image](https://user-images.githubusercontent.com/80549950/133343913-62711fcd-34ec-4266-b05e-11a983748c76.png)


- **Exercício 11** - Produza três querys para o filme Batman :

* Adicione o campo actor , que deve ser um array com o valor Christian Bale , ao array de cast em que o campo character seja igual a Batman ;
* Adicione o campo actor , que deve ser um array com o valor Michael Caine , ao array de cast em que o campo character seja igual a Alfred ;
* Adicione o campo actor , que deve ser um array com o valor Heath Ledger , ao array de cast em que o campo character seja igual a Coringa ;

Dica : Para isso, leia aqui sobre o operador $ .

Após a execução do método .find().pretty() o resultado do filme Batman será parecido com o dessa imagem:
![image](https://user-images.githubusercontent.com/80549950/133343929-0bf0db99-282f-4a88-ae4f-d387e5ee93b2.png)


- **Exercício 12** - Adicione aos atores de cast do character Batman do filme Batman os valores "Michael Keaton" , "Val Kilmer" e "George Clooney" , e deixe o array em ordem alfabética.

Dica : Para isso, leia aqui sobre o operador $ .

Após a execução do método .find().pretty() , o resultado do filme Batman será parecido com o dessa imagem:
![image](https://user-images.githubusercontent.com/80549950/133343939-1dbb6dcc-8299-4b91-8820-833ca66133d0.png)


