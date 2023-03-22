class Person {
  String name;
  int age;
  Person(this.name, this.age);

  void printData() => print("$name is $age");
}

class Client extends Person {
  String adrees = "60";
  List orders = [];

  Client(int age_now, String name_now) : super(name_now, age_now);

  @override
  void printData() {
    super.printData();
    print("02 $name is $age and your adrees is $adrees");
  }
}

void main(List<String> args) {
  final yo = new Client(29, 'ray');
  yo.printData();
}
