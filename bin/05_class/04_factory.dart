class Rectangel {
  int? base;
  int? height;
  int? area;
  String? type;

  factory Rectangel(int base, int height) {
    if (base == height) {
      return Rectangel.square(base);
    } else {
      return Rectangel.rectangle(base, height);
    }
  }

  Rectangel.square(int base) {
    this.base = base;
    this.height = base;
    this.area = (base * base) == 0 ? 0 : base * base;
    this.type = "square";
  }

  Rectangel.rectangle(int base, int height) {
    this.base = base;
    this.height = height;
    this.area = (base * height) == 0 ? 0 : base * height;
    this.type = "rectangle";
  }

  @override
  String toString() {
    // TODO: implement toString
    return {'base': base, 'height': height, 'area': area, 'type': type}
        .toString();
  }
}

void main(List<String> args) {
  final x = new Rectangel(1, 2);
  print(x);
}
