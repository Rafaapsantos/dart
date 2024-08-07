// Exercício Set
//
// 1. Crie um Set vazio chamado [emptySet] usando o construtor [Set]
//
// 2. Crie um set de inteiros que contenha os elementos [1,3,4,5,7,8,9,15,23,67,89,90] chamado
// [fromSet] usando o construtor [Set.From].
//
// 3. Crie um set chamado [identitySet] usando o construtor [Set.identity]
//
// 4. Crie um set chamado [unmodifiableSet] ue contenha os elementos [11,335,46,57,73,85,98,15,23,67,89,90]
// usando o construtor [Set.unmodifiable]
//
// 5. Usando o Set [fromSet]:
// a. verifique se o set está vazio
// b. verifique se o set nào está vazio
// c. retorne um [iterator] deste set
// d. retorne o ultimo elemento deste set
// e. retorne o tamanho deste set
// f. Retorne o primeiro elemento deste set
// g. verifique se o set contem o elemento 5
// h. faça a diferença entre esse set e o [unmodifiableSet]
// i. qual o elemento no index 7
// j. expanda os elementos desse set duplicando cada elemento
// k. Retorne o primeiro elemento que seja maior que 16 e menor que 30
// l. Some todos os elementos do set
// m. Concatene este set com os valores [100,200]
// n. itere sobre o set e print cada elemento
// o. remova o valor 200 do set
// p. remova os elementos menores que 5
// q. retorna os elementos que estão presentes no [fromSet] e em [8, 9, 15, 23, 67, 89, 90]
// r. usando o retainWhere remova os elementos menores que 9
// s. limpe o set usando o método clear
//
// 6. Usando a variável [emptySet]:
// a. adicione o valor 1
// b. verifique se este set possui apenas um elemento e retorne este elemento
// c. adicione os valores 2,3,4,5,6,7,8,9,10
// d. verifique se algum dos elementos é maior que 8
// e. faça uma intersecção entre este set e {4,5,6,7,8,98,45,90,43,54,78,867,24,40,71}
// f. Adicione os seguintes elementos no set [4,5,6,7,8,98,45,90,43,54,78,867,24,40,71]
// g. retorne o ultimo elemento que seja menor que 100
// h. usando o lookup verifique se o objeto 91 esta no set
// i. Multiplique por dois e subtraia um de cada elemento do set,
// transformando-o em um novo set com esses novos valores
// j. Calcule a soma dos valores do set usando o método reduce
// k. retorne o único elemento que seja maior que 18 e menor que 30
// l. retorne um set que desconsidera os 3 primeiros elementos
// m. retorne um set que desconsidera todos os elementos enquanto cada element é impar.
// n. retorne um set que contenha os primeiros 7 elementos
// o. retorne um set que contenha os primeiros elementos enquanto cada element é impar.
// p. faça a união entre o emptySet e {77, 29,30,13}
// q. retorne todos os elementos que são divisíveis por 5.

void main() {
  // 1
  final emptySet = Set<int>();
  // 2
  final fromSet = Set<int>.from([1, 3, 4, 5, 7, 8, 9, 15, 23, 67, 89, 90]);
  // 3
  final identitySet = Set.identity();
  print(identitySet);
  // 4
  final unmodifiableSet = Set.unmodifiable([11, 335, 46, 57, 73, 85, 98, 15, 23, 67, 89, 90]);

  // 5
  // a
  print(fromSet.isEmpty);
  // b
  print(fromSet.isNotEmpty);
  // c
  print(fromSet.iterator);
  // d
  print(fromSet.last);
  // e
  print(fromSet.length);
  // f
  print(fromSet.first);
  // g
  print(fromSet.contains(5));
  // h
  print(fromSet.difference(unmodifiableSet));
  // i
  print(fromSet.elementAt(7));
  // j
  print(fromSet);
  Iterable<int> duplicate(int n) {
    return [n * 2];
  }

  print(fromSet.expand<int>(duplicate));
  // k
  print(fromSet.firstWhere((element) => element > 16 && element < 30));
  // l
  print(fromSet.fold<int>(0, (previousValue, element) => previousValue + element));

  // m
  print(fromSet.followedBy([100, 200]));

  // n
  fromSet.forEach((element) => print(element));

  // o
  fromSet.remove(200);
  print(fromSet);

  // p
  fromSet.removeWhere((element) => element < 5);
  print(fromSet);

  // q
  fromSet.retainAll([8, 9, 15, 23, 67, 89, 90]);
  print(fromSet);

  // r
  fromSet.retainWhere((element) => element < 9);
  print(fromSet);
  // s
  fromSet.clear();

  // 6
  // a
  emptySet.add(1);
  // b
  print(emptySet.single);
  // c
  emptySet.addAll([2, 3, 4, 5, 6, 7, 8, 9, 10]);
  // d
  print(emptySet.any((element) => element > 8));
  // e
  print(emptySet.intersection({4, 5, 6, 7, 8, 98, 45, 90, 43, 54, 78, 867, 24, 40, 71}));
  // f
  emptySet.addAll({4, 5, 6, 7, 8, 98, 45, 90, 43, 54, 78, 867, 24, 40, 71});
  // g
  emptySet.lastWhere((element) => element < 100);
  // h
  print(emptySet.lookup(91));
  // i
  print(emptySet);
  print(emptySet.map((e) => (e * 2) - 1));
  // j
  print(emptySet.reduce((value, element) => value + element));
  // k
  print(emptySet);
  print(emptySet.singleWhere((element) => element > 18 && element < 30));
  // l
  print(emptySet.skip(3));
  // m
  print(emptySet.skipWhile((value) => value.isOdd));
  // n
  print(emptySet.take(3));
  // o
  print(emptySet.takeWhile((value) => value.isOdd));
  // p
  print(emptySet.union({77, 29, 30, 13}));
  // q
  print(emptySet.where((element) => element % 5 == 0));
}
