//Objetivo:
//Criar uma classe genérica Box que pode armazenar qualquer tipo de dado.

//Problema real:
//Você precisa de uma estrutura de dados que possa armazenar diferentes tipos de
//objetos.

//Solução:
//Use uma classe genérica Box para armazenar e recuperar objetos de qualquer tipo.

//Instruções:

//Crie uma classe genérica Box com um atributo que pode armazenar qualquer tipo de
//objeto.Adicione métodos para definir e obter o valor do atributo.

final class Box<T> {
  final List<T> itens = [];

  void definir(T item) {
    itens.add(item);
  }

  void obter() {
    print(itens);
  }
}

void main() {
  var listaInteiros = Box<int>();
  var listaStrings = Box<String>();

  listaInteiros.definir(1);
  listaInteiros.definir(2);
  listaInteiros.definir(3);

  listaStrings.definir("Hello");
  listaStrings.definir("World");

  listaInteiros.obter();
  listaStrings.obter();
}
