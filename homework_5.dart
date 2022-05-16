// Задача.
// Определите следующие классы.
// 1) Кубоид
// Конструктор объекта для класса Cuboid должен получить ровно три аргумента в следующем порядке: длина, ширина, высота и сохранить эти три значения в length, width и height соответственно.
// Класс Cuboid должен иметь геттер SurfaceArea, который возвращает площадь поверхности кубоида, и геттер Volume, который возвращает объем кубоида.

// 2) Куб
// Класс Cube является подклассом класса Cuboid. Функция конструктора Cube должна получить только один аргумент, его длину (length) и использовать это переданное значение, чтобы установить length, width и height.
// Подсказка: используйте super, чтобы передать правильные параметры.
// Входные данные:

// Cuboid(1, 2, 3)
// Cube(2)
// Выходные данные:
// Cuboid Volume = 6
// Cuboid Surface Area = 22
// Cube Volume = 8
// Cube Surface Area = 24

void main() {
  Cuboid cuboid = Cuboid(1, 2, 3);
  print('Cuboid Volume: ${cuboid.Volume}');
  print('Cuboid Surface Area: ${cuboid.SurfaceArea}');

  Cube cube = Cube(2);
  print('Cube Volume: ${cube.Volume}');
  print('Cube Surface Area: ${cube.SurfaceArea}');
}

class Cuboid {
  // TODO: зачем здесь late у всех полей? Если поля инициализируеются в конструкторе,
  // TODO: то late не нужен. Так как все поля неизменяемые (немутабельные),
  // TODO: то ставь везде final и делай конструкторы константными (повышает производительность)
  late int length;
  late int width;
  late int height;

  // TODO: я уже писал про то, что по стайлгайду конструктор идет первым.

  // TODO: хороший тон - использовать именованные параметры конструктора, если параметров больше одного
  Cuboid(this.length, this.width, this.height);

  Cuboid.fromLength(var length) {
    this.length = length;
  }

  int get SurfaceArea {
    var surfaceArea = 2 * (length * width + width * height + height * length);
    return surfaceArea;
  }

  int get Volume {
    var volume = length * width * height;
    return volume;
  }
}

class Cube extends Cuboid {
  Cube(int length) : super.fromLength(length) {
    this.width = length;
    this.height = length;
  }
}
