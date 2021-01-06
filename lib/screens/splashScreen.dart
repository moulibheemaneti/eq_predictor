import 'package:eq_predictor/screens/homeScreen.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

import 'package:eq_predictor/screens/dashboard/dashboard.dart';

class MBSplashScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var _screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.brown,
          width: _screenWidth,
            child: FlareActor(
              'assets/flare/eq_splash.flr',
              alignment: Alignment.center,
              sizeFromArtboard: true,
              artboard: 'Artboard',
              fit: BoxFit.contain,
              animation: 'EQ',
              callback: (value) => {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()))
              },
            ),
        ),
      ),
    );
  }
}