void main(List<String> args) {
  //======== Numbers

  int a = 10;
  double b = 5.5;
  int? c;

  int _a = 30;
  double $b = 40.0;

  double result = _a + $b;

  //======== Strings
  String name = 'Tony';
  String name2 = "Tony";
  String name3 = "0'Connor";
  String last_name = 'Stark';

  String full_name = '$name $last_name';
  String full_name2 = name + ' ' + last_name;

  String multiple = '''
    hello Word
    how are you?
    $name
    0'Connor''';

  //======== Booleans
  bool isActive = true;
  bool isNoActive = !isActive;

//======== Lists
  // List<String> villainsDeprecated = new List();
  List<String> villains = ['Lex', 'Red Skull', 'Red Skull', 'Doom'];
  villains.add('Green Goblin');
  villains.add('Green Goblin');
  villains.add('Green Goblin');

  var villansSet = villains.toSet();
  print(villansSet.toList());

// ===== Sets

  Set<String> villains2 = {'Lex', 'Red Skull', 'Red Skull', 'Doom'};
  villains2.add('Green Goblin');
  villains2.add('Green Goblin');
  villains2.add('Green Goblin');
  villains2.add('Green Goblin');

  //======== Maps  Dictionaries/objects

  Map<String, dynamic> ironman = {
    'name': 'Tony Stark',
    'power': 'Inteligen and rich',
    'Level': 9000,
  };

  Map<int, dynamic> ironma2 = {
    1: 'Tony Stark',
    2: 'Inteligen and rich',
    3: 9000,
  };

  Map<String, dynamic> hero = new Map();
  hero.addAll({
    'name': 'Wolverine',
    'power': 'Regenerative',
    'Level': 10000,
  });

  print(hero['name']);
}
