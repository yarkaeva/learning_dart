// Dart – однопоточный язык программирования. Он может выполнять только одну задачу в одно время. Тем не менее благодаря реализации цикла событий (event loop) и двух очередей событий (event queue и microTask queue) он позволяет асинхронно выполнять различные задачи. 
// Основной поток обрабатывает все события пользовательского интерфейса, в частности, нажатие кнопок, касания экрана и т.д, а благодаря асинхронности можно, например, загружать файлы в фоновом режиме и не "тормозить" работу приложения.
// К наиболее частым задачам, где код должен выполняться асинхронно можно отнести:
// − получение данных по сети;
// − запись в базу данных;
// − чтение данных из файла.

// 1) Синхронная функция возвращает обычный результат. Например, return String

// 2) Асинхронная функция возвращает объект Future (futures). Например, return Future<String>

// Под future понимается объект, представляющий собой результат вычисления, которое, возможно, еще не произошло и его результат может быть известен когда-нибудь в будущем. Говоря простыми словами,
// future – экземпляр класса Future<T>, позволяющий нам писать асинхронный код и предоставляющий доступ к результату вычисления, где Т – тип возвращаемого результата
import 'dart:html';

void main() {
  print('The Main program: Starts');
  printFileContent();
  print('The Main program: Ends');
}

printFileContent() {
  Future<String> fileContent = downloadFile();
  fileContent.then((resultString) {
    print('The content on the file is --> $resultString');
  }).catchError((eror) => print('The file not found')); //обработка ошибки 
}

Future<String> downloadFile() {
  Future<String> result = Future.delayed(Duration(seconds: 5), () {
    return HttpRequest.getString('https://dart.dev/f/dailyNewsDigest.txt');
  });

  return result;
}
