class Tools {
  static const List<String> list = ['hammer', 'wrench', 'screwdriver'];

  static void printlist() => list.forEach(print);
}

void main(List<String> args) {
  Tools.printlist();
}
