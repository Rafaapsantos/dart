// Exercício 06
//
// Crie uma função para verificar se um número é par ou ímpar.

String checkParity(int number) {
  if (number % 2 == 0) {
    return "Par";
  } else {
    return "Impar";
  }
}

void main(List<String> args) {
  print(checkParity(3));
}
