// Implemente a função abaixo utilizando o loop do-while
// que percorra um intervalo de 1 até n e que mostre todos
// os números impares dentro deste intervalo

List<int> getOddNumbers(int n) {
  int count = 1;
  List<int> oddNumbers = [];
  
  do {
    if (count % 2 != 0) {
      oddNumbers.add(count);
    }
    count++;
  } while (count <= n);
  
  return oddNumbers;
}

void main() {
  print(getOddNumbers(10)); 
}