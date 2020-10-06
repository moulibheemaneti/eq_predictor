import 'package:flutter/material.dart';
import 'package:share/share.dart';

import 'package:eq_predictor/quiz/quiz_menu.dart';
import 'package:eq_predictor/constants/mbWidgets.dart';
import 'package:eq_predictor/screens/contactUs.dart';
import 'package:eq_predictor/screens/dashboard/dashboard.dart';
import 'package:eq_predictor/screens/homeScreen.dart';
import 'package:eq_predictor/screens/knowEQ.dart';

class MBDrawer extends StatefulWidget{
  @override
  _MBDrawerState createState() => _MBDrawerState();
}

class _MBDrawerState extends State<MBDrawer> {

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Container(
                    child: Image.asset("assets/images/icon.png",height: 200,width: 200,)
                ),
              ),
            ),
            // home
            ListTile(
              title: Text(
                'Home',
                style: mbDrawerTextStyle(),
              ),
              leading: Icon(Icons.home,color: Colors.brown,),
              onTap: (){
                Navigator.pop(context);

                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            Divider(
              color: Colors.brown,
            ),

            // DashBoard
            ListTile(
              title: Text(
                'Dashboard',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              leading: Icon(Icons.dashboard,color: Colors.brown,),
              onTap: (){
                Navigator.pop(context);

                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => DashBoard()));
              },
            ),
            Divider(
              color: Colors.brown,
            ),

            // Know EQ
            ListTile(
              title: Text(
                'Know EQ',
                style: mbDrawerTextStyle(),
              ),
              leading: Icon(Icons.book,color: Colors.brown,),
              onTap: (){
                Navigator.pop(context);

                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => KnowEQ()));
              },
            ),
            Divider(
              color: Colors.brown,
            ),

            // EP Quiz
            ListTile(
              title: Text(
                'EP Quiz',
                style: mbDrawerTextStyle(),
              ),
              leading: Icon(Icons.assignment,color: Colors.brown,),
              onTap: (){
                Navigator.pop(context);

                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => EPQuizMenu()));
              },
            ),
            Divider(
              color: Colors.brown,
            ),

            // Contact us
            ListTile(
              title: Text(
                'Contact EP',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              leading: Icon(Icons.contacts,color: Colors.brown,),
              onTap: (){
                Navigator.pop(context);

                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => ContactEP()));
              },
            ),
            Divider(
              color: Colors.brown,
            ),

            // Share app
            ListTile(
              title: Text(
                'Share App',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              leading: Icon(Icons.share,color: Colors.brown,),
              onTap: (){
                Navigator.pop(context);
                Share.share("Hi friends! I'm using this Earthquake Predictor app. And I now recommend you to use this app and share it for good purpose. https://play.");
              },
            ),
            Divider(
              color: Colors.brown,
            ),
          ],
        ),
      );
    }
  }
