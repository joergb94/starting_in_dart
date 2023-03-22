void main(List<String> args) {
  List<int> list = [1, 2, 3, 4, 5, 6];
  List<int>? list2;
  List<int> list3 = [1, 2, 3, 43, 5, -6];
  List<String> list4 = ['Tony', 'Peter', 'Ray'];

  print('Length: ${list.length}');
  print('First Position: ${list[0]}');
  print('First Position: ${list.first}');
  print('Last Position: ${list.last}');
  print('Is Empty: ${list.isEmpty}');
  print('Is Empty?: ${list2 == null}');

  print('asMap: ${list.asMap()}');

  Map listMap = list.asMap();
  print('ListMap: ${listMap[2]}');

  Map listMapName = list4.asMap();
  print('ListMapName: ${listMapName[2]}');

  print('indexOf: ${list4.indexOf('Peter')}');

  int bigger3 = list.indexWhere((number) => (number > 3) ? true : false);

  print('IndexWhere: ${bigger3}');

  print('Remove: ${list4.remove('Ray')}');
  print('Shuffle: ${list3.shuffle}');
  print('Sort: ${list3.sort}');
  print('Rever: ${list.reversed.toList()}');

  list4.forEach((element) {
    element = element.toUpperCase();
    print(element);
  });

  final newList4 = list4.map((name) => name.toUpperCase()).toList();
  print('NewList4:${newList4}');


}
