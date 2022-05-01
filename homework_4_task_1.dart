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

  // TODO: интересное решение, но почему оно в main? Или это условие такое?
  // TODO: Если нет, то вынеси в getResult() оставшуюся логику.
  for (var string in strings) { //исправила на for in
    result2 = getResult(result2, string.length, (a, b) => (a = a + b));
  }

  print('Решение 2: $result2');
}

// TODO: где возвращаемое значение? Не забывай.
int toNumbers(List<String> strings) {
  if (strings.isEmpty) return 0; // добавила возвращение нуля

  var result = 0;

  for (var string in strings) { //исправила на for in
    result += string.length;
  }

  return result; //это же возвращаемое значение? по условию нужно вернуть просто int: [“a”, “ab”, “abc”] => 6
}

int getResult(int a, int b, Function operation) {
  return operation(a, b);
}
