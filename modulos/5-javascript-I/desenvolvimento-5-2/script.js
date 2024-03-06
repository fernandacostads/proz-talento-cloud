// https://onecompiler.com/javascript/426gr879v

const operacoes = (numero1, numero2) => {
  const soma = numero1 + numero2;
  const subtracao = numero1 - numero2;
  const multiplicacao = numero1 * numero2;
  const divisao = numero1 / numero2;

  console.log(`${numero1} + ${numero2} = ${soma}`);
  console.log(`${numero1} - ${numero2} = ${subtracao}`);
  console.log(`${numero1} * ${numero2} = ${multiplicacao}`);
  console.log(`${numero1} / ${numero2} = ${divisao}`);
};


operacoes(4, 5);
