void main(List<String> args) {
  String first_name = 'Ray';
  String last_name = 'Gamboa';

  String full_name = '$first_name' ' ' ' $last_name';

  print('Full name: $full_name');

  print('Length: ${full_name.length}');

  print('Contais R: ${full_name.contains('R')}');
  print('Contais R in first position: ${full_name.contains('R', 0)}');
  print('Contais R in last position: ${full_name.contains('a', 10)}');

  print('Padleft:${full_name.padLeft(20, '...')}');
  print('PadRigth:${full_name.padRight(20, '...')}');

  print('Operator []:${full_name[0]}');
  print('Operator *:${full_name * 3}');

  print('ReplaceAll with RegExp *:${full_name.replaceAll(RegExp(r'a'), 'e')}');
  print('ReplaceAll:${full_name.replaceAll('a', 'i')}');

  print('SubString:${full_name.substring(0, 5)}');
  print('SubString:${full_name.substring(1)}');

  print('IndexOf:${full_name.indexOf('R')}');

  print('Split:${full_name.split(' ')}');
  print('Split :${full_name.split(' ')[2]}');

  int valueLetters = full_name.length;
  String last_letter = full_name.substring(valueLetters - 1);
  print("Upper case last letter: ${last_letter.toUpperCase()}");
}
