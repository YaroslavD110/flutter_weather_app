import 'package:get_it/get_it.dart';
import 'package:weather_flutter_app/services/weather.dart';

GetIt getIt = GetIt.instance;

void registerServices() {
  getIt.registerSingleton<WeatherService>(new WeatherService());
}
