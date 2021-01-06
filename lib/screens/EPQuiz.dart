import 'package:eq_predictor/widgets/mbDrawer.dart';
import 'package:flutter/material.dart';

import 'package:eq_predictor/constants/mbWidgets.dart';

class EPQuiz extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: mbAppBar("EP Quiz"),
      drawer: MBDrawer(),
      body: epQuizText(),
    );
  }
}

epQuizText(){
  return Padding(
    padding: EdgeInsets.only(top: 20,left: 20.0, right: 20.0,bottom: 20.0),
    child: ListView(
      children: <Widget>[
        Text("This feature will be available soon",style: mbSubHeadingTextStyle(),),
      ],
    ),
  );
}
