//Sound Null Safety

// Positional mandatory = f(int x) обязательные параметры
// Poitional optional   = f([int x]) необязательные параметры
// Named optional       = f({int x}) именнованные необязательные параметры
// Named mandatory      = ??? c приходом null safety появляется еще один тип параметров - именнованые обязательные параметры, которые могут допускать null

void main() {
  var pizza = Pizza(
    id: 1,
    price: null,
  );
  print(pizza.printPizza());
}

class Pizza {
  Pizza({
    required this.id, // модификатор required - 'обязательный', ему нельзя назначать зн.по умолчанию, non-nullable
    this.name = 'Spring', // зн.по умолчанию
    required this.price, // обязательный, именованный, допускающий null(т.к. 'final double? price;')
  });

  // Pizza(this.id, this.name, [this.price = 10]);
  // если необязательный параметр имеет тип non-nullable, то по умолчанию мы обязаны присвоить ему зн.

  final int id;
  final String name;
  final double? price;

  String printPizza() {
    print('Cooking pizza...^^');
    return 'Pizza($id): $name, price: ${price ?? 'No price'}';
  }
}
