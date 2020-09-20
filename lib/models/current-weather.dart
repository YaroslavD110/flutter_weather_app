class Location {
  final String name;
  final double lat;
  final double lon;

  Location({this.name, this.lat, this.lon});
}

class Weather {
  final double temperature;
  final int humidity;
  final String description;

  Weather({this.temperature, this.description, this.humidity});
}

class CurrentWeather {
  final int id;
  final Location location;
  final Weather weather;

  CurrentWeather({this.id, this.location, this.weather});

  factory CurrentWeather.fromJSON(Map<String, dynamic> json) {
    return CurrentWeather(
        id: json['id'],
        location: Location(
            name: json['name'],
            lat: json['coord']['lat'],
            lon: json['coord']['lon']),
        weather: Weather(
            temperature: json['main']['temp'],
            humidity: json['main']['humidity'],
            description: json['weather'][0]['description']));
  }
}
