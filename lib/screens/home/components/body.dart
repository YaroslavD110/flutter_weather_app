import 'package:flutter/material.dart';
import 'package:weather_flutter_app/screens/home/components/weather-info.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
      child: Column(
        children: [
          WeatherInfo(
            temperature: 26.1,
            humidity: 48,
            description: 'overcast clouds',
          )
        ],
      ),
      color: Colors.white,
    );
  }
}
