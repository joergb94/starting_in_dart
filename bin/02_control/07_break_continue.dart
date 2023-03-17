void main(List<String> args) {
  for (int i = 0; i < 9; i++) {
    if (i == 5) {
      continue;
    }
    print(i);
  }

  for (int i = 0; i < 9; i++) {
    if (i == 5) {
      break;
    }
    print(i);
  }
}
