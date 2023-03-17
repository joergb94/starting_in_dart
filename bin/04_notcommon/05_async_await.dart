import 'dart:io';

void main(List<String> args) async {
  ReadingFile('\\bin\\04_notcommon\\assets\\personas.txt').then(print);

  String text = await ReadingFileA('\\bin\\04_notcommon\\assets\\personas.txt');
  print(text);
  print('end main');
}

Future<String> ReadingFile(String path) {
  File file = new File(Directory.current.path + path);
  return file.readAsString();
}

Future<String> ReadingFileA(String path) async {
  File file = new File(Directory.current.path + path);
  return file.readAsString();
}
