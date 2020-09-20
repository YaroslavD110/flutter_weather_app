import 'package:weather_flutter_app/models/current-weather.dart';
import 'package:weather_flutter_app/models/weather-forecast.dart';

class WeatherData {
  final DateTime createdAt = new DateTime.now();

  final WeatherForecast forecast;
  final CurrentWeather weather;

  WeatherData({this.weather, this.forecast});
}
