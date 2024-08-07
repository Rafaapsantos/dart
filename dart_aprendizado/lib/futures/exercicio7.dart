import 'package:dio/dio.dart';

void main()async {
  final response =await getUser();
  print(response);
}
Future<dynamic> getUser() async {
  try {
    final int id = 1;
    final dio = Dio();
    final response = await dio.get<dynamic>('https://jsonplaceholder.typicode.com/comments?id=$id');
    final dado = response.data;
    return dado;
  } catch (e) {
    print("OUVE ALGUM ERRO, TENTE NOVAMENTE $e");
  }
}