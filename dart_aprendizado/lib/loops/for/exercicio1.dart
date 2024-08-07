// Crie uma função que retorne a soma de uma lista de inteiros utilizando o loop for

int sumNumbers(List<int> numbers) {
  int sum = 0;
  for (var i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }
  return sum;
}

void main(List<String> args) {
  print(sumNumbers([1, 2, 3, 4, 5, 6, 7]));
}
