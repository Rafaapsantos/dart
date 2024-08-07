// Escreva uma função aplicarFiltro que receba uma lista de nomes e uma função de
// filtro como parâmetros. A função de filtro deve retornar true ou false e deve
// ser aplicada a cada elemento da lista. A função aplicarFiltro deve retornar
// uma nova lista com apenas os elementos que passaram no filtro.

List<String> aplicarFiltro(List<String> listaNomes, bool Function(String) funcaoFiltro) {
  List<String> nomesFiltrados = [];

  for (String nome in listaNomes) {
    if (funcaoFiltro(nome)) {
      nomesFiltrados.add(nome);
    }
  }

  return nomesFiltrados;
}

void main() {
  List<String> nomes = ['Ana', 'Beatriz', 'Carlos', 'Daniel', 'Eduardo'];
  bool comecaComB(String nome) {
    return nome.startsWith('B');
  }
  List<String> nomesFiltrados = aplicarFiltro(nomes, comecaComB);
  print('Lista original: $nomes');
  print('Nomes filtrados (começam com a letra "B"): $nomesFiltrados');
}