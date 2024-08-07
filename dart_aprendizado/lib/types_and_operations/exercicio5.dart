// Exercicio 5
//
// O que há de errado com o código a seguir?

void main(List<String> args) {
  var title = 'Dart';
  title += ' é muito legal';
  print(title);
}
//resp: O código ta tentando modificar uma varíavel const que não pode ser alterado 
//após a inicialização. Para resolver o problema troquei o const pelo var.
