// Escreva uma função executarTarefa que receba duas funções como parâmetros.
// A primeira função é uma tarefa que deve ser executada.
// A segunda função é uma função de validação que retorna verdadeiro ou falso,
// indicando se a tarefa deve ser executada ou não. A função executarTarefa
// deve executar a tarefa apenas se a função de validação retornar verdadeiro.
// A função executarTarefa e a função tarefa devem retornar uma string.
// Caso a validação seja false, retorne a string "Sem Tarefa"

String executarTarefa(Function tarefa, Function validacao) {
  if (validacao()) {
    return tarefa();
  } else {
    return "Sem Tarefa";
  }
}

void main() {
  String tarefa() {
    return "Executando a tarefa...";
  }

  bool validar() {
    return true;
  }

  String resultado = executarTarefa(tarefa, validar);
  print(resultado);

  bool validarFalse() {
    return false;
  }

  String resultadoFalse = executarTarefa(tarefa, validarFalse);
  print(resultadoFalse);
}
