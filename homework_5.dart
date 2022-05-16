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
  Cuboid cuboid = Cuboid(length: 1, width: 2, height: 3);
  print('Cuboid Volume: ${cuboid.Volume}');
  print('Cuboid Surface Area: ${cuboid.SurfaceArea}');

  Cube cube = Cube(2);
  print('Cube Volume: ${cube.Volume}');
  print('Cube Surface Area: ${cube.SurfaceArea}');
}

class Cuboid {
  const Cuboid(
      {required this.length, required this.width, required this.height});

  final int length;
  final int width;
  final int height;

  int get SurfaceArea {
    int surfaceArea = 2 * (length * width + width * height + height * length);
    return surfaceArea;
  }

  int get Volume {
    int volume = length * width * height;
    return volume;
  }
}

class Cube extends Cuboid {
  Cube(int length) : super(length: length, width: length, height: length);
}
