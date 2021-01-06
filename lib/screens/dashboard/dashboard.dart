import 'package:eq_predictor/constants/mbWidgets.dart';
import 'package:eq_predictor/models/databaseModel.dart';
import 'package:eq_predictor/screens/dashboard/main_page.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import 'package:eq_predictor/widgets/mbDrawer.dart';
import 'package:eq_predictor/screens/dashboard/logsTab_2.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List<EQData> eqDataList = [];

  @override
  void initState() {
    super.initState();
    DatabaseReference reference =
        FirebaseDatabase.instance.reference().child("earthquakes");
      reference.orderByChild("time").once().then((DataSnapshot dataSnapshot) {
      eqDataList.clear();

      var keys = dataSnapshot.value.keys;
      var values = dataSnapshot.value;

      for (var key in keys) {
        EQData data = new EQData(
            area: values[key]['area'].toString(),
            detection_probabilty:
                values[key]['detection_probabilty'].toString(),
            latitude: values[key]['latitude'].toString(),
            longitude: values[key]['longitude'].toString(),
            magnitude: values[key]['magnitude'].toString(),
            report: values[key]['report'].toString(),
            station: values[key]['station'].toString(),
            time: values[key]['time'].toString(),
            date_time: values[key]["date_time"].toString(),
            eqName: key);
        eqDataList.add(data);
      }

      print(eqDataList.last.time);
      //print(eqDataList.first.time);
      setState(() {});
    });

      print(reference.orderByKey());
  }

  @override
  Widget build(BuildContext context) {
    return eqDataList != null
        ? DefaultTabController(
            length: 2,
            initialIndex: 0,
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: _dashboardAppBar(context, "Dashboard"),
              drawer: MBDrawer(),
              body: TabBarView(
                children: <Widget>[
                  ReportTab(eqDataList),
                  //reportsTab(context, eqDataList),
                  LogTab(eqDataList),
                ],
              ),
            ),
          )
        : Column(children: [
            Text(
              "Wait for some time. Data is loading",
              textAlign: TextAlign.left,
              style: mbHeadingTextStyle(),
            )
          ]);
  }
}

// DashBoard AppBar
_dashboardAppBar(BuildContext context, String title) {
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
          labelStyle: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w600),
          unselectedLabelStyle: TextStyle(
            fontSize: 17.0,
          ),
          unselectedLabelColor: Colors.black,
          indicatorWeight: 1.0,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Colors.brown,
          tabs: <Widget>[
            Tab(
              text: "Reports",
            ),
            Tab(text: "Logs"),
          ],
        ),
        // actions: <Widget>[
        //   InkWell(
        //     child: Padding(
        //       padding: EdgeInsets.only(right: 20.0),
        //       child: Icon(
        //         Icons.notifications_none,
        //         color: Colors.brown,
        //         size: 30.0,
        //       ),
        //     ),
        //     onTap: () => {
        //       //Navigator.push(context, MaterialPageRoute(builder: (context)=> NotificationScreen()))
        //       Navigator.push(context,
        //           MaterialPageRoute(builder: (context) => AlertScreen()))
        //     },
        //   ),
        // ],
      ),
    ),
    preferredSize: Size.fromHeight(120.0),
  );
}
