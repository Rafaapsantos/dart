// Implemente a função abaixo utilizando o loop for
// que percorra um intervalo de 1 até n e que retorne todos
// os números impares dentro deste intervalo

List<int> getOddNumbers(int n) {
  List<int> oddNumbers = [];
  for (int i = 1; i <= n; i++) {
    if (i % 2 != 0) {
      oddNumbers.add(i);
    }
  }
  return oddNumbers;
}

void main() {
  print(getOddNumbers(10)); 
}