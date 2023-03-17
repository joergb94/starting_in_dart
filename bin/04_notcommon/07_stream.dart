import 'dart:async';

void main(List<String> args) {
  final streanController = new StreamController<String>.broadcast();

  streanController.stream.listen(
    (data) => print('data ${data}'),
    onError: (e) => print('error ${e}'),
    onDone: () => print('done'),
    cancelOnError: true,
  );

  streanController.stream.listen(
    (data) => print('data 2 ${data}'),
    onError: (e) => print('error 2 ${e}'),
    onDone: () => print('done 2'),
    cancelOnError: true,
  );
  streanController.sink.add('Ray');
  streanController.sink.add('Ray 2');
  streanController.sink.add('Ray 3');
  streanController.sink.addError('Ray');
  streanController.sink.add('Ray 4');

  print('End');
}
