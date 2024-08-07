// Implemente a função abaixo utilizando o loop while
// que percorra um intervalo de 1 até n e que retorne todos
// os números pares dentro deste intervalo

List<int> getEvenNumbers(int n) {
  int count = 1;
  List<int> evenNumbers = [];

  while (count <= n) {
    if (count % 2 == 0) {
      evenNumbers.add(count);
    }
    count++;
  }

  return evenNumbers;
}

void main() {
  print(getEvenNumbers(10));
}