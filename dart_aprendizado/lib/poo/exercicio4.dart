//Objetivo:
//Criar uma classe ElectricCar que herda de Car.

//Problema real:
//Você precisa criar uma versão especializada do carro que seja elétrica.

//Solução:
//Use herança para criar uma classe ElectricCar que adicione atributos e métodos
//específicos para carros elétricos.

//Instruções:

//Crie uma classe ElectricCar que herda de Car.
//Adicione um atributo batteryLevel e um método chargeBattery.

class Car {
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

class ElectricCar extends Car {
  int batteryLevel;

  ElectricCar({
    required super.make,
    required super.model,
    required super.year,
    required super.color,
    required super.value,
    required this.batteryLevel,
  });

  void chargeBattery() {
    if (batteryLevel > 0 && batteryLevel<100) {
      print("A bateria não está totalmente carregada");
    } else if(batteryLevel == 0 ){
      print("A bateria está totalmente descarregada");
    }else{
      print("A bateria está totalmente carregada");
    }
  }
}

void main(List<String> args) {
  ElectricCar car1 = ElectricCar(
    make: "Toyota",
    model: "Corolla",
    year: 2020,
    color: "Branca",
    value: 95000.0,
    batteryLevel: 10,
  );
  ElectricCar car2 = ElectricCar(
    make: "Chevrolet",
    model: "Tracker",
    year: 2019,
    color: "Preto",
    value: 100000.0,
    batteryLevel: 0,
  );
  
  print("------------------CARRO 1 ------------------");
  car1.displayInfo();
  car1.startEngine();
  car1.chargeBattery();
  
  print("------------------CARRO 2 ------------------");
  car2.displayInfo();
  car2.startEngine();
  car2.chargeBattery();
}