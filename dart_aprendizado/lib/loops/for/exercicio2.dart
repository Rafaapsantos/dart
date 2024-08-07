// Crie uma função que retorne uma lista de todos os valores da tabuada
// de um determinado numero n utilizando o loop for

List<int> multiplicationTable(int n) {
  List<int> tabuada = [];
  for (var i = 0; i <=10; i++) {
    tabuada.add(n * i);
  }
  return tabuada;
}
void main() {
  print(multiplicationTable(5));
}
