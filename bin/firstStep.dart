/* Class and object*/
/* add word new not is necesary for create object*/
class Person {
  String name;
  int age;

  //constructor
  Person(String nameC, [int ageC = 18]) {
    this.name = nameC;
    this.age = ageC;
  }

  void showData() {
    print("${name} is ${age}");
  }
}

void main() {
  Person personOne = Person('Ray', 20);
  personOne.showData();
}
