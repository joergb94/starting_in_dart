String UpperText(String text) {
  text = text.toUpperCase();
  return text;
}

Map<String, String> UppertTextMap(Map<String, String> map) {
  //broke reference to map
  map = {...map};

  map['name'] = map['name']?.toUpperCase() ?? 'No name';
  return map;
}

void main(List<String> args) {
  String name = 'ray';
  String name2 = UpperText(name);

  Map<String, String> person = {
    'name': 'Tony',
  };

  Map<String, String> person2 = UppertTextMap(person);

  print(person);
  print(person2);
}
