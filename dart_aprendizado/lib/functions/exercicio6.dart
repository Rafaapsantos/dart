// Escreva uma função que calcule a média de uma lista de números.
// A função deve ter dois parâmetros, números e arredondar, sendo que
// arredondar é opcional. Se arredondar for verdadeiro, a função deve
// arredondar o resultado da média para o número inteiro mais próximo.
// Caso contrário, o resultado deve ser retornado como um número decimal.

num calcularMedia(List<double> number, [bool? arredondar]) {
  if (arredondar == true) {
    double sum = number.reduce((value, element) => value + element);
    return (sum / number.length).round();
  } else {
    double sum = number.reduce((value, element) => value + element);
    return sum / number.length;
  }
}

void main(List<String> args) {
  print(calcularMedia([10,20,30,40,50]));
}
