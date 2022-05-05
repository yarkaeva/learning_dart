// Задача 2.
// Вы получите список чисел. Ваша задача вернуть сумму всех положительных чисел.
// Пример: [1, -10, 9, -1] => 1 + 9 = 10
// Условия:
// 1. Список может быть пустым, в этом случае возвращаем 0.
// 2. Если в списке все отрицательные значения, то вернуть 0.
// Входные данные:
// [1, -10, 9, -1]
// [-1, -2, -3]
// []
// [1, 2]
// Выходные данные
// [1, -10, 9, -1] => 10
// [-1, -2, -3] => 0
// [] => 0
// [1, 2] => 3

void main() {
  List<int> numbers = [1, -10, 9, -1];

  print('Решение 1: ${SumOfPositiveNumbers(numbers)}');

  print('Решение 2: ${SumOfPositiveNumbersSecond(
    numbers,
    (a, b) => (a = a + b),
  )}');
}

int SumOfPositiveNumbers(List<int> numbers) {
  var result = 0;

  for (var number in numbers) {
    if (number > 0) {
      result += number;
    }
  }

  return result;
}

int SumOfPositiveNumbersSecond(List<int> numbers, Function operation) {
  var result = 0;

  for (var number in numbers) {
    if (number > 0) {
      result = operation(result, number);
    }
  }

  return result;
}
