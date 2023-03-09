/* Class and object*/
/* add word new not is necesary for create object*/
class Person {
  String name;
  int age;

  //constructor
  Person(this.name, [this.age = 18]) {
    this.name = this.name;
    this.age = this.age;
  }

  void showData() {
    print("${name} is ${age}");
  }
}

void main() {
  Person personOne = Person('Ray', 20);
  personOne.showData();
}
