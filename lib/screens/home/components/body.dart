import 'package:flutter/material.dart';
import 'package:weather_flutter_app/models/weather-data.dart';
import 'package:weather_flutter_app/screens/home/components/weather-info.dart';

class HomeBody extends StatelessWidget {
  final WeatherData data;

  HomeBody({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final weather = this.data?.weather?.weather;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      child: Column(
        children: [
          weather != null
              ? WeatherInfo(
                  temperature: weather.temperature,
                  humidity: weather.humidity,
                  description: weather.description,
                )
              : SizedBox.shrink()
        ],
      ),
      color: Colors.white,
    );
  }
}
