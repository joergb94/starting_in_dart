import 'dart:io';

String get_input() {
  String result = stdin.readLineSync() ?? '';
  return result;
}

String titles({required int user, int title = 1}) {
  String result = '=========== Usuer${user} =============';
  if (title > 1) {
    result = 'User${user} without deduction';
  }
  return result;
}

String get_question([int $n = 1]) {
  List<String> questions = const [
    'What is your name?',
    'How old are you?',
    'Where are you from?',
    'jimenez'
  ];

  return questions[$n];
}

List<String> clean_answers() {
  List<String> result = [];
  return result;
}

void get_salary(Map user, [double salario = 1500]) {
  double deducciones = salario * 0.15;
  double salarioNeto = salario - deducciones;
  user['salario'] = salario;
  user['deducciones'] = deducciones;
  user['salarioNeto'] = salarioNeto;
}

main() {
  // Ejemplo:
  // Crear una función para imprimir STDOUTS en lugar de
  // la siguiente línea. Luego todos los stdouts deberían ser
  // llamados usando nuestra función personalizada
  Map users = new Map<int, dynamic>();
  Map mapUser1 = {'name': '', 'age': 1, '': 'X'};
  Map mapUse2 = {'name': '', 'age': 1, 10: 'X'};
  stdout.writeln(titles(user: 1, title: 1));
  stdout.writeln(get_question(0));
  mapUser1['name'] = get_input();

  stdout.writeln(get_question(1));
  mapUser1['age'] = get_input();

  stdout.writeln(get_question(2));
  mapUser1['country'] = get_input();

  stdout.writeln(titles(user: 1, title: 2));
  stdout.writeln(mapUser1);
  get_salary(mapUser1, 1500);
  stdout.writeln(mapUser1);

  // Persona 2
  stdout.writeln(titles(user: 2, title: 1));

  stdout.writeln(get_question(0));
  mapUse2['name'] = get_input();

  stdout.writeln(get_question(1));
  mapUse2['age'] = get_input();

  stdout.writeln(get_question(2));
  mapUse2['country'] = get_input();

  stdout.writeln(titles(user: 2, title: 2));
  stdout.writeln(mapUse2);
  get_salary(mapUse2, 1800);

  stdout.writeln(mapUse2);
}
