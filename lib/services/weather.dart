import 'package:weather_flutter_app/api/config.dart';
import 'package:weather_flutter_app/api/weather.dart';

class WeatherService {
  APIConfig config;
  WeatherAPI api;

  WeatherService() {
    this.config = new APIConfig();
    this.api = new WeatherAPI(this.config);
  }
}
