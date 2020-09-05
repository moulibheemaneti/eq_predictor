import 'package:eq_predictor/widgets/mbDrawer.dart';
import 'package:flutter/material.dart';

import 'package:eq_predictor/constants/mbWidgets.dart';

class KnowEQ extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: mbAppBar("Know EQ"),
      drawer: MBDrawer(),
      body: knowEQText(),
    );
  }
}

knowEQText(){
  return Padding(
    padding: EdgeInsets.only(top: 20,left: 20.0, right: 20.0,bottom: 20.0),
    child: ListView(
      children: <Widget>[

        ExpansionTile(
          title: Text(
            "Earthquake?",
            style: mbBoldTextStyle(),
          ),
          children: <Widget>[
            ListTile(
              title: Text(
                "Earthquake is a natural disaster which can cause lot of damage to the livelihood and also destroys assets too.",
                style: mbTextStyle(),
              ),
            ),
          ],
        ),

        ExpansionTile(
          title: Text(
            "Measure earthquake",
            style: mbBoldTextStyle(),
          ),
          children: <Widget>[
            ListTile(
              title: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Richter ",
                      style: mbBrownBold(),
                    ),
                    TextSpan(
                        text: " and "
                    ),
                    TextSpan(
                      text: "Mercalli ",
                      style: mbBrownBold(),
                    ),
                    TextSpan(
                        text: " scales are used to measure earthquake. But popularly many of us heard only Richter scale.",
                      style: mbTextStyle(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

        ExpansionTile(
          title: Text(
            "Two types of Earthquakes",
            style: mbBoldTextStyle(),
          ),
          children: <Widget>[
            ListTile(
              title: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Volcanic ",
                      style: mbBrownBold(),
                    ),
                    TextSpan(
                        text: " and "
                    ),
                    TextSpan(
                      text: "Tectonic ",
                      style: mbBrownBold(),
                    ),
                    TextSpan(
                        text: " are two types of earthquakes which generally occur on our planet.",
                      style: mbTextStyle()
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

        ExpansionTile(
          title: Text(
            "Richter Scale",
            style: mbBoldTextStyle(),
          ),
          children: <Widget>[
            ListTile(
              title: Text(
                "Richter scale is used to measure the total energy released during the earthquake.",
                style: mbTextStyle(),
              ),
            ),
            ListTile(
              title: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "C.F. Richter",
                      style: mbBrownBold(),
                    ),
                    TextSpan(
                      text: " invented this instrument.",
                      style: mbTextStyle(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

        Opacity(
          opacity: 0.7,
          child: Text(
            "More questions are yet to come to give you some more light on this topic",
            style: mbTextStyle(),
          ),
        ),
      ],
    ),
  );
}