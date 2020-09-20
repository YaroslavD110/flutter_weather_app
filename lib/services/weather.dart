import 'package:weather_flutter_app/api/config.dart';
import 'package:weather_flutter_app/api/weather.dart';
import 'package:weather_flutter_app/models/weather-data.dart';

class WeatherService {
  APIConfig config;
  WeatherAPI api;

  WeatherData data;

  WeatherService() {
    this.config = new APIConfig();
    this.api = new WeatherAPI(this.config);
  }

  Future<WeatherData> getWeatherData() async {
    if (this.data == null) {
      await this._updateWeatherData();
    }

    return data;
  }

  Future<WeatherData> _updateWeatherData() async {
    final weather = await this.api.fetchCurrentWeatherData('Lviv');
    final forecast = await this
        .api
        .fetchWeatherForecastData(weather.location.lat, weather.location.lon);

    this.data = new WeatherData(weather: weather, forecast: forecast);

    return this.data;
  }
}
