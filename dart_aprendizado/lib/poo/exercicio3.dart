//Objetivo:
//Utilizar modificadores de acesso para proteger os atributos da classe Car.
//Problema real:
//Você quer garantir que os atributos do carro não sejam modificados
//diretamente de fora da classe.
//Solução:
//Use modificadores de acesso privado e getters para acessar os atributos.
//Instruções:
//Faça com que os atributos make, model e year sejam privados.
//Crie getters para acessar esses atributos de fora da classe.

final class Car {
  final String _make;
  final String _model;
  final int _year;
  final String color;
  final double value;

  Car({
    required String make,
    required String model,
    required int year,
    required this.color,
    required this.value,
  })  : _make = make,
        _model = model,
        _year = year;

  String get make => _make;
  String get model => _model;
  int get year => _year;

  void displayInfo() {
    print("Marca: $make \nModelo: $model \nAno: $year \nCor: $color \nValor: $value");
  }

  void startEngine() {
    print("O MOTOR ESTÁ LIGADO!!!");
  }
}

void main(List<String> args) {
  Car car1 = Car(
    make: "Toyota",
    model: "Corolla",
    year: 2020,
    color: "Branca",
    value: 95000.0,
  );
  Car car2 = Car(
    make: "Chevrolet",
    model: "Tracker",
    year: 2019,
    color: "Preto",
    value: 100000.0,
  );
  print("------------------CARRO 1 ------------------");
  car1.displayInfo();
  car1.startEngine();
  print("------------------CARRO 2 ------------------");
  car2.displayInfo();
  car2.startEngine();
}
