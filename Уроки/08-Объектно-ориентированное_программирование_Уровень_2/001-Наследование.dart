//Наследование позволяет предавать одним классам функционал других. Реализуется с помощью ключевого слова extends.

void main(){
  var myCar = Car();
  myCar.carName = 'BMW';
  myCar.color = 'Red';
  myCar.start();
  myCar.open();

  print('');

  var myMoto = Moto();
  myMoto.type = 'Sportbike';
  myMoto.color = 'Green';
  myMoto.start();
  myMoto.roll();
}

// С помощью наследования мы можем определить базовый класс Vehicle, в котором находятся общие свойства и методы для Moto и Car 
class Vehicle { //super class or parent class
  late String color;

  void start(){
    print('Has started');
  }
}

class Car extends Vehicle { //sub class or child class
  late String carName;
 
  void open(){
    print('Open door');
  }
}

class Moto extends Vehicle { //sub class or child class
  late String type;

  void roll(){
    print('Rolled over in the air');
  }
}
