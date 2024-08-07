// Implemente a função abaixo utilizando switch case de modo que ela
// retorne o valor total de uma compra de acordo com os descontos dados
// por uma loja que seguem o diagrama abaixo:
//
// Valor da compra <= R$50,00  ->  Desconto de 5%
// Valor da compra <= R$100,00 e >= R$50,00->  Desconto de 8%
// Valor da compra <= R$150,00 e >= R$100,00 ->  Desconto de 10%
// Valor da compra <= R$200,00 e >=  R$150,00 ->  Desconto de 15%
// Valor da compra <= R$250,00 e >= R$200,00 ->  Desconto de 20%
// Valor da compra > R$300,00  ->  Desconto de 25%

double discount1(double value) {
  final a = (value * 100).toInt();
  switch (a) {
    case 5000:
      return value * 0.95;
    case 10000:
      return value * 0.92;
    case 15000:
      return value * 0.90;
    case 20000:
      return value * 0.85;
    case 25000:
      return value * 0.80;
    case 30000:
      return value * 0.75;
    default:
      return value;
  }
}

void main(List<String> args) {
  print(discount1(50));
}
