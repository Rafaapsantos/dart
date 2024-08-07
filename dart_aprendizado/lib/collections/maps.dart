// Maps
//
// 1. Crie uma variável [emptyMapOne] que recebe um map vazio utilizando chaves.
// Depois crie outra variável [emptyMapTwo] que recebe uma map vazio utilizando o
// construtor Map(). Ambos terão as chaves do tipo String e os valores do tipo int.
//
// 2. Crie uma variável [fromEntriesMap] que recebe um map criado a partir do
// construtor Map.fromEntries() que é construído a partir as entries de um mapa
// com o tipo String / dynamic onde você deve armazenar os valores do seu nome,
// sua idade, e cidade natal.
//
// 3. Crie uma variável [fromMap] que receba o mesmo mapa passado por parâmetro no
// exercício anterior utilizando o construtor Map.from().
//
// 4. Crie uma variável [fromIterableMap] que recebe um map criado a partir do
// construtor Map.fromIterable() que recebe um iterable sendo uma lista de inteiros:
// final numbers = <int>[1, 2, 3] e que possui a key como o elemento da lista mas
// transformado em String, e que possui o valor como o elemento multiplicado por
// ele mesmo.
//
// 4.1 Crie uma variável [fromIterablesMap] que recebe um map criado a partir do
// construtor Map.fromIterables() que recebe as seguintes listas como key e
// value respectivamente:
// final rings = <bool>[false, false, true, true];
//  final planets = <String>{'Earth', 'Mars', 'Jupiter', 'Saturn'};
//
// 5. Crie uma variável [unmodifiableMap] e crie uma map não modificável
// utilizando o construtor Map.unmodifiable() que contem o map do exercício 2.
//
// 6. Crie uma variável [identityMap] que recebe um map criado a partir do construtor
// Map.identity()
//
// 7. Crie uma variável [ofMap] que recebe um map criado a partir do construtor Map.of()
// e que é construído a partir do map do exercício 2.
//
// 8. Utilizando a variável [unmodifiableMap] print:
// a. se o map está vazio
// b. se o map não está vazio
// c. as entries do map
// d. as keys do map
// e. o numero de elementos do map
// f. os valores do map
//
// 7. Utilizando a variável [fromEntriesMap]
// a. adicione o map criado na variável [fromMap].
// b. adicione entries da sua preferencia nesse map.
// c. verifique se o map contem uma key de sua preferencia
// d. verifique se o map contem um valor de sua preferencia
// e. usando o método forEah, itere sobre a map e print cada chave e valor
//
// 8. Utilizando a variável [fromIterableMap]
// a. remova o par chave e valor quando o valor for maior que 10
// b. remova um par chave e valor da sua preferencia
// c. atualize o valor de uma chave
// d. atualize o valor de todas as chaves
//
// 9. Utilizando a variável [ofMap]
// a. embaralhe a map utilizando o método shuffle
// b. retorne um único elemento que satisfaça a condição de ser maior que 18
// c. retorne um iterable que pula os 3 primeiros elementos
// d. faça a ordenação dessa map de forma crescente
// e. crie uma submap que começa no index 2 e termina no 5
//
void main(List<String> args) {
  //1
  Map<String, int> emptyMapOne = {};
  Map<String, int> emptyMapTwo = Map();
  print(emptyMapOne);
  print(emptyMapTwo);

  //2
  Map<String, dynamic> fromEntriesMap = {'name': 'gabriela', 'age': 17, 'cidade natal': 'franca'};
  Map.fromEntries(fromEntriesMap.entries);
  print(fromEntriesMap);

  //3
  final fromMap = Map<String, dynamic>.from(fromEntriesMap);
  print(fromMap);
  print('------------------');

  //4
  final numbers = <int>[1, 2, 3];
  // ignore: prefer_for_elements_to_map_fromiterable
  final fromIterable = Map.fromIterable(
    numbers,
    key: (element) => element.toString(),
    value: (element) => element * element,
  );

  print(fromIterable);

  //4.1
  final planets = <String>{'Earth', 'Mars', 'Jupiter', 'Saturn'};
  final rings = <bool>[false, false, true, true];
  final fromIterablesMap = Map.fromIterables(planets, rings);
  print(fromIterablesMap);

  //5
  final Map<String, dynamic> me = {'name': 'gabriela', 'age': 17, 'cidade natal': 'franca'};
  final unmodifiableMap = Map.unmodifiable(me);
  print(unmodifiableMap);

  //6
  final Map identityMap = Map<String, String>.identity();
  print(identityMap);

  //7
  final ofMap = Map.of(fromEntriesMap);
  print(ofMap);

  //8
  print(unmodifiableMap.isEmpty);
  print(unmodifiableMap.isNotEmpty);
  print(unmodifiableMap.entries);
  print(unmodifiableMap.keys);
  print(unmodifiableMap.length);
  print(unmodifiableMap.values);

  //9
  final Map<String, dynamic> aboutMe = {'school': 'usp', 'number': 991663994, 'height': 1.50};
  aboutMe.addAll(fromEntriesMap);
  print(aboutMe);

  //9.1
  aboutMe.addEntries(fromEntriesMap.entries);
  print(aboutMe);

  //9.2
  final Map<String, dynamic> test3 = {'nomedog': 'bob'};
  print(test3.runtimeType);
  final a = test3.cast<String, String>();
  print(a);
  print(a.runtimeType);

  //9.3
  print(aboutMe.containsKey('Weight'));

  //9.4
  print(aboutMe.containsValue(17));

  //9.5
  aboutMe.forEach((key, value) {});
  print(aboutMe);

  //9.6
  print(aboutMe.putIfAbsent('name', () => null));

  //9.7
  aboutMe.remove('height');
  print(aboutMe);

  //9.8
  final Map<String, int> test = {'zero': 0, 'um': 1, 'dois': 2, 'tres': 3};
  test.removeWhere((key, value) => key == 'um');
  print(test);

  //9.9
  print(aboutMe.toString());

  //9.10
  aboutMe.update('age', (value) => 18);
  print(aboutMe);

  //9.11
  aboutMe.updateAll((key, value) => 'nada encontrado');
  print(aboutMe);

  //9.12
  aboutMe.clear();
  print(aboutMe);

  //9.13
  final test2 = test.map((key, value) => MapEntry(value * 2, value * 2));
  print(test2);
}