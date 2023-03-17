import 'dart:io';

void main() {
  stdout.writeln('How old are you?');
  int? age = int.parse(stdin.readLineSync() ?? '0');
  if (age >= 21) {
    stdout.writeln('You are very old.');
  } else if (age >= 18 && age <= 20) {
    stdout.writeln('You are old.');
  } else {
    stdout.writeln('You are young.');
  }
}
