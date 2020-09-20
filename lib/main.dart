import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:weather_flutter_app/screens/home/main.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'package:weather_flutter_app/services/main.dart';

void main() async {
  await FlutterConfig.loadEnvVariables();

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
      home: SplashScreen.navigate(
          name: 'assets/flare/SplashScreen.flr',
          next: (context) => HomeScreen(),
          until: () => Future.delayed(Duration(seconds: 5)),
          loopAnimation: 'Intro',
          startAnimation: 'Intro'),
      debugShowCheckedModeBanner: false,
    );
  }
}
