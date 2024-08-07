// Exercício 05
//
// Escreva um programa que verifica se um triangulo é equilátero, escaleno ou isósceles.
//
// Antes de escrever o programa, devemos conhecer as propriedades dos triângulos isósceles, equiláteros e escalenos.
// Triângulo isósceles: Em geometria, um triângulo isósceles é um triângulo que tem dois lados de igual comprimento.
// Triângulo equilátero : Em geometria, um triângulo equilátero é um triângulo em que todos os três lados são iguais.
// Triângulo escaleno : Um triângulo escaleno é um triângulo que tem três lados desiguais.
//

String trianguleType(int a, int b, int c) {
  if (a == b && b == c && a == c) {
    return "equilátero";
  } else if (a != b && b != c && a != c) {
    return "escaleno";
  } else {
    return "isósceles";
  }
}

void main(List<String> args) {
  print(trianguleType(4, 5, 4));
}
