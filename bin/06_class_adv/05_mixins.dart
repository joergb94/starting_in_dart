mixin Logger {
  void print_log(String text) {
    final today = DateTime.now();
    print('$today :::: $text');
  }
}

mixin Logger2 {
  void print_log(String text) {
    final today = DateTime.now();
    print('Second $today :::: $text');
  }
}

abstract class Astro with Logger {
  String? name;
  Astro() {
    print_log('INITIAL ASTRO');
  }

  void exists_this() {
    print_log('EXISTS');
  }
}

class Asteroide extends Astro with Logger2 {
  String? name;
  Asteroide(this.name);

  void exist_2() {
    print_log('Asteroide exist_2 ${this.name}');
  }
}

void main(List<String> args) {
  Asteroide x = new Asteroide('Deltas');
  x.exists_this();
  x.exist_2();
}
