// Objetivo:
// Neste exercício, você criará uma stream multicast usando o construtor Stream.multi.
// Essa técnica permite que vários listeners se inscrevam na mesma stream e recebam os eventos emitidos por ela.
//
// Problema real:
// Imagine um sistema de notícias que transmite notícias em tempo real para vários usuários.
// O sistema precisa garantir que todos os usuários recebam as mesmas notícias na mesma ordem.
//
// Solução:
// Utilizando o construtor Stream.multi, você pode criar uma stream multicast que transmite as notícias para todos os listeners inscritos.
// Isso garante que todos os usuários recebam as mesmas notícias na mesma ordem, sem precisar enviar as notícias para cada usuário individualmente.
//
// Instruções:
// 1. Crie uma função `generateNews` que gera uma sequência de noticias, utilizando um loop de sua preferência, que retorne uma String com o texto 'Noticia $index', onde
// o index é o numero do índice em que o loop se encontra no momento.
// 2. Crie uma stream multicast que emite as notícias, usando o construtor Stream.Multi();
// 3. Crie dois listeners para a stream que exibem as notícias, onde o listener faz o print do conteúdo da stream.
// Nesse passo, faça algo como o exemplo abaixo, para que você possa identificar qual será cada listener:
// ``` noticiasStream.listen((noticia) {
//   print('Listener 1: $noticia');
// });

// noticiasStream.listen((noticia) {
//   print('Listener 2: $noticia');
// }); ````
// 4. Execute o código e observe como as notícias são emitidas na stream e recebidas pelos dois listeners na mesma ordem.
//
// Conclusão:
// Ao usar o construtor Stream.multi, você pode criar uma stream multicast que transmite eventos para vários listeners.
// Isso é útil para distribuir dados em tempo real para vários usuários ou sistemas.

void main(List<String> args) {
  Stream<String> newsStream = generateNews().asBroadcastStream();

  newsStream.listen((news) {
    print('Listener 1: $news');
  });
  newsStream.listen((news) {
    print('Listener 2: $news');
  });
}

Stream<String> generateNews() async* {
  for (var i = 0; i < 10; i++) {
    yield 'Noticia $i';
    Future.delayed(Duration(seconds: 4));
  }
}
