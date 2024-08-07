import 'package:dio/dio.dart';
// Ex.04 Utilizando o exercício 01 como base, reimplemente a função do exercício 01 lidando com os
// erros de uma operação assíncrona usando try-catch.

void main() async {
  final response = await fetchDogsWithHandlerError();
  print(response);
}

Future<Map<String, dynamic>?> fetchDogsWithHandlerError() async {
  try {
    final dio = Dio();
    final response = await dio.get<Map<String, dynamic>>('https://dog.ceo/api/breeds/image/random');
    final dado = response.data;
    return dado;
  } catch (e) {
    throw Exception('Não foi possivel executar! ERRO:$e');
  }
}
