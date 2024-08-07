// Escreva uma função que calcule o preço total de um produto, incluindo o imposto.
// A função deve ter dois parâmetros nomeados, preco e imposto.
// O imposto deve ser especificado como uma porcentagem, por exemplo,
// 15% de imposto deve ser passado como 0.15.
// imposto a se pagar: preço * imposto

double calcularPrecoTotal({required int preco, double imposto = 0.08}) {
  double precoTotal = preco + (preco * imposto);
  return precoTotal;
}

void main(List<String> args) {
  print(calcularPrecoTotal(preco: 10));
}
