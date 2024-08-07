//Objetivo:
//Adicionar métodos para a classe Car que permitam exibir as informações do
//carro e ligar o motor.
//Problema real:
//Você precisa de métodos que permitam
//exibir informações sobre o carro e uma funcionalidade para ligar o motor.
//Solução:
//Crie métodos na classe Car para exibir informações e ligar o motor.
//Instruções:
//Adicione um método displayInfo que exibe as informações do carro.
//Adicione um método startEngine que imprime uma mensagem dizendo que o motor está ligado.

/*
class Car {
  final String make;
  final String model;
  final int year;
  final String cambium;
  final String color;
  final String bodies;
  final double value;

  Car(this.type, this.color, this.year, this.model, this.make, this.value);
}
/
*/
import 'package:dart_aprendizado/poo/exercicio1.dart';

final class InformacoesCarro extends Car {
  final int km;
  InformacoesCarro({required super.make, required super.model, required super.year, required super.cambium, required super.color, required super.bodies, required super.value, required this.km,});

  void displayInfo() {
    print("Marca: $make \n Modelo: $model \n Ano: $year \n Cor: $color \n Tipo do carro: $bodies \n Valor: $value \n Cambio: $cambium \n Quilometragem: $km km");
  }

  void startEngine() {
    print("O MOTOR ESTÁ LIGADO!!!");
  }
}

void main(List<String> args) {
  InformacoesCarro car1 = InformacoesCarro(make: "Toyota", model: "Corolla", year: 2020, cambium: "Automatico", color: "Branca", bodies: "Sedan", value: 90000.00, km: 50000,);
  
  InformacoesCarro car2 = InformacoesCarro(make: "Chevrolet", model: "Tracker", year: 2019, cambium: "Manual", color: "Preto", bodies: "SUV", value: 87000.00,km: 40000,);
  
  print("------------------CARRO 1 ------------------");
  car1.displayInfo();
  car1.startEngine();
  print("------------------CARRO 2 ------------------");
  car2.displayInfo();
  car2.startEngine();
}

