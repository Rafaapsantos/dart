//  Escreva uma função que calcule a área de um retângulo.
// A função deve ter dois parâmetros obrigatórios, comprimento e largura,
// e um parâmetro opcional, unidade, que pode ser utilizado para especificar
// a unidade de medida da área (padrão é "cm"). A função deve retornar a
//  área do retângulo com a unidade de medida especificada.

String calcularAreaRetangulo(double comprimento, double largura, {String unidade = "cm"}) {
  double area = comprimento * largura;
  return "$area $unidade^2";
}

void main(List<String> args) {
  print(calcularAreaRetangulo(10, 8));
}
