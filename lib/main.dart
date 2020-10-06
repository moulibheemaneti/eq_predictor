// Author: Mouli Bheemaneti.

import 'package:eq_predictor/models/userLocation.dart';
import 'package:eq_predictor/services/locationService.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:eq_predictor/screens/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserLocation>(
      create: (context) => LocationService().locationStream,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'EQ PREDICTOR',
        theme: ThemeData(
          primarySwatch: Colors.brown,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          accentColor: Colors.white,
        ),
        home: MBSplashScreen(),
      ),
    );
  }
}
