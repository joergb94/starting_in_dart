abstract class Auto {
  bool auto_on = false;

  void turn_on() {
    auto_on = true;
    print('turn on auto');
  }

  void turn_off() {
    auto_on = false;
    print('turn off auto');
  }

  bool check_in();
}

class Car extends Auto {
  int mileage = 0;

  @override
  bool check_in() {
    print('the car is okay!');
    return true;
  }
}

void main(List<String> args) {
  Car x = new Car();
  x.turn_on();
  x.turn_off();
  x.check_in();
}
