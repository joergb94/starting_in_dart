void main(List<String> args) {
  var a = 10;
  final double b = 10;
  final double c = 10;

  final List<String> personFinal = ['juan', 'pedro', 'jorge', 'jimenez'];
  List<String> personConst = const ['juan', 'pedro', 'jorge', 'jimenez'];

  personFinal.add('Maria');

  //print(personFinal);
  //print(personConst);

  late final double x;
  x = 10.25;
  print(x);
}
