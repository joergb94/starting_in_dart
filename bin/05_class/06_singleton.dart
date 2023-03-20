import 'my_service.dart';

void main(List<String> args) {
  final spotifyService = new MyService();
  spotifyService.url = "https://api.spotify.com/v3/search";

  final spotifyService2 = new MyService();
  spotifyService2.url = "https://api.spotify.com/v1/search";

  final spotifyService3 = new MyService();
  spotifyService3.url = "https://api.spotify.com/v2/search";

  print(spotifyService == spotifyService2);
  print(spotifyService.url);
  print(spotifyService2.url);
}
