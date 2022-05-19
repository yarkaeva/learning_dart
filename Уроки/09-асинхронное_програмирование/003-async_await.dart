// Для упрощения написания функций, которые должны выполняться асинхронно, существуют ключевые слова async и await.
// Ключевое слово await можно использовать только в теле тех функций, которые помечены, как async.

import 'dart:html';

void main() {
  print('The Main program: Starts');
  printFileContent();
  print('The Main program: Ends');
}

// можно использовать несколько выражений await, они выполняются друг за другом
printFileContent() async {
  try {
    String time =
        await HttpRequest.getString('https://rebounce.online/api/time');
    print(time);

    String fileContent = await downloadFile();
    print('The content on the file is --> $fileContent');

    String time1 =
        await HttpRequest.getString('https://rebounce.online/api/time');
    print(time1);
  } catch (error) {
    print('Cathing error: $error');
  }
}

Future<String> downloadFile() {
  Future<String> result = Future.delayed(Duration(seconds: 5), () {
    return HttpRequest.getString('https://dart.dev/f/dailyNewsDigest.txt');
  });

  return result;
}
