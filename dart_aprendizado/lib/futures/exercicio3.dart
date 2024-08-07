// Ex.03 Utilizando o exercício 01 como base, faça uma requisição para a Api Dog e para a Api Cat,
// e retorne ambos os resultados como uma lista.

import 'package:dio/dio.dart';

void main() async {
  final response = await fetchCatAndDog();
  print(response);
}

Future<dynamic> fetchCatAndDog() async {
  final dio = Dio();
  final responseDog = await dio.get<Map<String, dynamic>>('https://dog.ceo/api/breeds/image/random');
  final responsecat = await dio.get<Map<String, dynamic>>('https://api.thecatapi.com/v1/images/0XYvRd7oD');
  final dadoDog = responseDog.data;
  final dadoCat = responsecat.data;
  final List<dynamic> lista = [];
  lista.add(dadoDog);
  lista.add(dadoCat);
  return lista;
}
