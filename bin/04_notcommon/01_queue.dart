import 'dart:collection';

void main(List<String> args) {
  Queue<int> queue = new Queue<int>();
  queue.addAll([10, 20, 30]);

  Iterator<int> it = queue.iterator;

  while (it.moveNext()) {
    print(it.current);
  }
}
