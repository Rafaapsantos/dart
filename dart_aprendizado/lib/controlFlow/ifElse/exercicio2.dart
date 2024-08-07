// Exercício 02
//
// Crie uma função que retorne o valor máximo entre três números

int maxElementTriple(int x, int y, int z) {
  if (x > y && x > z) {
    return x;
  } else if (y > x && y > z) {
    return y;
  } else {
    return z;
  }
}

void main(List<String> args) {
  print(maxElementTriple(10, 50, 30));
}
