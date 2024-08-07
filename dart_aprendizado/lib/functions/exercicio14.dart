// Escreva uma função processarLista que receba uma lista de números
// inteiros e uma função de processamento como parâmetros.
// A função de processamento deve ser aplicada a cada elemento da lista.
// A função processarLista deve retornar uma nova lista com os resultados
// o processamento.

List<int> processarLista(List<int> listaNumeros, int Function(int) funcaoProcessamento) {
  List<int> resultados = [];

  for (int numero in listaNumeros) {
    resultados.add(funcaoProcessamento(numero));
  }

  return resultados;
}

void main() {
  List<int> numeros = [1, 2, 3, 4, 5];
  int dobrar(int numero) {
    return numero * 2;
  }
  List<int> resultados = processarLista(numeros, dobrar);
  print('Lista original: $numeros');
  print('Lista processada (dobrando cada número): $resultados');
}