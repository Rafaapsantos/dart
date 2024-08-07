// Exercicio 1 - Variaveis
//
// 1.1 Crie uma constante chamada [firstName] e a inicialize com o seu primeiro nome/
// Faça o mesmo para uma segunda variavel [lastName] e inicialize com o seu sobrenome.
// Crie uma constante chamada [fullName] e forme seu nome completo, separado por espaçoes
// utilizando as constantes firstName e lastName.
//
// 1.2 Crie outra variável constante que é inicializada com o texto: 'Olá, meu nome é [fullName]'
//
// 1.3 Crie duas variaveis chamadas [age1] e [age2] que recebem uma idade, respectivamente.
// Depois crie outra variavel com o nome averageAge que recebe o calculo da média das duas idades.
//Imprima o resultado da média das idades.

//1.1
void main(List<String> args) {
  //1.1
  const String firstName = "Rafaela Aparecida Dos";
  const String lastName = "Santos";
  const String fullName = "$firstName $lastName";
  print(fullName);

  //1.2
  const String text = "Olá, meu nome é $fullName";
  print(text);

  //1.3
  const int age1 = 19;
  const int age2 = 25;
  const double averageAge = (age1 + age2) / 2;
  print(averageAge);
}
