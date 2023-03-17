import 'dart:io';

void main(List<String> args) {
  String continue_execute = 'Y';
  int n = 0;
  while (continue_execute == 'Y') {
    n++;
    stdout.writeln('Counting: ${n}');
    continue_execute = stdin.readLineSync() ?? '0';
  }
}
