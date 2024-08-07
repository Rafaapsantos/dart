// Achar o maior, menor, média e organizar números ou sequências são os algoritmos mais
// importantes e estudados em Computação. Em Dart não poderia ser diferente.
// Escreva um função que recebe uma lista de números inteiros, retorne qual número
// é o maior. Utilize o loop while.

int maxNumber(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError('A lista não pode estar vazia.');
  }

  int max = numbers[0];
  int count = 1;
  int totalOfNumbers = numbers.length;

  while (count < totalOfNumbers) {
    if (numbers[count] > max) {
      max = numbers[count];
    }
    count++;
  }

  return max;
}

void main() {
  print(maxNumber([7, 2, 9, 4, 1, 6, 3]));
}