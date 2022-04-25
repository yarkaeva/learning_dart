void main() {
  final strings = [
    'dart',
    'abc',
    'good luck',
  ];

  print(
    wordValue(strings),
  );
}

// Вам дана строка «abc» и предполагая, что каждая буква в строке имеет значение,
// равное ее позиции в алфавите, то наша строка будет иметь значение 1 + 2 + 3 = 6.
// Это означает, что: a = 1, b = 2, c = 3 .... z = 26.

// Вам будет предоставлен список строк, и ваша задача будет вернуть значения строк,
// умноженные на позицию этой строки в списке. Позиция начинается с 1.

// Например: wordValue ["abc", "abc abc"] должно вернуть [6, 24] или [6 * 1, 12 * 2].
// Обратите внимание, что пробелы игнорируются. «abc» имеет значение 6,
// а «abc abc» - значение 12. Теперь значение в позиции 1 умножается на 1,
// а значение в позиции 2 умножается на 2. Ввод будет содержать только строчные буквы и пробелы.

// Входные данные:
// Дан список строк - ["dart", "abc", "good luck"]
// Выходные данные:
// Вы должны получить список со значениями – [43, 12, 264]

List<int> wordValue(List<String> strings) {
  // Массив букв алфавита. Необходим для вычисления их 'ценности'.
  final alphabet = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z',
  ];

  // Массив, который мы будем возвращать в результате
  List<int> result = [];

  for (var i = 0; i < strings.length; i++) {
    // Значение, которое мы будем добавлять в результат.
    int value = 0;
    // Разбиваем строку на отдельные символы
    final chars = strings[i].split('');

    // Внутренний цикл, чтобы пробежаться по символам и определить их ценность.
    // Цикл - разновидность for, называется for in. Почитай, как будет время.
    for (var char in chars) {
      value += alphabet.indexOf(char) + 1;
    }

    // Умножаем значение на позицию в массиве
    value *= i + 1;
    // Добавляем результат в массив
    result.add(value);
  }

  return result;
}
