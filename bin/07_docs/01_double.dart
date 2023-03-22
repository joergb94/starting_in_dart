void main(List<String> args) {
  double number = 3.1416;
  double number2 = -3.1416;
  double number3 = 0;
  double infinity_number = double.infinity;

  print('Signature: ${number.sign} :: $number');
  print('Signature: ${number2.sign} :: $number2');
  print('Signature: ${number3.sign} :: $number3');

  print('isFinite: ${number.isFinite} :: $number');
  print('isFinite: ${infinity_number.isFinite} :: $infinity_number');

  print('abs: ${number.abs()} :: $number');
  print('ceil: ${number.ceil()} :: $number');

  print('ceilToDouble: ${number.ceilToDouble()} :: $number');

  print('round: ${number.round()} :: $number');
  print('roundToDouble: ${number.roundToDouble()} :: $number');

  print('clamp: ${number.clamp(1, 3)} :: $number');
}
