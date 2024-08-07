// Listas
//
// 1. Crie uma variável [emptyListOne] que recebe uma lista vazia utilizando colchetes.
// Depois crie outra variável [emptyListTwo] que recebe uma lista vazia utilizando o
// construtor de lista vazia.
//
// 2. Crie variável [filledList] que recebe uma lista que possui 10 elementos,
// onde todos os elementos são iguais a palavra "Dart". Utilize o construtor List.filled()
//
// 3. Crie uma variável [fromList] e crie uma lista de 5 elementos contendo números de 0 a 5 sem repeti-los
// utilizando o construtor List.from(). Faça o mesmo, com números de 6 a 10, utilizando
// o construtor List.of() em uma variável [ofList]. Ambas com o parâmetro [growable] igual a true.
//
// 4. Crie uma variável [generateList] que recebe uma lista de inteiros de comprimento
// 10 utilizando o construtor List.generate(). Declare o parâmetro [generator] de forma
// que cada elemento dessa lista seja o index da lista multiplicado por dois.
// O parâmetro [growable] deve ser igual a true.
//
// 5. Crie uma variável [unmodifiableList] e crie uma lista de inteiros  não modificável
// utilizando o construtor List.unmodifiable() contendo 10 elementos inteiros de 0 a 10 sem repeti-los.
//
// 6. Utilizando a variável [unmodifiableList] print:
// a. se a lista está vazia
// b. se a lista não está vazia
// c. o primeiro elemento
// d. o ultimo elemento
// e. o numero de elementos
// f. o inverso dessa lista
//
// 7.  Utilizando a variável [generateList]
// a. adicione o numero 420 nessa lista.
// b. adicione uma segunda lista de inteiros [133, 42] nessa lista.
// c. Verifique se algum elemento dessa lista é maior ou igual a 15.
// d. retorne um mapa não modificável a partir dessa lista.
// e. verifique se a lista contem o elemento 42
// f. substitua os elementos da lista que estão entre as posições 0 e 2 pelo elemento 1.
// g. retorne o primeiro elemento que seja maior que 20
// h. some todos os valores da lista
// i. usando o método forEah, itere sobre a lista e print cada elemento
// j. utilizando o método followedBy() concatene a lista [33, 99]
// k. utilizando o método getRange() mostre os elementos que estão entre as posições 0 e 5
// l. Qual o índice do elemento 42 na lista?
// m. retorne o primeiro índice no qual o elemento é maior que 50 e menor que 100
// n. insira na posição 1 o elemento 12
// o. insira na posição 4 os elementos [55, 69, 29]
// p. Remova todos os itens da lista
//
// 8. Utilizando a variável [fromList]
// a. retorne o ultimo index da lista onde o elemento seja maior que 5
// b. retorne o ultimo elemento que seja menor que 15
// c. utilizando o método map, transforme os elementos dessa lista multiplicando cada
// um por dois.
// d. usando o método reduce, some todos os elementos
// e. remova um elemento de sua escolha da lista
// f. remova o elemento na posição 0 desta lista
// g. remova os elementos que são maiores ou iguais a 20
// h. utilizando o método replaceRange() substitua os elementos no intervalo
// de 0 a 2 pelo elemento 7
//
// 9. Utilizando a variável [ofList]
// a. embaralhe a lista utilizando o método shuffle
// b. retorne um único elemento que satisfaça a condição de ser maior que 18
// c. retorne um iterable que pula os 3 primeiros elementos
// d. faça a ordenação dessa lista de forma crescente
// e. crie uma sublista que começa no index 2 e termina no 5
//

// ignore_for_file: unused_local_variable

void main(List<String> args) {
  //1
  final List<dynamic> emptyListOne = [];
  final List<dynamic> emptyListTwo = List.empty();

  //2
  final List<String> filledList = List<String>.filled(10, 'Gabriela');
  print(filledList);

  //3
  List<int> numbers = [1, 17, 69, 102, 4];
  final fromList = List<int>.from(numbers);
  print(fromList);
  List<int> numbers1 = [5, 18, 32, 179, 88];

  final ofList = List<int>.of(numbers1);
  print(ofList);

  //4
  final generateList = List<int>.generate(10, (x) => x * 2, growable: true);
  print(generateList);

  //5
  final unmodifiableList = List.unmodifiable([3, 6, 9, 12, 15, 18, 21, 24, 27, 30]);
  print(unmodifiableList);

  //6
  print(unmodifiableList.isEmpty);
  print(unmodifiableList.isNotEmpty);
  print(unmodifiableList.first);
  print(unmodifiableList.last);
  print(unmodifiableList.length);
  print(unmodifiableList.reversed);

  //7
  //a
  generateList.add(420);
  print(generateList);
  //b
  List<int> number = [133, 42];
  generateList.addAll(number);
  print(generateList);
  //c
  print(generateList.any((element) => element >= 15));
  //d
  print(generateList.asMap());
  //e
  print(generateList.contains(42));
  //f
  generateList.fillRange(0, 2, 1);
  print(generateList);
  //g
  print(generateList.firstWhere((element) => element > 20));
  //h
  print(generateList.fold<double>(0, (previousValue, element) => previousValue + element));
  //i
  generateList.forEach(print);
  //j
  print(generateList.followedBy([33, 99]));
  //k
  print(generateList.getRange(0, 5));
  //l
  print(generateList.indexOf(42));
  //m
  print(generateList.indexWhere((element) => element > 50 && element < 100));
  //n
  generateList.insert(1, 12);
  print(generateList);
  //o
  generateList.insertAll(4, [55, 69, 29]);
  print(generateList);
  //p
  generateList.clear();
  print(generateList);

  //8
  //a
  print(fromList.lastIndexWhere((x) => x > 5));
  //b
  print(fromList.lastWhere((x) => x < 15));
  //c
  print(fromList.map((x) => x * 2));
  //d
  print(fromList.reduce((x, y) => x + y));
  //e
  print(fromList.remove(1));
  //f
  print(fromList.removeAt(0));
  //g
  fromList.removeWhere((element) => element >= 20);
  print(fromList);
  //h
  print(fromList);
  fromList.replaceRange(0, 0, [7]);
  print(fromList);
  print('----------------------');

  //9
  //a
  ofList.shuffle();
  print(ofList);
  //b<
  print(ofList.singleWhere((element) => element < 18));
  //c
  print(ofList.skip(3));
  //d
  ofList.sort();
  print(ofList);
  //e
  print(ofList.length);
  print(ofList.sublist(2, 5));
}