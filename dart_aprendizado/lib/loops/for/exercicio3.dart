// Escreva um programa que retorne o fatorial de um numero n utilizando o loop for

int factorial(int n) {
  int result = 1;
  for (int i = 1; i <= n; i++) {
    result *= i;
  }
  return result;
}

void main() {
  print(factorial(5)); 
}