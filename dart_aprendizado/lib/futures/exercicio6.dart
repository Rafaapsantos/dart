 //Ex.06 Este exercício é divertido e testará o quão bem você entende como o Dart lida tarefas assíncronas.
// Em que ordem o Dart imprimirá os textos nas funções `print`? Por que?
//resposta que eu acho:
// 1 synchronous
//4 microtask queue
//5 microtask queue
//10 microtask queue
//2 event queue
//3 synchronous
//7 event queue
//8 event queue
//9 event queue
//11 synchronous
//6 event queue
void main() {
  synchronousChallenge();
}

void synchronousChallenge() {
  print('1 synchronous');
  Future(() => print('2 event queue')).then(
    (value) => print('3 synchronous'),
  );
  Future.microtask(() => print('4 microtask queue'));
  Future.microtask(() => print('5 microtask queue'));
  Future.delayed(
    Duration(seconds: 1),
    () => print('6 event queue'),
  );
  Future(() => print('7 event queue')).then(
    (value) => Future(() => print('8 event queue')),
  );
  Future(() => print('9 event queue')).then(
    (value) => Future.microtask(
      () => print('10 microtask queue'),
    ),
  );
  print('11 synchronous');
}

// Tente responder antes de verificar. Se você estava certo, dê a si mesmo um tapinha merecido nas costas!
//
// Resposta:
//
// 1 synchronous
// 11 synchronous
// 4 microtask queue
// 5 microtask queue
// 2 event queue
// 3 synchronous
// 7 event queue
// 9 event queue
// 10 microtask queue
// 8 event queue
// 6 event queue
//
// Tarefas síncronas sempre são executadas primeiro, então isso explica 1 e 11. Aqui está
// como ficam a fila de eventos e a fila de microtarefas após o término do 11:
//
// Fila de eventos: 2, 7, 9
// Fila de microtarefas: 4, 5
// (Os números à esquerda indicam o primeiro da linha.)
//
// A fila de microtarefas é sempre esvaziada antes de qualquer coisa na fila de eventos
// tem uma chance, então isso explica 4 e 5.
//
// Depois disso, 2 será o primeiro na fila de eventos. Qualquer coisa no
// retorno de chamada `then` é executado de forma síncrona imediatamente após a fila de eventos
// item para que exemplifique 3.
//
// 7 é o próximo na fila de eventos, mas quando termina o retorno de chamada `then` adiciona
// 8 até o final da fila de eventos. Aqui está como estão as filas agora:
//
// Fila de eventos: 9, 8
// Fila de microtarefas:
//
// O próximo da fila é 9 e quando termina adiciona 10 à fila de microtarefas:
//
// Fila de eventos: 8
// Fila de microtarefas: 10
//
// Como as microtarefas têm prioridade, ela corta a linha na frente de 8. Depois disso
// 8 podem ir.
//
// No final do atraso de um segundo, 6 é colocado na fila de eventos, e desde então
// não há mais ninguém em nenhuma linha, 6 é executado.
//
// Não há mais código síncrono, todas as filas estão vazias e todos os
// os futuros foram concluídos, então o programa termina.