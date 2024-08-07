// Escreva uma função que determine se uma string é um palíndromo ou não.
// A função deve ter uma string como parâmetro e deve retornar true se a string
// for um palíndromo e false caso contrário.

bool verificarPalindromo(String palavra) {
  String inverso = palavra.split('').reversed.join('');
  if (palavra == inverso) {
    return true;
  } else {
    return false;
  }
}

void main(List<String> args) {
  print(verificarPalindromo("ana"));
}
