// Implemente a função abaixo utilizando o loop do-while
// que percorra uma lista de notas de uma sala de alunos e
// que retorne a média de notas desta sala.

double averageGrades(List<double> grades) {
  double sum = 0.0;
  int count = 0;
  int totalOfStudents = grades.length;

  do {
    sum += grades[count];
    count++;
  } while (count < totalOfStudents);

  return totalOfStudents > 0 ? sum / totalOfStudents : 0.0;
}

void main() {
  print(averageGrades([8.0, 9.5, 7.0, 6.5, 10.0]));
}
