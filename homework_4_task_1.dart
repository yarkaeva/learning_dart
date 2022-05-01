// Задача 1.
// Вы получите список строк. Ваша задача вернуть сумму длинны всех строк в списке.
// Пример: [“a”, “ab”, “abc”] => 1 + 2 + 3 = 6
// Условия:
// 1. Список может быть пустым, в этом случае возвращаем 0.
// Входные данные:
// [“a”, “ab”, “abc”]
// [“abcde”, “ab”, “abc”]
// []
// Выходные данные:
// [“a”, “ab”, “abc”] => 6
// [“abcde”, “ab”, “abc”] => 10
// [] => 0

void main() {
  List<String> strings = ['a', 'ab', 'abc'];

  //Решение 1
  print(toNumbers(strings));

  //Решение 2

  var result2 = 0;
  // TODO: здесь лучше использовать for in, он вроде лучше с массивами работает

  // TODO: интересное решение, но почему оно в main? Или это условие такое?
  // TODO: Если нет, то вынеси в getResult() оставшуюся логику.
  for (var i = 0; i < strings.length; i++) {
    result2 = getResult(result2, strings[i].length, (a, b) => (a = a + b));
  }

  print('Решение 2: $result2');
}

// TODO: где возвращаемое значение? Не забывай.
toNumbers(List<String> strings) {
  var result = 0;

  // TODO: если массив пустой, то лучше сразу добавить возвращение нуля, чтобы
  // TODO: цикл не инициализировался.

  // TODO: здесь лучше использовать for in, он вроде лучше с массивами работает
  for (var i = 0; i < strings.length; i++) {
    result += strings[i].length;
  }

  return result;
}

int getResult(int a, int b, Function operation) {
  return operation(a, b);
}
