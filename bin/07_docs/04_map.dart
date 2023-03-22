void main(List<String> args) {
  final person = {
    'name': 'Ray Gamboa',
    'country': 'Mexico',
    'age': 33,
  };

  final street = {'adress': 'c60', 'number': '378', 'city': 'Merida'};

  print('person: $person');
  print('Length: ${person.length}');
  print('Keys: ${person.keys}');

  person.addAll(street);
  print('addAll:$person');

  person.remove('age');
  print('remove:$person');

  //person.removeWhere((key, value) => (key != 'name') ? true : false);

  print("removeWhere:$person");

  person.forEach((key, value) {
    print("key:$key value:$value");
  });

  final newmapperson = person.map((key, value) {
    return MapEntry(key, value.toString().toUpperCase());
  });

  print("map : $newmapperson");
}
