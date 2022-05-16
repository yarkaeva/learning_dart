// В языке дарт мы не можем наследовать класс от нескольких классов. Для решения этой проблемы в дарт применяется реализация интерфейсов.
// Интерфейс - не отдельная сущность, а тот же класс. Класс в дарт одновременно выступает в роли интерфейса, и другой класс может его реализовать.
// implements - оператор для реализации интерфейсов
// Таким образом, если в случае с наследованием мы наследуем состояние и поведение, то в случае с интерфейсом – объявляем
// контракт, которому должен следовать класс реализующий интерфейс.

void main() {
  var vehicle = Vehicle('ford', 100);

  vehicle.move();
  vehicle.speedMove();
}

class Car {
  Car(this.name);

  String name;

  void move() {
    print('The $name has started');
  }
}

class Train {
  late int speed;

  void speedMove() {
    print('The Train has started with $speed');
  }
}

// реализация интерфейсов классов Car и Train, что означает: класс Vehicle должен реализовать все поля и методы, которые определены в этих классах
class Vehicle implements Car, Train {
  Vehicle(this.name, this.speed);

  String name; //реализация свойства name из Car
  int speed; //реализация свойства speed из Train

  void move() {
    print('The $name has started');
  }

  void speedMove() {
    print('with speed: $speed');
  }
}
