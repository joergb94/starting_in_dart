import 'dart:math';
import 'dart:io';
import 'dart:core';

class Password {
  String pass;
  String letters = "abcdefghijklmnopqrstuvwxyz";
  String numbers = "1234567890";

  Password([String pass = '']) {
    this.pass = pass.length > 0 ? pass : RandomPassword();
  }

  bool isStrong() {
    int check = 0;
    final validateUppercase = RegExp('[a-z0-9]');
    final validateLowercase = RegExp('[A-Z0-9]');
    final validateNumber = RegExp('[a-zA-Z]');

    final uppercase = this.pass.split(validateUppercase);
    final lowercase = this.pass.split(validateLowercase);
    final numbers = this.pass.split(validateNumber);

    int checkUppercase = uppercase.join().length > 1 ? 1 : 0;
    int checklowercase = lowercase.join().length > 0 ? 1 : 0;
    int checknumbers = numbers.join().length > 4 ? 1 : 0;

    check = checknumbers + checklowercase + checkUppercase;

    return check == 3 ? true : false;
  }

  String RandomPassword() {
    String resultU = '';
    String resultL = '';
    String resultN = '';
    String new_password = '';

    Random rnd = new Random(new DateTime.now().millisecondsSinceEpoch);
    Random random = new Random();
    int randomNumber = random.nextInt(100);

    for (var i = 0; i < 2; i++) {
      resultU += letters[rnd.nextInt(letters.length)];
    }
    for (var i = 0; i < 1; i++) {
      resultL += letters[rnd.nextInt(letters.length)];
    }
    for (var i = 0; i < 5; i++) {
      resultN += numbers[rnd.nextInt(numbers.length)];
    }

    new_password = '${resultU.toUpperCase()}${resultL}${resultN}';

    return new_password;
  }

  void generatePassword() {
    this.pass = RandomPassword();
  }

  void get_password() {
    print('Password:${this.pass}');
    print('Length: ${this.pass.length}');
  }

  void showData() {
    print(this.pass);
    print(isStrong());
  }
}

void main() {
  Password x = Password('RAy12345');
  x.showData();
  x.generatePassword();
  x.showData();
  x.get_password();
}
