import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'package:eq_predictor/screens/homeScreen.dart';
import 'package:eq_predictor/constants/mbWidgets.dart';

class MBSplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _MBSplashScreenState();
}

class _MBSplashScreenState extends State<MBSplashScreen>{
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return new SplashScreen(
      seconds: 4,
      navigateAfterSeconds: HomeScreen(),
      image: Image.asset("assets/images/icon.png"),
      photoSize: screenWidth/3,
      backgroundColor: Colors.white,
      title: Text(
        "EARTHQUAKE\nPREDICTOR",
        textAlign: TextAlign.center,
        style: mbSplashTextStyle(),
      ),
      loaderColor: Colors.brown[400],
    );
  }
}
