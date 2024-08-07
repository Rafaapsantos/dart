// Escreva uma função que aceite uma lista de nomes e retorne outra função que,
// por sua vez, filtre os nomes que começam com uma letra específica.

Function filtrarPorLetraInicial(List<String> nomes) {
  return (String letra) {
    return nomes.where((element) => element.startsWith(letra)).toList();
  };
}
void main() {
  List<String> listaNomes = ['Bruna', 'Beatriz', 'Carlos', 'Daniel', 'Eduardo'];
  Function filtrarComB = filtrarPorLetraInicial(listaNomes);
  List<String> nomesComB = filtrarComB('B');
  print('Nomes que começam com a letra B: $nomesComB');
}