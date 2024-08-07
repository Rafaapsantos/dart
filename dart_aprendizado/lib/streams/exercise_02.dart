// Objetivo:
// Neste exercício, você criará uma stream que emite valores pares usando a palavra-chave `async*` e o operador `yield`.
// Essa stream simulará a geração de números pares em tempo real, permitindo que você os processe um por um.

// Problema real:
// Imagine um sistema que monitora a temperatura de um ambiente.
// O sistema precisa gerar alertas quando a temperatura for um valor par, indicando que a temperatura está subindo ou descendo de forma controlada.

// Solução:
// Utilizando `async*` e `yield`, você pode criar uma stream que emite cada valor par gerado, um de cada vez.
// Isso permite que você processe os valores de forma assíncrona, sem precisar esperar que todos eles sejam gerados antes de iniciar o processamento.

// Instruções:
// 1. Crie uma função `generateOddNumbers` que utiliza `async*` e `yield` para gerar uma sequência infinita de números pares.
// Dica: use uma variável auxiliar para incrementar o valor do numero a ser emitido em dois. Além disso você pode utilizar algum loop,
// como o while para emitir valores até uma certa condição de parada, por ex quando o numero for maior que 100.
//
// 2. Crie uma stream a partir da função `generateOddNumbers`
//
// 3. Crie um listener para a stream que processa cada valor par, e print um alerta quando a temperatura for superior a 35 graus.
//
// 4. Execute o código e observe como os valores pares são emitidos e processados em tempo real.
//
// Desafios:
// - Modifique o código para que a stream emita valores pares em um intervalo de tempo específico.
// - Adicione um limite para a quantidade de valores pares emitidos pela stream.
// - Implemente um sistema de tratamento de erros para lidar com falhas na geração dos valores pares.
//
// Conclusão:
// Ao usar `async*` e `yield`, você pode criar streams que geram dados em tempo real. Isso é útil para muitos tipos de aplicações, como monitoramento de sensores, geração de eventos e processamento de dados em tempo real.
//
// Observações:
// - Este código é um exemplo simples e pode ser adaptado para atender às necessidades específicas da sua aplicação.
// - É importante considerar o uso de técnicas de gerenciamento de memória ao trabalhar com streams.

void main() async {
  final Stream<int> stream = generateOddNumbers();
  stream.listen((int temperature) {
    if (temperature > 35) {
      print("$temperature - ALERT! temperatura ultrapassou os 35 graus");
    } else {
      print(temperature);
    }
  });
}

Stream<int> generateOddNumbers() async* {
  try {
    int number = 0;
    int increment = 2;
    while (number < 100) {
      await Future.delayed(Duration(seconds: 1));
      yield number;
      number += increment;
    }
  } catch (error) {
    print("Erro ao processar a tarefa! $error");
  }
}



// Posso fazer assim também
  //Stream<int> generateOddNumbers() async* {
      //int i = 1;
     //while (i < 100) {
        //if (i % 2 == 0) {
        //yield i;
        //}
        //i++;
     //}
  //}
