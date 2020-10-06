import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:eq_predictor/quiz/quiz_menu.dart';
import 'package:eq_predictor/widgets/mbDrawer.dart';
import 'package:eq_predictor/screens/knowEQ.dart';
import 'package:eq_predictor/constants/mbWidgets.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: mbAppBar("Welcome to EP"),
      drawer: MBDrawer(),
      body: homePageText(context),
    );
  }
}

homePageText(BuildContext context){
  return Padding(
    padding: EdgeInsets.only(top: 20,left: 40.0, right: 30.0,bottom: 20.0),
    child: ListView(
      children: <Widget>[
        Text.rich(
          TextSpan(
              children: [
                TextSpan(
                  text: "EP (Earthquake Predictor) ",
                  style: mbBrownBold(),
                ),
                TextSpan(
                  text: "is an online earthquake predictor app which access your location and warn you when it is probably an earthquake in your region. ",
                  style: mbTextStyle(),
                ),
              ]
          ),
        ),

        Text(""),
        Text(
          "We will record every signal of earthquake and alert you if it is a destructive wave which may damage your collateral. We ensure 90% of our data and our predictions are accurate. ",
          style: mbTextStyle(),
        ),

        Text(""),
        Text(
          "We also provide you the tips for safety precautions during an earthquake.",
          style: mbTextStyle(),
        ),

        Text.rich(
          TextSpan(
              children: [
                TextSpan(
                  text: "EP (Earthquake Predictor) ",
                  style: mbBrownBold(),
                ),
                TextSpan(
                  text: " provides you the most updated news regarding earthquakes and also we update you the results of latest researches on earthquakes.",
                  style: mbTextStyle(),
                ),
              ]
          ),
        ),

        Text(""),
        Text.rich(
          TextSpan(
              children: [
                TextSpan(
                  text: "Go through ",
                  style: mbTextStyle(),
                ),
                TextSpan(
                    text: "Know EQ",
                    style: mbHyperLinkTextStyle(),
                    recognizer: TapGestureRecognizer()..onTap = ()async{
                      Navigator.push(context,MaterialPageRoute(builder: (context) => KnowEQ()));
                    }
                ),
                TextSpan(
                  text: " to gain deep knowledge regarding earthquake, how it occurs, how it travels, how it is measured etc. This enhances your general knowledge regarding one of the most destructive disasters on our earth.",
                  style: mbTextStyle(),
                ),
              ]
          ),
        ),

        Text(""),
        Text.rich(
          TextSpan(
              children: [
                TextSpan(
                  text: "Try our ",
                  style: mbTextStyle(),
                ),
                TextSpan(
                  text: "EP Quiz",
                  style: mbHyperLinkTextStyle(),
                  recognizer: TapGestureRecognizer()..onTap = ()async{
                    Navigator.push(context,MaterialPageRoute(builder: (context) => EPQuizMenu()));
                  }
                ),
                TextSpan(
                  text: " to check your knowledge regarding earthquake. This feature is made especially keeping children education in mind. ",
                  style: mbTextStyle(),
                ),
              ]
          ),
        ),

        Text(""),
        Text(
          "Many people who are living in areas where there are no chances of earthquake. They don't know what is the collateral damage and what is the net damage in effected areas. ",
          style: mbTextStyle(),
        ),
      ],
    ),
  );
}
