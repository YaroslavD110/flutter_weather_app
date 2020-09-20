class Location {
  final String name;
  final double lat;
  final double lon;

  Location({this.name, this.lat, this.lon});
}

class CurrentWeather {
  final int id;
  final Location location;

  CurrentWeather({this.id, this.location});

  factory CurrentWeather.fromJSON(Map<String, dynamic> json) {
    return CurrentWeather(
        id: json['id'],
        location: Location(
            name: json['name'],
            lat: json['coord']['lat'],
            lon: json['coord']['lon']));
  }
}
