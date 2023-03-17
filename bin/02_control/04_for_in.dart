void main(List<String> args) {
  List<String> list = ['Batman', ' Flash', 'Aquaman', 'Superman'];

  for (var i = 0; i < list.length; i++) {
    print(list[i]);
  }

  for (String item in list) {
    print(item);
  }
}
