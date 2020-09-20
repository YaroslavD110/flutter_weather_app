import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:weather_flutter_app/api/config.dart';
import 'package:weather_flutter_app/models/current-weather.dart';
import 'package:weather_flutter_app/models/weather-forecast.dart';

class WeatherAPI {
  APIConfig config;

  WeatherAPI(this.config);

  Future<CurrentWeather> fetchCurrentWeatherData(String locationName) async {
    try {
      final response =
          await http.get(this.config.composeCurrentWeatherApiURL(locationName));

      if (response.statusCode == 200) {
        return CurrentWeather.fromJSON(json.decode(response.body));
      } else {
        throw Exception('Failed to load data! | ' + response.body);
      }
    } catch (error) {
      print(error);

      return null;
    }
  }

  Future<WeatherForecast> fetchWeatherForecastData(
      double lat, double lon) async {
    try {
      final response =
          await http.get(this.config.composeWeatherForecastApiURL(lat, lon));

      if (response.statusCode == 200) {
        return WeatherForecast.fromJSON(json.decode(response.body));
      } else {
        throw Exception('Failed to load data!');
      }
    } catch (error) {
      print(error);

      return null;
    }
  }
}
