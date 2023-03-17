void main(List<String> args) {
  Future timeout = Future.delayed(Duration(seconds: 3), () {
    if (1 == 1) {
      throw 'WARNING';
    }
    return 'Return future';
  });

  //with messages error
  timeout.then((text) => print(text));

  //without messages error
  timeout.then(print).catchError((error) => print(error));

  print('End main');
}
