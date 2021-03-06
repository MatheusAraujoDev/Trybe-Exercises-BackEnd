function doMath(a, b, c) {
  return new Promise((resolve, reject) => {
    if (typeof a !== 'number' || typeof b !== 'number' || typeof c !== 'number')
      reject('Informe apenas números');
      
    const result = (a + b) * c;

    if (result < 50) {
      return reject('Valor muito baixo');
    }

    resolve(result);
  });
}

//testando as funções
doMath(10, 10, 10)
  .then(resolve => console.log(resolve))
  .catch(error => console.log(error)) // Retorno 200

doMath(1, 1, 'a')
.then(resolve => console.log(resolve))
.catch(error => console.log(error))// retorno Informe apenas números

doMath(1, 1, 1)
.then(resolve => console.log(resolve))
.catch(error => console.log(error)) // Retorno Valor muito baixo
