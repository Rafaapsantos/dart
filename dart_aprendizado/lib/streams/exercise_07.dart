// Objetivo:
// Neste exercício, você criará uma stream que simula a contagem de votos em uma eleição usando um StreamController.
//
// Problema real:
// Imagine um sistema de contagem de votos em tempo real para uma eleição. O sistema precisa:
// 1. Permitir que os usuários votem em seus candidatos favoritos.
// 2. Atualizar a contagem de votos em tempo real para todos os usuários.
// 3. Encerrar a votação após um tempo definido e mostrar o resultado final.
//
// Solução:
// Utilizando um StreamController, você pode criar uma stream que simula a contagem de votos e notifica todos os listeners sobre cada novo voto e o resultado final.
//
// Instruções:
// 1. Crie um StreamController que retorna a classe Vote
// 2. Simule a votação criando uma função chamada `registerVote` que recebe um Enum do tipo `candidate` que representa o nome do candidato e que adiciona no controller um Vote .
// 3. Crie um listener que receba os votos e conte todos os votos de cada candidato.
// 4. Por fim, finalize a votação após 30 segundo, criando uma função chamada `finishVoting` que recebe uma Duração como parâmetro que será utilizada em um Future.delayed()
// e retornará um Future<String>. Ela será responsável por fechar o controller utilizando o método close() e por retornar uma String com o resultado final da votação.

import 'dart:async';
//

void main(List<String> args) {
  final controller = StreamController<Vote>();
  final Map<Candidate, int> voteCount = {
    Candidate.gabriela: 0,
    Candidate.rafaela: 0,
    Candidate.monica: 0,
  };

  void registerVote(Candidate candidate) {
    controller.add(Vote(candidate));
  }

  Future<String> finishVoting(Duration duration) async {
    await Future.delayed(duration);
    controller.close();
    voteCount.entries.toList().sort((a, b) => a.value.compareTo(b.value));
    Candidate winner = voteCount.entries.first.key;
    return "O vencendor é a candidata ${winner.name}";
  }

  void countVote(Vote vote) {
    voteCount[vote.candidato] = voteCount[vote.candidato]! + 1; // ou  voteCount.update(vote.candidato, (value) => value + 1);
    print("Total de votos : $voteCount");
  }

  controller.stream.listen(countVote);

  registerVote(Candidate.gabriela);
  registerVote(Candidate.rafaela);
  registerVote(Candidate.gabriela);
  registerVote(Candidate.monica);
  registerVote(Candidate.gabriela);
  registerVote(Candidate.gabriela);
  registerVote(Candidate.rafaela);
  registerVote(Candidate.gabriela);
  registerVote(Candidate.monica);
  registerVote(Candidate.gabriela);

  finishVoting(Duration(seconds: 5)).then(print);
}

class Vote {
  final Candidate candidato;

  Vote(this.candidato);
}

enum Candidate {
  rafaela,
  gabriela,
  monica,
}
