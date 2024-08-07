// Objetivo:
// Neste exercício, você criará uma stream vazia. Essa stream pode ser útil em situações onde você precisa indicar que não há dados para serem processados.
//
// Problema real:
// Imagine um sistema de login que verifica se o usuário digitou um nome de usuário e senha válidos.
// Se as credenciais forem inválidas, o sistema precisa informar ao usuário que não há dados para serem processados.

// Solução:
// Utilizando o construtor adequado, você pode criar uma stream que não emite nenhum valor.
// Isso permite que você trate a situação de forma específica, sem precisar se preocupar com o processamento de dados inexistentes.

// Instruções:
// 1. Crie uma função `checkCredentials` que recebe como parâmetros uma String que representa o usuário dessa conta (user) e
// também, uma String que representa sua senha (password) e que verifica se o nome de usuário e senha são válidos, i.e se:
// - user = 'admin' e password = '1234'. Além disso essa função deve retornar um bool como resposta, i.e `true` caso as credenciais
// sejam válidas e false caso não sejam.
// 2. Crie uma stream que emite um valor bool indicando se as credenciais são válidas, usando o `async*` e `yeld`.
// 3. Crie um listener para a stream que trata o caso de credenciais inválidas. Se o valor que a stream emitir for `true`
// faça o print da seguinte mensagem: "Login inválido. Tente novamente.", se o valor for `false` a mensagem a ser mostrada será "Login realizado com sucesso"
//
//  Desafios:
// - Modifique o código para que a stream emita um erro caso as credenciais sejam inválidas.
// - Adicione um delay antes de emitir o valor bool na stream.
// - Implemente um sistema de tratamento de erros para lidar com falhas na verificação das credenciais.

//import 'dart:ffi'??????????
void main() async {
  final String user = "admin";
  final int password = 1234;
  final Stream<bool> stream = checkCredentials(user, password);
  stream.listen((event) {
    if (event == true) {
      print('Login realizado com sucesso');
    } else {
      throw Exception(Error);
    }
  });
}

Stream<bool> checkCredentials(String user, int password) async* {
  try {
    bool validation;
    if (user == "admin" && password == 1234) {
      Future.delayed(Duration(seconds: 2));
      validation = true;
    } else {
      Future.delayed(Duration(seconds: 2));
      validation = false;
    }
    yield validation;
  } catch (error) {
    print("Erro ao processar a tarefa! $error");
    throw Exception(Error);
  }
}
