// Escreva uma função que retorne uma lista de números primos até um determinado
// valor n. A função deve ter um parâmetro n e deve retornar uma lista de números
// primos até n.

List<int> obterNumerosPrimos(int n) {
  if (n <= 1) return [];
  List<int> primos = [];
  for (int i = 2; i <= n; i++) {
    var isPrime = true;
    for (int j = 2; j < i; j++) {
      if (i % j == 0) {
        isPrime = false;
        break;
      }
    }
    if (isPrime) {
      primos.add(i);
    }
  }
  return primos;
}

void main(List<String> args) {
  print(obterNumerosPrimos(10));
}
