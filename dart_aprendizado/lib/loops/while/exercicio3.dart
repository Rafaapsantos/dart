// Implemente a função abaixo utilizando o loop while
// que percorra uma lista de notas de uma sala de alunos e
// que retorne a média de notas desta sala.

double averageGrades(List<double> grades) {
  double sum = 0.0;
  int count = 0;
  int totalOfStudents = grades.length;

  while (count < totalOfStudents) {
    sum += grades[count];
    count++;
  }

  return sum / totalOfStudents;
}

void main() {
  print(averageGrades([8.5, 9.0, 7.5, 6.0, 8.0]));
}