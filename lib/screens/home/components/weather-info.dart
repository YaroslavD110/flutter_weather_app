import 'package:flutter/material.dart';
import 'package:weather_flutter_app/constants.dart';

class WeatherInfo extends StatelessWidget {
  final double temperature;
  final double humidity;
  final String description;

  const WeatherInfo(
      {Key key,
      @required this.temperature,
      @required this.description,
      @required this.humidity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 60, bottom: 60),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: cPrimary),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '${this.temperature.toString()}°',
            style: TextStyle(color: cWhite, fontSize: 80),
          ),
          Text(
            this.description,
            style: TextStyle(color: cWhite, fontSize: 20),
          ),
          SizedBox(height: 10),
          Text(
            'Humidity',
            style: TextStyle(
                color: cWhite, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            '${this.humidity.toString()}°',
            style: TextStyle(color: Colors.white38, fontSize: 20),
          )
        ],
      ),
    );
  }
}
