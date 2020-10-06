import 'package:eq_predictor/widgets/mbDrawer.dart';
import 'package:flutter/material.dart';

import 'package:eq_predictor/constants/mbWidgets.dart';

List notificationsList = [
  "Notification 1",
  "Notification 2",
  "Notification 3",
  "Notification 4",
  "Notification 5",
  "Notification 6",
  "Notification 7",
  "Notification 8",
  "Notification 9",
  "Notification 10"
];

class NotificationScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: mbAppBar("Notifications"),
      drawer: MBDrawer(),
      body: Padding(
        padding: EdgeInsets.only(top: 20,left: 20.0, right: 20.0,bottom: 20.0),
        child: ListView.builder(
          itemBuilder: (context, index){
            return Card(
              child: ListTile(
                title: Text(notificationsList[index],style: mbTextStyle()),
              ),
            );
          },
          itemCount: notificationsList.length,
        ),
      ),
    );
  }
}

