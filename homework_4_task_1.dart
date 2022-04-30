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
  List<String> strings = ['abcde', 'ab', 'abc']; 

  print(toNumbers(strings));
}

toNumbers(List<String> strings) {
  var result = 0;
  
  for (var i = 0; i < strings.length; i++) {
    
    var string = strings[i].split('');
    
    result += string.length;
  }

  return result;
}
