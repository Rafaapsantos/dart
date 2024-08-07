// Exercício 01
//
// Crie uma função que retorne o valor máximo entre dois números

int maxElement(int x, int y) {
  if (x > y) {
    return x;
  } else {
    return y;
  }
}

void main(List<String> args) {
  print(maxElement(10, 15));
}
