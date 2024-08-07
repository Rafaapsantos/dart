// Objetivo:
// Neste exercício, você criará uma stream a partir de um Future usando o construtor Stream.fromFuture.
// Essa técnica permite converter um valor assíncrono em uma stream que emite um único evento.
//
// Problema real:
// Imagine um sistema que precisa carregar dados de um arquivo JSON.
// O sistema precisa emitir esses dados em uma stream para que possam ser processados de forma assíncrona.

// Solução:
// Utilizando o construtor Stream.fromFuture, você pode criar uma stream a partir de um Future que carrega os dados do arquivo JSON.
// Isso permite que você processe os dados assim que eles forem carregados, sem precisar esperar que o Future seja concluído.

// Instruções:
// 1. Crie uma função `loadData` que retorna um Future que carrega os dados do arquivo JSON (representado na variável `json`) com delay de 10 segundos.
// 2. Crie uma stream a partir do Future que a função `loadData` retorna.
// 3. Crie um listener para a stream que processa os dados os mostre na tela quando eles forem carregados.
// 4. Execute o código e observe como os dados do arquivo JSON são emitidos na stream e processados assim que são carregados.
//
// Conclusão:
// Ao usar o construtor Stream.fromFuture, você pode converter um valor assíncrono em uma stream que emite um único evento.
// Isso é útil para carregar dados de forma assíncrona e processá-los assim que forem carregados.
import 'dart:convert';

void main() {
  final Stream<String> stream = Stream.fromFuture(loadData());
  stream.listen((data) {
    final jsonData = jsonDecode(data);
    print(jsonData);
  });
}

Future<String> loadData() async {
  await Future.delayed(Duration(seconds: 4));
  final json = '''
  {
    "nome": "João",
    "idade": 20,
    "cidade": "São Paulo"
  }
  ''';
  return json;
  // poderia fazer assim:
  //Future<String> loadData() async {
    //await Future.delayed(Duration(seconds: 4));
    //return'''
    //"nome": "João",
    // "idade": 20,
    //"cidade": "São Paulo"
    //''';
  //}
}
