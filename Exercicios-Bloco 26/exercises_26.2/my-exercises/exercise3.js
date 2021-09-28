 async function callDoMath() {
   /* Criamos um novo array de 3 posições e utilizamos o `map` para gerar um número aleatório para cada posição do Array */
   const randomNumbers = Array.from({ length: 3 }).map(getRandomNumber);

  try {
    const result = await doMath(...randomNumbers);
    console.log(result);
  } catch (err) {
    console.error(err);
  }
}
