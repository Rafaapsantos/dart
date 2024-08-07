// Implemente a função abaixo utilizando switch case de modo que ela
// retorne a nota de um aluno seguindo diagrama abaixo:
// Nota >= 9 => A
// Nota >= 8 => B
// Nota >= 7 => C
// Nota >= 6 => D
// Nota >= 4 => E
// Nota < 40 => F

String letterGrade1(int numGrade) {
  switch (numGrade) {
    case 10:
      return 'A';
    case 9:
      return 'A';
    case 8:
      return 'B';
    case 7:
      return 'C';
    case 6:
      return 'D';
    case 5:
      return 'E';
    case 4:
      return 'E';
    case 3:
      return 'F';
    case 2:
      return 'F';
    case 1:
      return 'F';
    default:
      return 'F';
  }
}

void main(List<String> args) {
  print(letterGrade1(8));
}
