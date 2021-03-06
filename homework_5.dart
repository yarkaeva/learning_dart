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
  Cuboid cuboid = Cuboid(
    length: 1,
    width: 2,
    height: 3,
  );
  print('Cuboid Volume: ${cuboid.volume}');
  print('Cuboid Surface Area: ${cuboid.surfaceArea}');

  Cube cube = Cube(2);
  print('Cube Volume: ${cube.volume}');
  print('Cube Surface Area: ${cube.surfaceArea}');
}

class Cuboid {
  const Cuboid({
    required this.length,
    required this.width,
    required this.height,
  });

  final int length;
  final int width;
  final int height;

  int get surfaceArea =>
      2 * (length * width + width * height + height * length);

  int get volume => length * width * height;
}

class Cube extends Cuboid {
  const Cube(int length)
      : super(
          length: length,
          width: length,
          height: length,
        );
}

/* 
Материалы для изучения:
1) Лямбда-нотация: https://itchef.ru/articles/162139/
2) Форматирование с помощью запятых: https://docs.flutter.dev/development/tools/formatting#using-trailing-commas
3) Правила именования: https://medium.com/@farhanaslam910/naming-convention-in-dart-programming-language-flutter-95feda7a8f4b
*/
