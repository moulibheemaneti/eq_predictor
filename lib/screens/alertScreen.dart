import 'package:eq_predictor/constants/mbWidgets.dart';
import 'package:eq_predictor/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[800],
      body: Padding(
        padding: EdgeInsets.only(top:100, left: 50.0, right: 50),
        child: Container(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                Icon(Icons.alarm,size: 150,color: Colors.white,),
                SizedBox(height: 40.0,),
                Text(
                  "Alert...!",
                  textAlign: TextAlign.left,
                  style: mbAlertHeadStyle(),
                ),
                Divider(
                  height: 20.0,
                  color: Colors.white,
                  thickness: 2.0,
                  indent: 0.0,
                  endIndent: 80.0,
                ),

                Text(
                  '''There will be an earthquake in your area.''',
                  textAlign: TextAlign.left,
                  style: mbAlertTextStyle(),
                ),

                SizedBox(height: 30.0,),
                Text("Take cover and proctect yourself",style: mbAlertTextStyle(),),

                SizedBox(height: 50.0,),
                ButtonTheme(
                  splashColor: Colors.red[300],
                  padding: EdgeInsets.fromLTRB(35.0, 12.0, 35.0, 12.0),
                  buttonColor: Colors.white,
                  highlightColor: Colors.red,
                  child: new FlatButton(
                    textColor: Colors.red[800],
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => DashBoard()));
                    },
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),
                    child: new Text(
                      "Ok, I'll Take Care",
                      style: TextStyle(
                        fontSize: 20.0,
                        letterSpacing: 1.0,
                      ),
                    ),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}