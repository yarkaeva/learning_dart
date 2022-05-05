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

  print('Решение 1: ${getTotalStringsLengthFirst(strings)}');

  print('Решение 2: ${getTotalStringsLengthSecond(
    strings,
    (a, b) => (a = a + b),
  )}');
}

int getTotalStringsLengthFirst(List<String> strings) {
  if (strings.isEmpty) {
    return 0;
  }

  var result = 0;

  for (var string in strings) {
    result += string.length;
  }

  return result;
}

int getTotalStringsLengthSecond(List<String> strings, Function operation) {
  var result = 0;

  for (var string in strings) {
    result = operation(result, string.length);
  }

  return result;
}
