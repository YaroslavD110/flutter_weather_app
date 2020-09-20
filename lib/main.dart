import 'package:flutter/material.dart';
// import 'package:flutter_config/flutter_config.dart';
import 'package:weather_flutter_app/screens/home/main.dart';
import 'package:weather_flutter_app/services/main.dart';

void main() async {
  // await FlutterConfig.loadEnvVariables();

  registerServices();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
