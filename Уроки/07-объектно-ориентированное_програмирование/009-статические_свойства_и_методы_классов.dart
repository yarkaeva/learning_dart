//Преимущества статических полей и методов перед нестатическими заключается в меньшем потреблении памяти.
//Статические поля и методы не инициализируются до того момента, пока они не начнут использоваться в программе.
//Значения статических полей, методов и констант относятся в целом ко всему классу, а не к отдельным объектам(его экземплярам).

void main() {
  Car car = Car('Daewoo Nexia', 'red');
  //  Car.wheels = 4; //если мы хотим обратиться к полю static вне класса, то нужно использовать имя класса. Лучше так не делать.
  Car.setWheels(3);
  car.checkmove();
}

class Car {
  String carName;
  String color;
  static int wheels = 3;
  // TODO: Статические поля лучше сразу const объявлять, а обычные (если они не меняются, чаще всего так и есть) - final.
  static final int wheels2 =
      3; //или const, свойство можно определить как статическую константу

  Car(this.carName, this.color) {
    // TODO: что за t? Лучше сразу нормальные имена использовать)
    var t = time(500, 80);
    print('Time: $t');
  }

  static double time(int dist, double speed) =>
      dist /
      speed; //как правило статические методы выполняют такие вычисления, которые не затрагивают состояние или поведение объекта

  static void setWheels(int value) {
    // в статических методах мы не можем использовать нестатические методы и свойства классов
    if (value == 4) {
      wheels = value;
    } else {
      print('Please,correct value(4)');
    }
  }

  void checkmove() {
    if (wheels < 4) {
      print('The $carName is broken');
    } else {
      print('The $color $carName has started');
    }
  }
}
