// Implemente a função abaixo utilizando o loop while
// que percorra um intervalo de 1 até n e que retorne todos
// os números impares dentro deste intervalo

List<int> getOddNumbers(int n) {
  int count = 1;
  List<int> oddNumbers = [];

  while (count <= n) {
    if (count % 2 != 0) {
      oddNumbers.add(count);
    }
    count++;
  }

  return oddNumbers;
}

void main() {
  print(getOddNumbers(10));
}