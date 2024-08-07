// Exercício 04
//
// Crie uma função para verificar se um número é negativo, positivo ou zero.

String checkSignal(int number) {
  if (number > 0) {
    return "Positivo";
  } else if (number == 0) {
    return "Zero";
  } else {
    return "Negativo";
  }
}

void main(List<String> args) {
  print(checkSignal(-1));
}
