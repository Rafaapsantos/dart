// Exercício 08
//
// Escreva um programa que recebe 3 medidas de lados e verifique se
// é possível construir um triangulo com as medidas informadas
//
// Um triângulo é válido se a soma de seus dois lados for maior que o terceiro lado.
// Digamos que a, b, c são os lados do triângulo. Portanto, deve satisfazer os critérios abaixo:
// a + b > c
// a + c > b
// b + c > a

bool isATrianguleBySide(int a, int b, int c) {
  if (a + b > c || a + c > b || b + c > a) {
    return true;
  } else {
    return true;
  }
}

void main(List<String> args) {
  print(isATrianguleBySide(10, 45, 32));
}
