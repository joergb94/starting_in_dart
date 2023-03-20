class Location {
  final double latitude;
  final double longitude;

  const Location(this.latitude, this.longitude);
}

void main(List<String> args) {
  final sanfrancisco1 = new Location(18.02323, 39.9000);
  final sanfrancisco2 = new Location(18.02323, 39.9001);
  final sanfrancisco3 = new Location(18.02323, 39.9001);

  //print(sanfrancisco1 == sanfrancisco2);
  //print(sanfrancisco2 == sanfrancisco3);

  const sanfrancisco4 = const Location(18.02323, 39.9000);
  const sanfrancisco5 = const Location(18.02323, 39.9001);
  const sanfrancisco6 = const Location(18.02323, 39.9001);

  print(sanfrancisco4 == sanfrancisco5);
  print(sanfrancisco5 == sanfrancisco6);
}
