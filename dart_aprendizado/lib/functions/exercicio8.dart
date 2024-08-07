// Escreva uma função que calcule a área de uma forma geométrica.
// A função deve ter três parâmetros nomeados obrigatórios: tipo, comprimento e largura.
// O tipo da forma geométrica deve ser especificado como um enum Shape, e pode ser do tipo
// "square", "rectangle" ou "triangle". O comprimento e a largura devem ser
// números decimais.

double calcularArea({required Enum tipo, required double comprimento, required double largura}) {
  if (tipo == Shape.triangle) {
    return (largura * comprimento) / 2;
  } else if (tipo == Shape.rectangle) {
    return largura * comprimento;
  } else {
    return (largura * comprimento) / 2;
  }
}

enum Shape { square, rectangle, triangle }

void main(List<String> args) {
  print(calcularArea(tipo: Shape.square, comprimento: 10.0, largura: 15.0));
}
