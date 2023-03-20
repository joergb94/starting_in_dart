/* Class and object*/
/* add word new not is necesary for create object*/
class Person {
  String name;
  int age;

  //constructor
  Person(this.name, [this.age = 18]);

  //name constructors
  Person.gest([this.name = "Guest", this.age = 0]);

  Person.noAge(this.name, [this.age = 0]);

  void showData() {
    print("${name} is ${age}");
  }
}

/* if user final in the class you need set value, the atribute is private*/
class PersonX {
  final name;
  static const int age = 10;

  PersonX(this.name);
}

void main() {
  Person personOne = Person('Ray', 20);
  personOne.showData();

  Person personTwo = Person('Jose');
  personTwo.showData();

  Person personThree = Person.gest();
  personThree.showData();

  Person personFour = Person.noAge('Wiliam');
  personFour.showData();

  PersonX x = PersonX("Mario");
  print(x.name);
}
