// Int e double exercises
// 
// 6.1 Faça um programa que recebe um numéro inteiro. Diga se:
// - O numero é finito.
// - O numero é infinito.
// - O numero é positivo.
// - O numero é negativo.
// - O sinal do numero.
// - O tipo em tempo de execução do objeto.
// 
// 6.2 Dado o numero negativo -142. Qual método retorna o valor absoluto deste numero?
// 
// 6.3 Dado o numero 2.4, Qual método retorna o menor inteiro que sera maior que este numero?
// 
// 6.4 Dado um numero qualquer, qual método faz esse numero ser alterado para estar dentro de 
// um limite superior e inferior?
// 
// 6.5 Dado o numero 4.5, qual método retorna o maior inteiro não maior que esse número?
// 
// 6.6 Compare os seguintes numeros e printe o resultado
// a. 4.5 e 10
// b. 7 e 3
// c. 5 e 5
// 
// 6.7 Dado o numero 3,14. Qual método faz o arredondamento desse numero?
// 
// 6.8 Dado o numero 1.99999. Qual metodo retorna o inteiro obtido quando a parte fracionaria
// é descartada?
// 
// 6.9 Qual o máximo divisor comum entre 888 e 80
// 
// 6.10 Dado o numero 4321.12345678 Qual metodo faz a conversao desse numero para um double com 3 casas decimais?
// 
// 6.11 Represente o numero 10000000 na forma exponencial
// 
// 6.12 Dado o numero 1234567 represente-o como um numero com precisão 9.
// 
// 6.13 Seja a String '10', transforme-a em um inteiro
// 
// 6.14 Faça um programa que recebe um numéro double. Diga se:
// - O numero é finito.
// - O numero é infinito.
// - O numero é positivo.
// - O numero é negativo.
// - O sinal do numero.
// - O tipo em tempo de execução do objeto.
// 
// 6.15 Dado o numero negativo -0.00009. Qual método retorna o valor absoluto deste numero?
// 
// 6.16 Dado o numero 2.004, Qual método retorna o menor inteiro que sera maior que este numero?
// 
// 6.17 Dado o numero 2.005, Qual método retorna o menor inteiro do tipo double que sera maior que este numero?
// 
// 6.18 Dado o numero 4.5859, qual método retorna o maior inteiro não maior que esse número?
// 
// 6.19 Dado o numero 4.5859, qual método retorna o maior inteiro do tipo double não maior que esse número?
//
// 6.20 Compare os seguintes numeros e printe o resultado
// a. 4.5 e 10.8
// b. 7.9 e 3.3
// c. 5.0 e 5.0
// 
// 6.21 Dado o numero 3,14145. Qual método faz o arredondamento desse numero?
// 
// 6.22 Dado o numero 1.99999. Qual metodo retorna o inteiro obtido quando a parte fracionaria
// é descartada?
// 
// 6.23 Dado o numero 1.99999. Qual metodo retorna o double obtido quando a parte fracionaria
// é descartada?
// 
// 6.24 Seja a String '10.50', transforme-a em um double.
// 
// 6.25 Represente o numero 10000000.0001 na forma exponencial
// 
// 6.26 Dado o numero 1234567 represente-o como um numero com precisão 9.
// 
// 6.27 Seja a String '10', transforme-a em um inteiro

void main(List<String> args) {
  // 6.1
  final number = 10;
  print('O numero $number é finito? ${number.isFinite}');
  print('O numero $number é infinito? ${number.isInfinite}');
  print('O numero $number é positivo? ${number.isNaN}');
  print('O numero $number é negativo? ${number.isNegative}');
  print('O sinal do numero $number é  ${number.sign}');
  print('O tipo do objeto em tempo de execução $number é ${number.runtimeType}');

  // 6.2
  final number2 = -142.abs();
  print(number2);

  // 6.3
  final number3 = 2.4.ceil();
  print(number3);
  // 6.4
  final number4 = 5.75.clamp(6, 10);
  print(number4);
  // 6.5
  final number5 = 4.5.floor();
  print(number5);
  // 6.6
  // a. 4.5 e 10
  final number6 = 4.5.compareTo(10);
  print(number6);

  // b. 7 e 3
  final number7 = 7.compareTo(3);
  print(number7);

  // c. 5 e 5
  final number8 = 5.compareTo(5);
  print(number8);

  // 6.7
  final number9 = 3.14.round();
  print(number9);
  // 6.8
  final number10 = 1.99999.truncate();
  print(number10);
  // 6.9
  final number11 = 888.gcd(80);
  print(number11);
  // 6.10
  final number12 = 4321.1234567.toStringAsFixed(3);
  print(number12);
  // 6.11
  final number13 = 10000000.toStringAsExponential(1);
  print(number13);
  // 6.12
  final number14 = 1234567.toStringAsPrecision(9);
  print(number14);
  // 6.13
  final number15 = int.tryParse('10');
  print(number15);
  // 6.14
  final number16 = 10.000009;
  print('O numero $number16 é finito ${number16.isFinite}');
  print('O numero $number16 é infinito ${number16.isInfinite}');
  print('O numero $number16 é positivo ${number16.isNaN}');
  print('O numero $number16 é negativo ${number16.isNegative}');
  print('O sinal do numero $number16 é  ${number16.sign}');
  print('O tipo do objeto em tempo de execução $number16 é  ${number16.runtimeType}');

  // 6.15
  final number17 = -0.00009.abs();
  print(number17);

  // 6.16
  final number18 = 2.004.ceil();
  print(number18);
  // 6.17
  final number19 = 2.005.ceilToDouble();
  print(number19);
  // 6.18
  final number20 = 4.5859.floor();
  print(number20);
  // 6.19
  final number21 = 4.5859.floorToDouble();
  print(number21);
  // 6.20
  // a. 4.5 e 10
  final number22 = 4.5.compareTo(10.8);
  print(number22);

  // b. 7 e 3
  final number23 = 7.9.compareTo(3.3);
  print(number23);

  // c. 5 e 5
  final number24 = 5.0.compareTo(5.0);
  print(number24);

  // 6.21
  final number25 = 3.14145.round();
  print(number25);
  // 6.22
  final number26 = 1.99999.truncate();
  print(number26);
  // 6.23
  final number27 = 1.99999.truncateToDouble();
  print(number27);
  // 6.24
  final number28 = 4321.1234567.toStringAsFixed(3);
  print(number28);
  // 6.25
  final number29 = 10000000.0001.toStringAsExponential(1);
  print(number29);
  // 6.26
  final number30 = 1234567.toStringAsPrecision(9);
  print(number30);
  // 6.27
  final number31 = double.tryParse('10');
  print(number31);
}