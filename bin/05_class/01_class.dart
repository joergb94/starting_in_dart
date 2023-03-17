import 'classFile/Person.dart';

void main(List<String> args) {
  Person person = new Person(name: 'Ray', age: 23);

  print(person.toString());
  print(person.job);
  person.set_job = "Software Engineer";
  print(person.job);

  final person2 = new Person(name: 'Jose', age: 29);
  /*
    person2
    ..name = "Ray"
    ..age = 18;
*/
  print('----');
  print(person2.toString());
  print('----');

  final person3 = new Person();
  print(person3.toString());

  print('----');

  final person4 = new Person.noageAndjob('Ray');
  print(person4.toString());
}
