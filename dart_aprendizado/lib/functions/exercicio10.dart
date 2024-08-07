// Escreva uma função que aceite uma lista de números e retorne
// outra função que, por sua vez, filtre os números pares da lista original.

Function filtrarPares(List<int> numeros) {
  return () {
    return numeros.where((element) => element % 2 == 0).toList();
  };
}

void main() {
  List<int> listaNumeros = [2, 6, 3, 4, 8, 2, 5, 6, 7, 9];
  Function filtrarParesFuncao = filtrarPares(listaNumeros);
  List<int> numerosPares = filtrarParesFuncao();  
  print('Números pares na lista: $numerosPares');
}
