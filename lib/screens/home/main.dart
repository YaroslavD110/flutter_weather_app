import 'package:flutter/material.dart';

import 'package:weather_flutter_app/screens/home/components/appbar.dart';
import 'package:weather_flutter_app/screens/home/components/body.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppbar(),
      body: HomeBody(),
    );
  }
}
