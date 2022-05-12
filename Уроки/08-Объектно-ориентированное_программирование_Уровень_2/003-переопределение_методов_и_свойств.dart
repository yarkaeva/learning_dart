// Производные классы могут определять свои поля и методы, но также могут переопределять, изменять поведение методов базового класса.
// Для этого применяется аннотация @override:

void main() {
  var myCar = Car('Daewoo Nexia', 100, 'Black');
  myCar.start();
}

class Vehicle {
  Vehicle.fromColor(this.color) {
    print('Call Vehicle.fromColor: $color Constructor');
  }

  String color;

  void start() {
    print('Has started');
  }
}

class Car extends Vehicle {
  Car(String carName, int speed, String color) : super.fromColor(color) {
    this.carName = carName;
    this.speed = speed;
    print('Call of Car.Name:$carName, Color: $color');
  }

  late String carName;
  late int speed;

  //переопределение свойств - разобраться
  String get color => super.color; //геттер, возвращаем свойство базового класса

  void set color(String value) {
    //сеттер, будет устанавливать значение данного свойства
    if (value == 'Black') {
      throw ArgumentError('Please, set other color');
    }

    super.color = color;
  }

  @override //аннотация переопределения
  void start() {
    print('The $color $carName');
    //вместо print('Has started'); вызываем реализацию метода из базового класса
    super.start();
    print('Speed: $speed');
  }
}
