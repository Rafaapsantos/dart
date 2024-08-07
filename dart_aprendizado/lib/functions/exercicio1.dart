// Escreva uma função que calcule a média de três números inteiros.
// A função deve ter três parâmetros, representando os três números,
// e deve retornar a média dos três números com duas casas decimais

double calculateAverage(int number1, int number2, int number3) {
  return double.parse(((number1 + number2 + number3) / 3).toStringAsFixed(2));
}

void main(List<String> args) {
  print(calculateAverage(10, 10, 10));
}
