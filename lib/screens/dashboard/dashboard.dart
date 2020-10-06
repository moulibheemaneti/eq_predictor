import 'package:flutter/material.dart';

import 'package:eq_predictor/widgets/mbDrawer.dart';
import 'package:eq_predictor/screens/alertScreen.dart';
import 'package:eq_predictor/screens/dashboard/reportsTab.dart';
import 'package:eq_predictor/screens/dashboard/logsTab.dart';


class DashBoard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _dashboardAppBar(context, "Dashboard"),
        drawer: MBDrawer(),
        body: TabBarView(
          children: <Widget>[
            reportsTab(context),
            logTab(context),
          ],
        ),
      ),
    );
  }
}

// DashBoard AppBar
_dashboardAppBar(BuildContext context,String title){
  return PreferredSize(
    child: Padding(
      padding: EdgeInsets.only(top: 25),
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
        bottom: TabBar(
          labelColor: Colors.brown,
          labelStyle: TextStyle(fontSize: 17.0,fontWeight: FontWeight.w600),
          unselectedLabelStyle: TextStyle(fontSize: 17.0,),
          unselectedLabelColor: Colors.black,
          indicatorWeight: 1.0,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Colors.brown,
          tabs: <Widget>[
            Tab(text: "Reports",),
            Tab(text: "Logs"),
          ],
        ),
        actions: <Widget>[
          InkWell(
            child: Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(Icons.notifications_none, color: Colors.brown, size: 30.0,),
            ),
            onTap: ()=>{
              //Navigator.push(context, MaterialPageRoute(builder: (context)=> NotificationScreen()))
              Navigator.push(context, MaterialPageRoute(builder: (context)=> AlertScreen()))
            },
          ),
        ],
      ),
    ),
    preferredSize: Size.fromHeight(120.0),
  );  
}
