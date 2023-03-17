import 'dart:io';

void main(List<String> args) {
  print(Directory.current.path);
  File file = new File(
      Directory.current.path + '\\bin\\04_notcommon\\assets\\personas.txt');
  File file2 = new File(
      Directory.current.path + '/bin/04_notcommon/assets/personas.txt');

  String fasinc = file.readAsStringSync();
  Future<String> f = file.readAsString();
  Future<String> f2 = file2.readAsString();
  print(fasinc);
  f.then(print);
  f2.then(print);

  print('end main');
}
