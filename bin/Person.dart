import 'dart:math';
import 'dart:io';

class Person {
  String name;
  int age;
  String dni;
  String sex;
  double weight;
  double height;

  Person(
    String dni, [
    String name = 'none',
    int age = 0,
    String sex = 'M',
    double weight = 0.0,
    double height = 0.0,
  ]) {
    this.name = name;
    this.age = age;
    this.sex = checkSex();
    this.weight = weight;
    this.height = height;
    this.dni = dni;
  }

  Person.noWHD(String name, int age, String sex) {
    this.name = name;
    this.age = age;
    this.sex = checkSex();
    this.weight = 0.0;
    this.height = 0.0;
    this.dni = generateDNI();
  }

  String generateDNI() {
    var rndnumber = "E";
    var rnd = new Random();
    for (var i = 0; i < 7; i++) {
      rndnumber = rndnumber + rnd.nextInt(9).toString();
    }
    return rndnumber;
  }

  //methods
  int calculateIMC() {
    double imc = 0;
    int request = 0;
    imc = (this.weight) / (this.height * this.height);

    if (imc < 20) {
      request = -1;
    } else if (imc >= 20 && imc <= 25) {
      request = 0;
    } else {
      request = 1;
    }

    return request;
  }

  bool isAdulot() {
    bool adult = (this.age > 18) ? true : false;
    return adult;
  }

  String checkSex() {
    String verifysex = 'H';
    if (this.sex != 'H' || this.sex != 'M') {
      this.sex = verifysex;
    } else {
      verifysex = this.sex;
    }
    return verifysex;
  }

  void showData() {
    print(this.name);
    print(this.age);
    print(this.sex);
    print(this.weight);
    print(this.height);
    print(this.dni);
  }
}

void main() {
  Person x = Person.noWHD('ray', 11, 'h');
  x.showData();
}
