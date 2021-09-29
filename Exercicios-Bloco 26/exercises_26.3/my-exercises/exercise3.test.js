// demais casos de teste

describe('quando o parâmetro passado não é um número', () => {
  describe('a resposta', () => {
    it('é uma "string"', () => {
      const resposta = numNaturalFn('AAAA');

      expect(resposta).to.be.a('string');
    });

    it('é igual a "o parâmetro deve ser um número"', () => {
      const resposta = numNaturalFn('AAAA');

      expect(resposta).to.be.equals('o parâmetro deve ser um número');
    });
  });
});

module.exports = (numero) => {
  if (typeof numero !== 'number') {
    return 'o parâmetro deve ser um número';
  }

  if (numero > 0) {
    return 'positivo';
  }

  if (numero < 0) {
    return 'negativo';
  }

  return 'neutro';
};
