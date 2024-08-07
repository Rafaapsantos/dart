// Implemente a função abaixo utilizando o loop for
// que percorra um intervalo de 1 até n e que retorne todos
// os números pares dentro deste intervalo

List<int> getEvenNumbers(int n) {
  List<int> evenNumbers = [];
  for (int i = 1; i <= n; i++) {
    if (i % 2 == 0) {
      evenNumbers.add(i);
    }
  }
  return evenNumbers;
}

void main() {
  print(getEvenNumbers(10)); 
}