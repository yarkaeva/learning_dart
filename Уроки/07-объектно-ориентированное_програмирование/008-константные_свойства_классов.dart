// Значения констант классов должны быть установлены до вызова конструктора. Это может происходить:
// 1.	при определении констант.
// 2.	через параметр конструктора.
// 3.	с помощью инициализатора.

void main() {
  Car car = Car('Daewoo Nexia', 45);
  car.move();
  print(car.wheels);

  CarSecondWay car2 = CarSecondWay('Ford', 23, 4);
  car2.move();
  print(car2.wheels);

  CarThirdWay car3 = CarThirdWay('Lada', 89, 2);
  car3.move();
  print(car3.wheels);
}

// TODO: по стайлгайду (https://github.com/flutter/flutter/wiki/Style-guide-for-Flutter-repo#constructors-come-first-in-a-class),
// TODO: который пишут сами авторы языка конструкторы идут до полей. Поправь и привыкай к этому.
// TODO: Вроде мелочь, но лучше сразу придерживаться официальных рекомендаций.
// TODO: Код скомпилится и так, но лучше сразу учиться делать правильно)
class Car {
  Car(this.carName, this.percentWay);

  String carName;
  double percentWay;
  final int wheels = 4; //при определении константы

  void move() {
    print('The $carName has started. Percent way: $percentWay');
  }
}

class CarSecondWay {
  String carName;
  double percentWay;
  final int wheels;

  CarSecondWay(this.carName, this.percentWay,
      this.wheels); //через параметр конструктора.

  void move() {
    print('The $carName has started. Percent way: $percentWay');
  }
}

class CarThirdWay {
  late String carName;
  late int percentWay;
  final int wheels;

  CarThirdWay(carName, percentWay, wheel) : wheels = wheel + 2 {
    //с помощью инициализатора.
    this.carName = carName;
    this.percentWay = percentWay;
  }

  void move() {
    print('The $carName has started. Percent way: $percentWay');
  }
}
