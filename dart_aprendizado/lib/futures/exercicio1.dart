import 'package:dio/dio.dart';

// Ex.01 O objetivo desta função é buscar na api Dog (https://dog.ceo/dog-api/) o JSON que retorna uma imagem e um status da requisição.
// Porém o código abaixo não foi arquitetado corretamente. Faça as devidas alterações para que este trecho volte a funcionar,
// utilizando programação assíncrona e o que você já aprendeu sobre funções.

void main() async {
  // Remova os comentários das duas linhas abaixo
  final response = await fetchDog();
  print(response);
}

Future<Map<String, dynamic>?> fetchDog() async {
  final dio = Dio();
  final response = await dio.get<Map<String, dynamic>>('https://dog.ceo/api/breeds/image/random');
  final dado = response.data;
  return dado;
}
