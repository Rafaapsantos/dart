//Objetivo:
//Neste exercício, você criará uma classe Car com atributos básicos.
//Problema real:
//Imagine que você está desenvolvendo um sistema para uma concessionária de carros.
//Cada carro tem alguns atributos básicos que precisam ser armazenados.
//Solução:
//Você precisará criar uma classe Car com atributos como make, model e year.
//Instruções:
//Crie uma classe Car com os seguintes atributos:
//make: A marca do carro
//model: O modelo do carro
//year: O ano de fabricação do carro
//Crie uma instância da classe Car e inicialize os atributos.

 class Car {
  final String make;
  final String model;
  final int year;
  final String cambium;
  final String color;
  final String bodies;
  final double value;

  Car({required this.bodies, required this.color, required this.cambium, required this.year, required this.model, required this.make, required this.value});

  void venda() {
    print("O carro da marca $make e do modelo $model $bodies do ano $year foi vendido por $value");
  }
}

void main(List<String> args) {
  Car car1 = Car(bodies: "Sedan", color: "Branca", cambium: "Automatico", year: 2020, model: "Corolla", make: "Toyota", value: 90000.00);
  car1.venda();
  Car car2 = Car(bodies: "SUV", color: "Preto", cambium:"Manual", year: 2019, model: "Tracker", make: "Chevrolet", value: 87000.00);
  car2.venda();
  print("ano do carro 1: ${car1.year}");
  print("valor do carro 2: ${car2.value}");
}
