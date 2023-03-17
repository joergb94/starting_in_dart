void main(List<String> args) {
  get_user(100, (Map user) {
    print(user);
  });
}

void get_user(id, Function callback) {
  Map user = {
    'id': id,
    'name': 'Joseph',
  };

  callback(user);
}
