class WeatherForecast {
  final double lat;
  final double lon;

  WeatherForecast({this.lat, this.lon});

  factory WeatherForecast.fromJSON(Map<String, dynamic> json) {
    return WeatherForecast(lat: json['lat'], lon: json['lon']);
  }
}
