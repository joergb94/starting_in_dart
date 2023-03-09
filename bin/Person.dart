import 'dart:math';
import 'dart:io';

class Person {
  String name;
  int age;
  String dni;
  String sex;
  double weight;
  double height;

  /// The function takes a String dni as a required parameter, and then takes a String name, an int age,
  /// a String sex, a double weight, and a double height as optional parameters
  ///
  /// Args:
  ///   dni (String): String
  ///   name (String): String. Defaults to none
  ///   age (int): int. Defaults to 0
  ///   sex (String): M or F. Defaults to M
  ///   weight (double): double. Defaults to 0.0
  ///   height (double): double. Defaults to 0.0
  Person(this.dni,
      [this.name = 'none',
      this.age = 0,
      this.sex = 'M',
      this.weight = 0.0,
      this.height = 0.0]) {
    this.sex = checkSex();
  }

  Person.noWHD(this.name, this.age, this.sex,
      [this.dni = '', this.weight = 0.0, this.height = 0.0]) {
    this.sex = checkSex();
    this.dni = generateDNI();
  }

  /// It generates a random number between 0 and 9, and then adds it to the string "E" 7 times
  ///
  /// Returns:
  ///   A string with the format "E" + 7 random numbers.
  String generateDNI() {
    var rndnumber = "E";
    var rnd = new Random();
    for (var i = 0; i < 7; i++) {
      rndnumber = rndnumber + rnd.nextInt(9).toString();
    }
    return rndnumber;
  }

  //methods

  /// It takes the weight and height of a person and returns a number that represents the person's BMI
  ///
  /// Returns:
  ///   The request variable is being returned.
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
