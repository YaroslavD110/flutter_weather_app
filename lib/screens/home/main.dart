import 'package:flutter/material.dart';
import 'package:weather_flutter_app/models/weather-data.dart';

import 'package:weather_flutter_app/screens/home/components/appbar.dart';
import 'package:weather_flutter_app/screens/home/components/body.dart';
import 'package:weather_flutter_app/services/main.dart';
import 'package:weather_flutter_app/services/weather.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  WeatherData data;
  WeatherService _weatherService = getIt<WeatherService>();

  @override
  void initState() {
    super.initState();

    this._weatherService.getWeatherData().then((data) => {
          this.setState(() {
            this.data = data;
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    final title = this.data?.weather?.location?.name ?? 'Unknown';

    return Scaffold(
      appBar: HomeAppbar(
        title: title,
      ),
      body: HomeBody(data: this.data),
    );
  }
}
