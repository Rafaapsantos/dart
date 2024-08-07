//Objetivo:
//Criar uma interface Vehicle e implementá-la nas classes Car e Bike.

//Problema real:
//Você precisa garantir que tanto carros quanto bicicletas sigam a mesma interface
//de veículo.

//Solução:
//Crie uma interface Vehicle e implemente-a nas classes Car e Bike.

//Instruções:

//Crie uma interface Vehicle com métodos start e stop.
//Implemente essa interface nas classes Car e Bike.

abstract class Vehicle {
  void start();
  void stop();
}

class Car implements Vehicle {
  @override
  void start() {
    print("MOTOR LIGADO!! CARRO ANDANDO");
  }

  @override
  void stop() {
    print("MOTOR DESLIGADO!! CARRO PARANDO");
  }
}

class Bike implements Vehicle {
  @override
  void start() {
    print("COMEÇOU A PEDALAR!! BICICLETA ANDANDO");
  }

  @override
  void stop() {
    print("PAROU DE PEDALAR!! BICICLETA PARANDO");
  }
}

void main(List<String> args) {
  var car = Car();
  var bike = Bike();
  print("------------ carro -------------");
  car.start();
  car.stop();
  print("------------ bike -------------");
  bike.start();
  bike.stop();
}
