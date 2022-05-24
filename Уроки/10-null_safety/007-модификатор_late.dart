//Sound Null Safety

// Модификатор late добавлен вместе с null safety
// 1. Late variables
// 2. Lazy initialization
// 3. Late final variables

// С приходом null safety все глобальные переменные должны быть инициализированы при объявлении. Можно использовать модификатор late, чтобы иниц. её позже
late int global;

void main() {
  // var pizza = Pizza();
  // print(pizza.printPizza());

  late var pizza2 = Pizza().printPizza();
  // 2. Lazy initialization. (из-за late) если мы не обратимся к перемен. pizza2, метод .printPizza() не запустится на обработку.
  // print(pizza2); // обращаемся к перемен. pizza2, метод .printPizza() запускается

  global = 1;
  print(global);
}

class Pizza {
  Pizza() {
    id = 1;
    name = 'Spring';
    price = 30;
    // инициализация в теле конструктора
  }

  // 1. Late variables - добавить переменным модификатор late значит,что 'переменные не проинициализированы в данный момент, но проинициализируются потом при первом доступе к ним'.
  // В нашем примере в теле конструктора
  late int id;
  late String name;
  late final double price;
  // 3. Late final variables. В отличие от обычных final полей, поля с модификатором late не нужно инициализировать в параметрах или списках инициализации конструктора, а можно назначить их позже во время выполнения программы.
  // Но можно назначить его только 1 раз, и этот факт проверяется во время выполнения.

  String printPizza() {
    print('Cooking pizza...^^');
    return 'Pizza($id): $name, price: $price';
  }
}
