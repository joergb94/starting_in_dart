import 'dart:io';

void main() {
  //print on cmd
  stdout.write("hi\n");
  stdout.writeln("What is your name?");

  //read line
  String? name = stdin.readLineSync() ?? 'Empty';
  stdout.writeln('Hello $name!');
}
