// ignore_for_file: unused_local_variable

import 'dart:collection';

// Exercício Queue
//
// 1. Crie uma Queue vazio chamado [emptyQueue] usando o construtor [Queue]
//
// 2. Crie uma queue de inteiros que contenha os elementos [1,3,4,5,7,8,9,15,23,67,89,90] chamado
// [fromQueue] usando o construtor [Queue.From].
//
// 4. Crie uma queue chamada [ofQueue] ue contenha os elementos [11,335,46,57,73,85,98,15,23,67,89,90]
// usando o construtor [Queue.of]
//
// 5. Usando o Queue [fromQueue]:
// a. verifique se a queue está vazio
// b. verifique se a queue nào está vazio
// c. retorne um [iterator] desta queue
// d. retorne o ultimo elemento desta queue
// e. retorne o tamanho desta queue
// f. Retorne o primeiro elemento desta queue
// g. verifique se a queue contem o elemento 5
// i. qual o elemento no index 7
// j. expanda os elementos dessa queue duplicando cada elemento
// k. Retorne o primeiro elemento que seja maior que 16 e menor que 30
// l. Some todos os elementos da queue
// m. Concatene esta queue com os valores [100,200]
// n. itere sobre a queue e print cada elemento
// o. remova o valor 200 da queue
// p. remova os elementos menores que 5
// r. usando o retainWhere remova os elementos menores que 9
// s. limpe a queue usando o método clear
//
// 5. Usando a variável [emptyQueue]:
// a. adicione o valor 1
// b. verifique se esta queue possui apenas um elemento e retorne este elemento
// c. adicione os valores 2,3,4,5,6,7,8,9,10
// d. verifique se algum dos elementos é maior que 8
// f. Adicione os seguintes elementos na queue [4,5,6,7,8,98,45,90,43,54,78,867,24,40,71]
// g. retorne o ultimo elemento que seja menor que 100
// i. Multiplique por dois e subtraia um de cada elemento da queue,
// transformando-o em um novo set com esses novos valores
// j. Calcule a soma dos valores da queue usando o método reduce
// k. retorne o único elemento que seja maior que 18 e menor que 30
// l. retorne uma queue que desconsidera os 3 primeiros elementos
// m. retorne uma queue que desconsidera todos os elementos enquanto cada element é impar.
// n. retorne uma queue que contenha os primeiros 7 elementos
// o. retorne uma queue que contenha os primeiros elementos enquanto cada element é impar.
// q. retorne todos os elementos que são divisíveis por 5.

void main() {
  // 1
  final emptyQueue = Queue<int>();
  // 2
  final fromQueue = Queue<int>.from([1, 3, 4, 5, 7, 8, 9, 15, 23, 67, 89, 90]);

  // 3
  final ofQueue = Queue.of([11, 335, 46, 57, 73, 85, 98, 15, 23, 67, 89, 90]);

  // 4
  // a
  print(fromQueue.isEmpty);
  // b
  print(fromQueue.isNotEmpty);
  // c
  print(fromQueue.iterator);
  // d
  print(fromQueue.last);
  // e
  print(fromQueue.length);
  // f
  print(fromQueue.first);
  // g
  print(fromQueue.contains(5));
  // i
  print(fromQueue.elementAt(7));
  // j
  print(fromQueue);
  Iterable<int> duplicate(int n) {
    return [n * 2];
  }

  print(fromQueue.expand<int>(duplicate));
  // k
  print(fromQueue.firstWhere((element) => element > 16 && element < 30));
  // l
  print(fromQueue.fold<int>(0, (previousValue, element) => previousValue + element));

  // m
  print(fromQueue.followedBy([100, 200]));

  // n
  fromQueue.forEach((element) => print(element));

  // o
  fromQueue.remove(200);
  print(fromQueue);

  // p
  fromQueue.removeWhere((element) => element < 5);
  print(fromQueue);

  // r
  fromQueue.retainWhere((element) => element < 9);
  print(fromQueue);
  // s
  fromQueue.clear();

  // 6
  // a
  emptyQueue.add(1);
  // b
  print(emptyQueue.single);
  // c
  emptyQueue.addAll([2, 3, 4, 5, 6, 7, 8, 9, 10]);
  // d
  print(emptyQueue.any((element) => element > 8));
  // f
  emptyQueue.addAll({4, 5, 6, 7, 8, 98, 45, 90, 43, 54, 78, 867, 24, 40, 71});
  // g
  emptyQueue.lastWhere((element) => element < 100);
  // i
  print(emptyQueue);
  print(emptyQueue.map((e) => (e * 2) - 1));
  // j
  print(emptyQueue.reduce((value, element) => value + element));
  // k
  print(emptyQueue);
  print(emptyQueue.singleWhere((element) => element > 18 && element < 30));
  // l
  print(emptyQueue.skip(3));
  // m
  print(emptyQueue.skipWhile((value) => value.isOdd));
  // n
  print(emptyQueue.take(3));
  // o
  print(emptyQueue.takeWhile((value) => value.isOdd));
  // p
  print(emptyQueue.where((element) => element % 5 == 0));
}