// Developer: Mouli Bheemaneti.

//https://medium.com/@abumuhab/flutter-notifications-routing-to-specific-screens-on-notification-click-85fe3c9b5ba9
//https://medium.com/@kenaragorn/flutter-push-notification-with-firebase-cloud-messaging-fcm-and-routing-to-specific-screen-b065742f2e5e

import 'package:eq_predictor/screens/alertScreen.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:eq_predictor/services/locationService.dart';
import 'package:eq_predictor/screens/splashScreen.dart';
import 'package:eq_predictor/models/userLocation.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget  {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  final FirebaseMessaging firebaseMessaging = FirebaseMessaging();
  String textValue;

  @override
  void initState() {
    super.initState();
    firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> payload)async{
        print("onMessage: $payload");
        // Navigator.push(context, MaterialPageRoute(builder: (context) => AlertScreen()));
        Navigator.pushNamed(context, 'notificationScreen');
      },
      onLaunch: (Map<String, dynamic> payload)async{
        print("onLaunch: $payload");
        //Navigator.push(context, MaterialPageRoute(builder: (context) => AlertScreen()));
        Navigator.pushNamed(context, 'notificationScreen');
      },
      onResume: (Map<String, dynamic> payload)async{
        print("onResume: $payload");
        //Navigator.push(context, MaterialPageRoute(builder: (context) => AlertScreen()));
        Navigator.pushNamed(context, 'notificationScreen');
      },
    );
    firebaseMessaging.requestNotificationPermissions(
        const IosNotificationSettings(
            sound: true,
            badge: true,
            alert: true
        )
    );
    firebaseMessaging.getToken().then((token){
      updateToken(token);
    });
  }

  updateToken(String token){
    textValue = token;
    DatabaseReference databaseReference = new FirebaseDatabase().reference();
    databaseReference.child('fcm-token/$token').set({"token":token});
  }

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
        routes: {
          "splashScreen": (context) => MBSplashScreen(),
          "notificationScreen": (context) => AlertScreen(),
        },
        home: MBSplashScreen(),
      ),
    );
  }
}

