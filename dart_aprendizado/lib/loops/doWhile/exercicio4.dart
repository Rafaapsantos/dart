// Achar o maior, menor, média e organizar números ou sequências são os algoritmos mais
// importantes e estudados em Computação. Em Dart não poderia ser diferente.
// Escreva um função que recebe uma lista de números inteiros, retorne qual número
// é o maior. Utilize o loop do-while.

int maxNumber(List<int> numbers) {
  int max = numbers[0];
  int count = 1;
  int totalOfNumbers = numbers.length;

  do {
    if (numbers[count] > max) {
      max = numbers[count];
    }
    count++;
  } while (count < totalOfNumbers);

  return max;
}

void main() {
  print(maxNumber([1, 5, 10, 2, 8, 7, 9, 40]));
}
