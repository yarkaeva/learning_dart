void main() {
  var myCar = Car();
  myCar.carName = 'Ford'; // используется "сеттер" по умолчанию
  print(myCar.carName); // используется "геттер" по умолчанию

  myCar.percentage = 23.5; //вызываем собственный "сеттер"
  print(myCar.percentage); //вызываем собственный "геттер"
}

class Car {
  late String carName;
  late double _percentWay; //приватное значение

  void set percentage(double per) {
    _percentWay = (per > 100 || per < 0) ? _percentWay = 0 : _percentWay = per;
  }

  double get percentage {
    return _percentWay;
  }

  // TODO: для таких выражений, как выше, можно использовать лямбду:
  // double get percentage => _percentWay;
  // Так удобнее читать
}
