class MyService {
  static final MyService _singleton = new MyService._internal();

  factory MyService() {
    return _singleton;
  }

  String url = "http://abc";
  String key = "key123";

  MyService._internal() {}
}
