//Sound Null Safety

// ?[] - null-aware оператор доступа по индексу

void main() {
  //1. список non-nullable, значения nullable
  List<String?> nullableValues = [null, 'NY', null, 'Moscow', 'London'];

  nullableValues[0] ??= 'SPB';
  // проверка на null, оператор присваивания, значение 'SPB' присвоится, только если если придет null.
  print(nullableValues);

  String someString = nullableValues[2] ?? 'Vologda';
  // проверка на null, оператор if null,если придет null, то отдадим значение 'Vologda', а иначе - значение элемента.
  print(someString);

  // 2. список nullable, значения non-nullable. такой список может быть сам null, но не может хранить значения null.
  // При попытке присвоить элементу списка значение null появляется ошибка.
  List<String>? nullableList;
  // но используя bang оператор (точно знаю, что значение не null) и обратившись к элементу по индексу, мы получаем ошибку 'Null check operator used on a null value'.
  // print(nullableList![0]);
  // чтобы совершить проверку по индексу нужно воспользоваться null-aware оператор доступа по индексу ?[]
  print(nullableList?[0]);
  // получит null, программа не упадет

  // 3. список nullable, значения nullable
  List<String?>? nullableListAndNullableValue = [null, 'String'];
  print(nullableListAndNullableValue[0]);
  // здесь не нужен оператор доступа по индексу, тк nullable

  nullableListAndNullableValue[0] ??= 'Int';
  print(nullableListAndNullableValue);

  nullableListAndNullableValue[0] ?? 'Vologda';
  print(nullableListAndNullableValue);

  // 1. non-nullable Map и non-nullable значения
  Map<String, int> categories = {'kitchen': 1, 'bedroom': 2};
  // если мы будем обращаться по ключу, которого нет в Map, то всегда будем получать значение null
  print(categories['Room']);

  int value1 = categories['Room'] ?? 3;
  // присвоили несуществующему ключу значение 3 вместо null
  print(value1);

  // добавили в Map элемент с ключем 'Room' и значением 3, тк использовали оператор присваивания
  int value2 = categories['Room'] ??= 3;
  print(value2);

// обращаемся по ключу и вытаскиваем значение двумя способами:
  int? value3 = categories['kitchen'];
  print(value3);
  int value4 = categories['kitchen']!;
  print(value4);

  print(categories); // Выведет :{kitchen: 1, bedroom: 2, Room: 3}

  // 2. nullable Map, может быть null, и может содержать non-nullable пары, принимать null не может
  Map<String, int>? nullableMap;
  // 3. сам Map не может быть null, но может принимать значения null
  Map<String, int?> nullableValuesMap = {'null': null};
  // 4. сам Map может быть null и может принимать значения null
  Map<String, int?>? nullableMapAndNullableValues;
}
