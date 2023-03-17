void main(List<String> args) {
  Audio vol = Audio.High;
  switch (vol) {
    case Audio.Low:
      print('low');
      break;
    case Audio.Middle:
      print('middle');
      break;
    case Audio.High:
      print('high');
      break;
  }
}

enum Audio { Low, Middle, High }
