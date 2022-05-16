// Еще одно решение проблемы множественного наследования в Dart представляют миксины. Миксин представляет обычный класс, за тем исключением,
// что он не должен содержать конструктор, иначе он не может быть использован в качестве миксина.
// Для применения миксина используется оператор - with

void main() {
  var vehicle = Vehicle('Ford', 100);
  vehicle.move();

//тк Train обычный класс, то мы можем создать его экземпляр
  var train = Train();
  train.speedMove();
}

class Car {
  Car(this.name);

  String name;

  void move() {
    print('The $name has started');
  }
}

// мы можем указать, что данный тип будет использоваться только как миксин, используя ключевое слово mixin. НО тогда нельзя использовать его как отдельный класс => нельзя создать экземляр этого класса
class Train {
  late int speed;

  void speedMove() {
    print('The Train has started with $speed');
  }
}

// наследуемся от класса Car, класс Train - миксин, для его обозначения используем оператор with
class Vehicle extends Car with Train {
  Vehicle(name, sp) : super(name) {
    // от базового класса передали параметр name ичпользуя super
    speed = sp; // от
  }
}
