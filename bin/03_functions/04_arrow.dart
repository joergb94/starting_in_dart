void main(List<String> args) {
  int a = 10, b = 20;
  int resultSum = sum(a, b);
  int resultSumArrow = sum_arrow(a, b);

  List<int> items = [1, 2, 3, 4, 5, 6, 7, 8, 8, 8];

  var newList = items.where((number) {
    return number > 4;
  });

  var newListArrow = items.where((number) => number > 4);

  var newListUnique = items.toSet().toList();

  print(newList);
  print(newListArrow);
  print(newListUnique);
}

int sum(int x, int y) {
  return x + y;
}

int sum_arrow(int x, int y) => x + y;
