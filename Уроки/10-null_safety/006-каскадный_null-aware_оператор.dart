//Sound Null Safety

//..? -  cascade null-aware operator

void main() {
  Path path = Path();
  Path? path2;
  // чтобы сделать каскадный оператор нужно заменить имя переменной на '..'. (будет выполняться только если path не равен null):
  path
    ..moveTo(0, 0)
    ..lineTo(0, 2)
    ..lineTo(2, 2);
  // можно обрабатыват null значения
  path2
    ?..moveTo(0, 0)
    ..lineTo(0, 2)
    ..lineTo(2, 2);

  //было так:
  // path.moveTo(0, 0);
  // path.lineTo(0, 2);
  // path.lineTo(2, 2);
}

class Path {
  void moveTo(int x, int y) {}
  void lineTo(int x, int y) {}
}
