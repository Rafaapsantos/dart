// Implemente a função abaixo utilizando o loop for
// que percorra uma lista de notas de uma sala de alunos e
// que retorne a média de notas desta sala.

double averageGrades(List<double> grades) {
  double sum = 0.0;
  for (int i = 0; i < grades.length; i++) {
    sum += grades[i];
  }
  return sum / grades.length;
}

void main() {
  print(averageGrades([8.5, 9.0, 7.5, 6.0, 8.0]));
}
