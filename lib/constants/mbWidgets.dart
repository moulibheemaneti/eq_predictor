import 'package:flutter/material.dart';
import 'package:share/share.dart';

import 'package:eq_predictor/screens/homeScreen.dart';
import 'package:eq_predictor/screens/dashboard/dashboard.dart';
import 'package:eq_predictor/screens/EPQuiz.dart';
import 'package:eq_predictor/screens/contactUs.dart';
import 'package:eq_predictor/screens/knowEQ.dart';



Widget mbAppBar(String title){
  return PreferredSize(
      child: Padding(
        padding: EdgeInsets.only(top: 20.0),
        child: AppBar(
          elevation: 0,
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.brown,
            ),
          ),
          iconTheme: new IconThemeData(
            color: Colors.brown,
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
      ),
      preferredSize: Size.fromHeight(80.0),
  );
}

TextStyle mbSplashTextStyle(){
  return TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.brown[500],
      fontSize: 26.0
  );
}

TextStyle mbHeadingTextStyle(){
  return TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
      fontSize: 26.0
  );
}

TextStyle mbSubHeadingTextStyle(){
  return TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
      fontSize: 23.0
  );
}

TextStyle mbHyperLinkTextStyle(){
  return TextStyle(
    color: Colors.brown,
    fontSize: 17.0,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
    decorationStyle: TextDecorationStyle.dotted,
  );
}

TextStyle mbDialogHeading(){
  return TextStyle(
    color: Colors.white,
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
  );
}

TextStyle mbBrownBold(){
  return TextStyle(
    color: Colors.brown,
    fontSize: 17.0,
    fontWeight: FontWeight.bold,
  );
}

TextStyle mbBoldTextStyle(){
  return TextStyle(
    color: Colors.black,
    fontSize: 17.0,
    fontWeight: FontWeight.bold,
  );
}

TextStyle mbTextStyle(){
  return TextStyle(
    color: Colors.black,
    fontSize: 17.0,
    height: 1.5,

  );
}

TextStyle mbDrawerTextStyle(){
  return TextStyle(
    fontSize: 16.0,
  );
}

ButtonTheme mbButtonTheme(String text, void function()){
  return ButtonTheme(
    splashColor: Colors.brown[300],
    padding: EdgeInsets.fromLTRB(35.0, 12.0, 35.0, 12.0),
    minWidth: 120,
    buttonColor: Colors.brown[700],
    child: new RaisedButton(
      elevation: 5.0,
      textColor: Colors.white,
      onPressed: (){
        // this function is called when the button is clicked
        function();
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),
      child: new Text(text,
        style: TextStyle(
          fontSize: 20.0,
          letterSpacing: 1.0,
        ),
      ),
      color: Colors.brown[700],
    ),
  );
}
