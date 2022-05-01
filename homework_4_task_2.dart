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

  // Вариант решения 1 (без использования функции);
  print(getNumber(numbers));

  // TODO: Тут все нормально, но цикл вынеси в getResult(). В main ты должна
  // TODO: просто вызывать функцию и передавать туда значения (в данном случае ещё и анонимную функцию)

//вариант решения 2 (с использованием анонимной функции);

  var result2 = 0;

  for (var number1 in numbers) {
    if (number1 > 0) {
      result2 = getResult(result2, number1, (a, b) => a = a + b);
    }
  }
  print('Решение 2: $result2');
}

int getResult(int a, int b, Function operation) {
  return operation(a, b);
}

int getNumber(List<int> numbers) {
  var result = 0;

  for (var number in numbers) {
    if (number > 0) result += number;
  }

  return result;
}
