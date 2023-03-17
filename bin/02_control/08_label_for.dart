void main(List<String> args) {
  outerLoop:
  for (int i = 0; i < 5; i++) {
    print('value $i');

    innerLoop:
    for (int j = 0; j < 5; j++) {
      print('--value $j');

      if (j == 2) {
        break outerLoop;
      }
    }
  }
}
