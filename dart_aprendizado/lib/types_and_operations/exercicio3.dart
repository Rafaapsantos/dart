// Exercício 3
//
// Crie um programa que peça ao usuário para digitar seu nome e sua idade.
// Imprima uma mensagem que diga quantos anos eles têm para completar 100 anos.

void main(List<String> args) {
  final String name = 'Rafaela Aparecida Dos Santos';
  final int age = 19;
  print('Digite seu nome e sua idade');
  print(name);
  print('$age anos');
  int cemAnos = 100 - age;
  print('voce vai completar 100 anos daqui $cemAnos anos!');
}
