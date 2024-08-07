// Implemente a função abaixo utilizando o loop do-while
// que percorra um intervalo de 1 até n e que mostre todos
// os números pares dentro deste intervalo

List<int> getEvenNumbers(int n) {
  int count = 1;
  List<int> evenNumbers = [];
  
  do {
    if (count % 2==0) {
      evenNumbers.add(count);
    }
    count++;
  } while (count <= n);
  
  return evenNumbers;
}

void main() {
  print(getEvenNumbers(10)); 
}