//Objetivo:
//Criar uma classe abstrata Animal e classes concretas Dog e Cat.

//Problema real:
//Você quer garantir que todas as classes de animais tenham métodos para som e
//locomoção.

//Solução:
//Use uma classe abstrata Animal com métodos abstratos makeSound e move.

//Instruções:

//Crie uma classe abstrata Animal com métodos abstratos makeSound e move.
//Crie classes concretas Dog e Cat que implementam os métodos da classe Animal.

abstract class Animal {
  void makeSound();
  void move();
  void eat();
}

class Dog extends Animal {
  String name;
  String raca;

  Dog(this.name, this.raca);
  @override
  void makeSound() {
    print("AUAU");
  }

  @override
  void move() {
    print("$name está andando");
  }

  @override
  void eat() {
    print("$name precisa comer uma ração especifica da raça $raca");
  }
}

class Cat extends Animal {
  String name;
  String raca;

  Cat(this.name, this.raca);
  @override
  void makeSound() {
    print("MIAW");
  }

  @override
  void move() {
    print("$name está andando");
  }

  @override
  void eat() {
    print("$name precisa comer uma ração especifica da raça $raca");
  }
}

void main(List<String> args) {
  Dog dog1 = Dog("xuxa", "basset");
  Dog dog2 = Dog("scoob", "vira-lata");
  print("-------- DOG --------");
  dog1.makeSound();
  dog1.move();
  dog1.eat();
  dog2.makeSound();
  dog2.move();
  dog2.eat();
  Cat cat1 = Cat("suzi", "x");
  Cat cat2 = Cat("loui", "y");
  print("-------- CAT --------");
  cat1.makeSound();
  cat1.move();
  cat1.eat();
  cat2.makeSound();
  cat2.move();
  cat2.eat();
}
