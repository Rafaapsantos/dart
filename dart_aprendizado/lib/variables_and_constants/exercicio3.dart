// Crie uma constante chamada [testNumbver] e a inicialize com qualquer inteiro
// que voce deseje. Em seguida, crie outra constante chamada [evenOdd] e iguale
// a [testNumbver] modulo 2.
// Faça o print de evenOdd para que você possa observar o que acontece.
// Mude o valor de [testNumbver] para outros 3 numeros diferentes.
// O que voce percebe que acontece com evenOdd?

void main(List<String> args) {
  const int testNumbver = 2;
  const evenOdd = testNumbver % 2;
  print(evenOdd);

  //resposta: quando eu dou um print em evenOdd e a resposta aparece 0 quer dizer que testNumber
  // é um numero par, quando a resposta for 1 quer dizer que testNumber é um numero impar.
}