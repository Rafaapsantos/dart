// Escreva uma função que retorna outra função.
// A função retornada deve calcular o valor aumentado de um número por
// uma porcentagem específica. A porcentagem de aumento deve ser passada como
// um parâmetro para a função principal.

Function calcularAumento(double porcentagem) {
  print(porcentagem);
  return (double numero) {
    return (numero * (porcentagem + 1)).round();
  };
}

void main() {
  double porcentagemAumento = 10.0;
  Function calculo = calcularAumento(porcentagemAumento);

  double valorInicial = 100.0;
  int valorAumentado = calculo(valorInicial);

  print('Valor inicial: \$$valorInicial');
  print('Porcentagem de aumento: $porcentagemAumento%');
  print('Valor aumentado: \$$valorAumentado');
}
