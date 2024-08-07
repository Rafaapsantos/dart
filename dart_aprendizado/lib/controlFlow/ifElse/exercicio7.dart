// Exercício 07
//
// Escreva um programa que recebe 3 ângulos e verifica se podemos formar um triangulo
//
// Dica: A propriedade do ângulo do triângulo diz que a soma de todos os três ângulos deve ser igual a 180.
//

bool isATrianguleByAngle(int a, int b, int c) {
  if (a + b + c == 180) {
    return true;
  } else {
    return false;
  }
}

void main(List<String> args) {
  print(isATrianguleByAngle(50, 80, 55));
}
