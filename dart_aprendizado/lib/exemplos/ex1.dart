class Pessoa {
  String nome;
  int idade;

  Pessoa({required this.nome, required this.idade});

  void saudacao() {
    print("Olá, meu nome é $nome e tenho $idade anos.");
  }
}

void main() {
  Pessoa pessoa = Pessoa(nome: "João", idade: 30);
  pessoa.saudacao(); 
}