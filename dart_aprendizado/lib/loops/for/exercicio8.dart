// Achar o maior, menor, média e organizar números ou sequências são os algoritmos mais
// importantes e estudados em Computação. Em Dart não poderia ser diferente.
// Escreva um função que recebe uma lista de números inteiros, retorne qual número
// é o maior. Utilize o loop for.

int maxNumber(List<int> numbers) {
  int max = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > max) {
      max = numbers[i];
    }
  }
  return max;
}

void main() {
  print(maxNumber([7, 2, 9, 4, 1, 6, 3])); 
}