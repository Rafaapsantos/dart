// Implemente a função abaixo utilizando switch case de modo que ela
// retorne o preço da conta de luz do mês de acordo com o uso de um morador
// em Kw/h seguindo diagrama abaixo:
//
// Consumo em kw/h <= 100 kw/h => Valor da conta: Consumo * 0.5
// Consumo em kw/h <= 1000 kw/h => Valor da conta: Consumo * 1.2
// Consumo em kw/h <= 5000 kw/h => Valor da conta: Consumo * 1.5
// Consumo em kw/h <= 10000 kw/h => Valor da conta: Consumo * 1.8
// Consumo em kw/h <= 50000 kw/h => Valor da conta: Consumo * 2.1
// Consumo em kw/h > 50000 kw/h => Valor da conta: Consumo * 2.5

double energyConsumption1(int consumption) {
  final a = (consumption * 100);
  switch (a) {
    case 10000:
      return consumption * 0.5;
    case 100000:
      return consumption * 1.2;
    case 500000:
      return consumption * 1.5;
    case 1000000:
      return consumption * 1.8;
    case 5000000:
      return consumption * 2.1;
    case 10000000:
      return consumption * 2.5;
    default:
      return 0;
  }
}

void main(List<String> args) {
  print(energyConsumption1(100));
}
