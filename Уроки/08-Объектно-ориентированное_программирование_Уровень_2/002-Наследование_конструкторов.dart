// Конструкторы суперкласса не наследуются.  Для обращения к функциональности базового класса из производного применяется ключевое слово super.
// Если базовый класс явным образом определяет конструктор (конструктор по умолчанию не учитывается), то его необходимо вызвать в классе-наследнике при определении конструктора,
// иначе мы столкнемся с ошибкой.

void main() {
  var myCar = Car('Daewoo Nexia', 'red');
  myCar.start();
}

class Vehicle {
  //super class or parent class
  late String color;

  Vehicle.fromColor(var color) {
    this.color = color;
    print('Call Vehicle.fromColor: $color Constructor');
  }

  void start() {
    print('Has started');
  }
}

class Car extends Vehicle {
  //sub class or child class
  late String carName;

  // Это единственное место, где можно вызывать конструктор суперкласса.
  Car(String carName, String color) : super.fromColor(color) { // дарт исполняет блок инициализации до создания экземпляра класса.

    this.carName = carName;
    print('Call of Car.Name:$carName, Color: $color');
  }

  void open() {
    print('Open door');
  }
}
