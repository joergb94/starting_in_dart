void main(List<String> args) {
  Future timeout = Future.delayed(Duration(seconds: 3), () {
    print("after 3 seconds");
    return 'Return future';
  });

  timeout.then((text) => print(text));
  timeout.then(print);

  print('End main');
}
