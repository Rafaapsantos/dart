// Ex.05 Crie uma função que assíncrona que retorna o seu nome, sabendo que o Future
// ja contém o valor do resultado da operação que será retornado.

void main() async {
  final response = await getUserName();
  print("olá, meu nome é $response");
}

Future<String> getUserName() {
  try {
    return Future.value('Rafaela Santos');
  } catch (e) {
    throw Exception('Não foi possivel executar! ERRO:$e');
  }
}