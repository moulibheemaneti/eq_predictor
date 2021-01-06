import 'package:eq_predictor/screens/notificationScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class EQMessaging extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _EQMessagingState();
}

class _EQMessagingState extends State<EQMessaging>{

  final FirebaseMessaging firebaseMessaging = FirebaseMessaging();
  String textValue;

  @override
  void initState() {
    super.initState();
    firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message)async{
        print("onMessage: $message");
        Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen()));
      },
      onLaunch: (Map<String, dynamic> message)async{
        print("onLaunch: $message");
        Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen()));
      },
      onResume: (Map<String, dynamic> message)async{
        print("onResume: $message");
        Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationScreen()));
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
      print(token);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(textValue),
        ],
      ),
    );
  }
}
