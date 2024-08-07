import "package:http/http.dart" as http;
import 'dart:convert';
import 'dart:io';

void main() {
  menu(2);
}

void menu(int opcao1) {
  print("------------- INÍCIO -------------");
  print("\n Escolha uma das opções abaixo:");
  print("1- Ver a cotação de hoje:");
  print("2- Registrar a cotação de hoje:");
  print("\n\nA OPÇÃO ESCOLHIDA FOI $opcao1 \n\n");
  switch (opcao1) {
    case 1:
      today();
      break;
    case 2:
      registerData();
      break;
    default:
      print("\n Escolha uma opção válida!");
      break;
  }
}

registerData() async {
  var hgData = await getData();
  dynamic fileData = readFile();

  fileData = (fileData != null && fileData.length > 0 ? json.decode(fileData) : []);

  bool exist = false;

  fileData.forEach((data) {
    if (data['date'] == now()) {
      exist = true;
    }
  });

  if (!exist) {
    fileData.add({"date": now(), "data": "${hgData['data']}"});

    Directory dir = Directory.current;
    File file = File(dir.path + '/meu_arquivo.txt');
    RandomAccessFile raf = file.openSync(mode: FileMode.write);

    raf.writeStringSync(json.encode(fileData).toString());
    raf.flushSync();
    raf.closeSync();

    print("------------- DADOS SALVOS COM SUCESSO! -------------");
  } else {
    print("------------- REGISTRO NÃO ADICIONADO, JÁ EXISTE UM LOG FINANCEIRO DE HOJE CADASTRADO! -------------");
  }
}

dynamic readFile() {
  Directory dir = Directory.current;
  File file = File(dir.path + '/meu_arquivo.txt');

  if (!file.existsSync()) {
    print("ARQUIVO NÃO ENCONTRADO!");
    return null;
  }
  return file.readAsStringSync();
}

today() async {
  var data = await getData();
  print("------------- COTAÇÃO -------------");
  print('${data['date']} --> ${data['data']} ');
}

Future getData() async {
  String url = 'https://api.hgbrasil.com/finance?key=8e81f652';
  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    var data = json.decode(response.body)['results']['currencies'];
    var usd = data['USD'];
    var eur = data['EUR'];
    var gbp = data['GBP'];
    var ars = data['ARS'];
    var btc = data['BTC'];

    Map formatedMap = Map();
    formatedMap['date'] = now();
    formatedMap['data'] = '${usd['name']}: ${usd['buy']} | ${eur['name']}: ${eur['buy']} | ${gbp['name']}: ${gbp['buy']} | ${ars['name']}: ${ars['buy']} | ${btc['name']}: ${btc['buy']}';
    print("----- AGUARDE -----\n \n");
    return Future.delayed(Duration(seconds: 5), () => formatedMap);
  } else {
    throw ("falhou!!!");
  }
}

String now() {
  var now = DateTime.now();
  return '${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${now.year.toString()}';
}
