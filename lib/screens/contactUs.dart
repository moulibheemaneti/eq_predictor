import 'package:eq_predictor/widgets/mbDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:eq_predictor/constants/mbWidgets.dart';

class ContactEP extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: mbAppBar("Contact EP"),
      drawer: MBDrawer(),
      body: contactUsText(context),
    );
  }
}

void mailMB(){
  String mailId = 'mouli.b17@iiits.in';
  launch("mailto:$mailId");
}
void mailSA(){
  String mailId = 'suraj.a17@iiits.in';
  launch("mailto:$mailId");
}
void mailSR(){
  String mailId = 'sairajeswar.m17@iiits.in';
  launch("mailto:$mailId");
}

contactUsText(BuildContext context){
  return Padding(
    padding: EdgeInsets.only(top: 20,left: 40.0, right: 30.0,bottom: 20.0),
    child: ListView(
      children: <Widget>[
        Text(
          "FeedBack",
          textAlign: TextAlign.center,
          style: mbSubHeadingTextStyle(),
        ),
        Text(""),
        Text(
          "Having any trouble? Or do you want any other feature to be added? Your feedback is more valuable to us. Please feel free to  mail us anytime. We will respond you within 24 hours.",
          style: mbTextStyle(),
        ),
        Text("\n"),
        Text(
          "EP Developers",
          textAlign: TextAlign.center,
          style: mbSubHeadingTextStyle(),
        ),
        Text(""),
        Opacity(
          opacity: 0.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Mouli Bheemaneti",
                      style: mbTextStyle(),
                    ),
                    TextSpan(
                      text: " (mouli.b17@iiits.in) ",
                      style: mbHyperLinkTextStyle(),
                      recognizer: TapGestureRecognizer()..onTap = ()async{
                        mailMB();
                      }
                    ),
                  ],
                ),
              ),
              Text(""),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Sai Rajeswar",
                      style: mbTextStyle(),
                    ),
                    TextSpan(
                        text: " (sairajeswar.m17@iiits.in) ",
                        style: mbHyperLinkTextStyle(),
                        recognizer: TapGestureRecognizer()..onTap = ()async{
                          mailSR();
                        }
                    ),
                  ],
                ),
              ),
              Text(""),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Suraj Agarwal",
                      style: mbTextStyle(),
                    ),
                    TextSpan(
                        text: " (suraj.a17@iiits.in) ",
                        style: mbHyperLinkTextStyle(),
                        recognizer: TapGestureRecognizer()..onTap = ()async{
                          mailSA();
                        }
                    ),
                  ],
                ),
              ),
            ],
          )
        ),
      ],
    ),
  );
}