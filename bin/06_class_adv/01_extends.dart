class Auto {
  bool auto_on = false;

  void turn_on() {
    auto_on = true;
    print('turn on auto');
  }

  void turn_off() {
    auto_on = false;
    print('turn off auto');
  }
}

class Car extends Auto {
  int mileage = 0;
}

void main(List<String> args) {
  Car x = new Car();
  x.turn_on();
}
