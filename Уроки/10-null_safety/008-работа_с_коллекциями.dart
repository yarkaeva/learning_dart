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
}
