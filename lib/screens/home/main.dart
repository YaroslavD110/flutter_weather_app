import 'package:flutter/material.dart';

import 'package:weather_flutter_app/screens/home/components/appbar.dart';
import 'package:weather_flutter_app/screens/home/components/body.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppbar(),
      body: HomeBody(),
    );
  }
}
