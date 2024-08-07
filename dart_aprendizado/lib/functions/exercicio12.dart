// Escreva uma função que receba uma lista de números e retorne outra função que,
// por sua vez, retorne o produto dos números na lista.
// A segunda função deve aceitar um número inteiro opcional que
// represente a quantidade de números na lista a serem multiplicados.
Function obterProduto(List<int> listaNumeros) {
  return ([int? qnt]) {
    qnt ??= listaNumeros.length;
    return listaNumeros.take(qnt).reduce((value, element) => value * element);
  };
}
void main() {
  List<int> numeros = [2, 3, 4, 5];
  Function produtoDosPrimeiros = obterProduto(numeros);
  int produto = produtoDosPrimeiros(4);
  print('Produto dos primeiros 3 números: $produto'); 
}