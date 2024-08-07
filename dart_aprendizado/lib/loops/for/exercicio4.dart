// Exercício 04
//
// Crie uma função que retorne uma base b elevada a um numero n: bˆn

int mathPow(int b, int n) {
  int result = 1;
  for (int i = 0; i < n; i++) {
    result *= b;
  }
  return result;
}

void main() {
  print(mathPow(2, 3));
}
