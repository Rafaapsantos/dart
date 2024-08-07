// Ex.02 Use o construtor `Future.delayed` para fornecer uma string após dois segundos que diz "Eu sou do futuro."
// Depois crie uma variável `String` chamada `message` que aguarda o futuro para completa com um valor.
// E por fim, coloque o código acima com um bloco `try-catch`.

void main() async {
  String message = await delayedFunction();
  print(message);
}

Future<String> delayedFunction() async {
  try {
    return Future.delayed(Duration(seconds: 2), () => "EU SOU DO FUTURO");
  } catch (e) {
    return 'Não foi possivel executar! ERRO:$e';
  }
}