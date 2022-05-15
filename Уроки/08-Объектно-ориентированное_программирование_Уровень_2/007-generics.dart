// Generics или обобщения позволяют добавить программе гибкости и уйти от жесткой привязки к определенным типам. 
// Иногда возникает необходимость, определить функционал таким образом, чтобы он мог использовать данные любых типов.

void main() {

  Car car = Car('2', 'daewoo nexia');
  print(car.id.runtimeType);
  car.move('100');

  Car car1 = Car(1, 'Ford');
  print(car1.id.runtimeType);
  car.move(100);
  
}

// С помощью выражения <T> мы указываем, что класс Сar типизирован определенным типом T. T еще называется универсальным параметром.
class Car<T> { // обобщенный тип
  T id;
  String carName;

  Car(this.id, this.carName);

  void move<T>(T speed) { // обобщенный метод
    print('The $carName. ID number: $id. Speed car: $speed');
  }
}
