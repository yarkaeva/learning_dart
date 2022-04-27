/*Задача 1
Напишите программу, которая выводит на экран числа от 1 до 100. При этом вместо чисел, кратных трем, 
программа должна выводить слово «Super», а вместо чисел, кратных пяти — слово «Quiz». 
Если число кратно и 3, и 5, то программа должна выводить слово «Super Quiz»
 */

/*Задача 2

Определите количество десятичных цифр в целом числе без знака.
Например, 7 представляет собой одну цифру, 33 имеет 2 цифры, а 129955 имеет 6 цифр.
Условие: использовать length нельзя.
Входные данные:
2
555
236455

Выходные данные:
1
3
6 */
/*Задача 3

Вам будет дан год, верните тот век, в котором он находится. 
Первый век охватывает период с 1 года до 100 года включительно,
второй - с 101 года до 200 года включительно и т. д.

Входные данные:

1705
1900
1601
2000

Выходные данные:

18
19
17
20*/

void main() {
//задача 1
  counterFunction();
//задача 2
  print(numbersCount(24));
//задача 3
  print(calculateCentury(1601));
}

void counterFunction() {
  for (int i = 1; i <= 100; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print('Super Quiz');
    } else if (i % 3 == 0) {
      print('Super');
    } else if (i % 5 == 0) {
      print('Quiz');
    }
    print(i);
  }
}

numbersCount(int number) {
  int counter = 0;
  do {
    number ~/= 10;
    counter++;
  } while (number >= 1);
  return counter;
}

calculateCentury(int year) {
  var century = year ~/ 100;
  if (year % 100 != 0) century += 1;
  return century;
}