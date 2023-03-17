import 'dart:io';

void main(List<String> args) {
  stdout.writeln('Add your multiplication table?');
  int? number = int.parse(stdin.readLineSync() ?? '0');

  for (int i = 0; i < 10; i++) {
    print('hellow word ${number * (i + 1)}');
  }
}
