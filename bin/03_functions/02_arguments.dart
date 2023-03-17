void send_help(String message, [String name = "insert name", int age = 20]) {
  print('$message $name you are $age years old');
}

void send_help2({String? message, required String name, int? age}) {
  print('$message $name you are $age years old');
}

void send_help3(String? message, {required String name, int age = 10}) {
  print('$message $name you are $age years old');
}

void main(List<String> args) {
  send_help('put name', 'ray', 10);

  send_help2(message: 'put name', name: 'ray', age: 10);

  send_help3('put name', name: 'ray', age: 10);
}
