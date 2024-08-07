// Exercicio 2
//
// Você é professor e em sua aula a frequência vale 20% da nota,
// o dever de casa vale 30% e o exame vale 50%. Seu aluno tirou 90
// pontos por sua presença, 80 pontos por sua lição de casa e 94 pontos por
// seu exame. Calcule a nota dela como uma porcentagem inteira arredondada para baixo.

void main(List<String> args) {
   const presenca = 90;
  const dever = 80;
  const exame = 94;
  const notaFinal = (0.2 * presenca) + (0.3 * dever) + (0.5 * exame);
  final integerGrade = notaFinal.toInt();
  print(integerGrade);
}

