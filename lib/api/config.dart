import 'package:flutter_dotenv/flutter_dotenv.dart';

class APIConfig {
  final String API_KEY = DotEnv().env['OPENWEATHER_API_KEY'];
  final String API_DOMAIN = 'openweathermap.org';
  final String API_POSTFIX = 'data/2.5';

  String get API_URL => 'https://$API_DOMAIN/$API_POSTFIX';

  String composeCurrentWeatherApiURL(String locationName) {
    return '$API_URL/weather?appid=$API_KEY&q=$locationName';
  }

  String composeWeatherForecastApiURL(double lat, double lon) {
    return '$API_URL/onecall?appid=$API_KEY&lat=${lat.toString()}&lon=${lon.toString()}';
  }
}
