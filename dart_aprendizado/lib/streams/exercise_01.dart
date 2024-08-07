// Criando uma Stream a partir de uma lista de tarefas
//
// Objetivo:
// Neste exercício, você criará uma stream a partir de uma lista de tarefas usando o construtor fromIterable.
// Essa stream simulará a chegada de novas tarefas em tempo real, permitindo que você as processe uma por uma.
//
// Problema real:
// Imagine um sistema de gerenciamento de tarefas que recebe novas solicitações de clientes a qualquer momento. As tarefas podem ser de diferentes tipos, como:
// 1. Criar um novo usuário
// 2. Atualizar um pedido
// 3. Enviar um e-mail
//
// Solução:
// Utilizando o construtor fromIterable, você pode criar uma stream que emite cada tarefa da lista, uma de cada vez.
// Isso permite que você processe as tarefas de forma assíncrona, sem precisar esperar que todas elas sejam concluídas antes de iniciar a próxima.
//
// Instruções:
// 1. Use a classe Task com os atributos abaixo para criar uma lista de Tarefas.
// id: Um identificador único para a tarefa
// type: O tipo da tarefa
// description: Uma descrição da tarefa
//
// 2. Escolha um dos construtores que são utilizados para criar uma Stream que possibilite utilizar uma Lista como fonte de dados
//
// 3. Crie um Listener para processar a Stream. Esse listener deve conter um Switch Case, que verifica cada tipo da tarefa.
// Dentro de cada case você deverá passar as funções correspondentes que executaram (em teoria) a tarefa.
//
// Desafios:
// - Adicione um delay entre o processamento das tarefas para simular o tempo real.
// - Implemente um sistema de tratamento de erros para lidar com falhas no processamento das tarefas.

void main() async {
  final List<Task> tasks = [
    Task(id: 0, type: TaskType.createUser, description: "Usuario criado"),
    Task(id: 1, type: TaskType.sendEmail, description: "E-mail enviado"),
    Task(id: 2, type: TaskType.updateOrder, description: "Usuario atualizado"),
  ];

  final Stream<Task> stream = Stream.fromIterable(tasks);

  stream.listen((task) async {
    try {
      switch (task.type) {
        case TaskType.createUser:
          await Future.delayed(Duration(seconds: 4));
          print(task.description);
          break;
        case TaskType.sendEmail:
          await Future.delayed(Duration(seconds: 4));
          print(task.description);
          break;
        case TaskType.updateOrder:
          await Future.delayed(Duration(seconds: 4));
          print(task.description);
          break;
        default:
          print("Não foi encontrado o tipo!");
      }
    } catch (error) {
        print("Erro ao processar a tarefa! $error");
    }
  });
}

class Task {
  final int id;
  final TaskType type;
  final String description;

  Task({
    required this.id,
    required this.type,
    required this.description,
  });

  @override
  String toString() {
    return 'Tarefa(id: $id, tipo: $type, descricao: $description)';
  }
}

enum TaskType {
  createUser,
  updateOrder,
  sendEmail,
}
