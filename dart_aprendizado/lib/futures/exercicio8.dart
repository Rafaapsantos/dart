import 'package:http/http.dart' as http;

void main()async {
  final response =await getCep();
  print(response);
}

Future<dynamic> getCep() async {
  try {
    final int cep = 14402414;
    final response = Uri.parse('https://viacep.com.br/ws/$cep/json/');
    final dado = await http.get(response);
    if (dado.statusCode == 200) {
      print(dado.body);
    }else{
      return "Status: ${dado.statusCode}";
    }
  } catch (e) {
    throw Exception("Não foi possivel retornar!");
  }
}