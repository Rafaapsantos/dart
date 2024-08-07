// Escreva uma função que determine se um número é par ou ímpar.
// A função deve ter um parâmetro, representando o número,
// e deve retornar um enum com nome de Parity que retorna
// "odd" se o número for impar e "even" se for par.

Parity verificarParImpar(int number) {
  if (number % 2 == 0) {
    return Parity.even;
  } else {
    return Parity.odd;
  }
}

enum Parity { odd, even }

void main(List<String> args) {
  print(verificarParImpar(10));
}
