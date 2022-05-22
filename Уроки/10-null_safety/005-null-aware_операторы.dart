// Null-aware операторы:

// 1.	If-null оператор (??)
// 2.	??= оператор присваивания
// 3.	?. оператор доступа
// 4.	! оператор утверждения (bang оператор)
// 5.	as оператор преобразования типов
// 6. ?.. -  cascade null-aware operator (в след. файле)

void main() {
  print(someValue(25));
  print(someValue(null));

  int? age;
  age ??= 20;
  //2.	??= оператор присваивания , т.е. он присваивает значение переменной, только если переменная имеет значение null
  print(age);

  print(absoluteValue(25));
  print(absoluteValue(null));

  print(someValue2(25));
  print(someValue2(null));

  num? value = 10;
  num otherValue = value as int;
  //5.   as оператор преобразования типов, явным образом преобразует переменную в указанный тип, если тип среды выполнения явно совместим с этим типом.
  print(otherValue);
}

int someValue(int? value) {
  // return value == null ? 0 : value; // проверку на null можно сделать через тернарную операцию. равноценно:
  return value ?? 0;
  // 1. if-null operator, читаем так: 'если есть значение, то выводим его, если приходит null, то выводим 0'
}

int? absoluteValue(int? value) {
  return value?.abs() ?? 0;
  //3.	?. оператор доступа равнозначен проверке на null, если значение null, то метод abs не вызовется. Хорошо работает с if-null.
}

int someValue2(int? value) {
  return value!;
  //4.  ! оператор утверждения (bang оператор), использовать, если точно уверена, что не будет значения null. При значении null, будет сгенерировано исключение. Лучше использовать другие проверки
}
