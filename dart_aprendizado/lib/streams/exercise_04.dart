// Objetivo:
// Neste exercício, você criará uma stream que transforma eventos usando o construtor Stream.eventTransformed.
// Essa técnica permite modificar os eventos emitidos por uma stream antes de serem processados.
//
// Problema real:
// Imagine um sistema de chat que recebe mensagens de vários usuários.
// O sistema precisa transformar as mensagens em um formato adequado para serem exibidas na tela, como adicionar emojis ou formatar datas.
//
// Solução:
// Utilizando o construtor Stream.eventTransformed, você pode criar uma stream que intercepta os eventos emitidos por outra stream
// e os transforma antes de serem processados.
//
// Instruções:
// 1. Crie uma função `transformMessage` que transforma uma mensagem de texto em um formato adequado para exibição, i.e APENAS COM A PRIMEIRA LETRA DA MENSAGEM MAIÚSCULA, E
// AS OUTRAS DEVEM SER MINUSCULA. Esse conceito se chama 'Capitalize'.
// 2. Crie uma stream chamada `messageStream`que emite mensagens de texto, usando uma Stream que recebe a lista de mensagens abaixo (messageList).
// 3. Crie outra Stream chamada `messageStream` que agora emitirá os valores da stream anterior `messageStream` transformados pela função `transformMessage`
// 4. Crie um listener para a stream transformada que exibe as mensagens na tela
// 5. Execute o código e observe como as mensagens são transformadas antes de serem exibidas na tela.
//
// Conclusão:
// Ao usar o construtor Stream.eventTransformed, você pode transformar os eventos emitidos por uma stream antes de serem processados.
// Isso é útil para formatar dados, adicionar funcionalidades ou modificar o comportamento da stream de acordo com suas necessidades.

extension StringCasingExtension on String {
  String toCapitalized() => length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
}

void main() {
  // Resolva o exercício aqui
  final listMessages = [
    'OI, eu ESTou APREndendo DARt.',
    'eu AMO darT.',
    'esTa É uma ListA de mensaGems.',
  ];
  final Stream<String> messageStream = Stream.fromIterable(listMessages);
  final Stream<String> transformMessageStream = messageStream.map((message) => transformMessage(message));
  // aqui poderia fazer assim tambem:
  //final Stream<String> transformMessageStream = messageStream.map(transformMessage);
  transformMessageStream.listen((event) {
    print(event);
  });
}

String transformMessage(String message) => message.toCapitalized();
