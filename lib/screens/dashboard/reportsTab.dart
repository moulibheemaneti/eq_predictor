import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:eq_predictor/constants/mbWidgets.dart';
import 'package:eq_predictor/widgets/circularGraph.dart';
import 'package:eq_predictor/models/userLocation.dart';

reportsTab(BuildContext context){

  var userLocation = Provider.of<UserLocation>(context);

  return Padding(
    padding: EdgeInsets.only(top: 20,left: 20.0, right: 20.0,bottom: 20.0),
    child: ListView(
      children: <Widget>[
        Opacity(
          opacity: 0.5,
          child: Text(
            "Probability",
            textAlign: TextAlign.right,
            style: mbSubHeadingTextStyle(),
          ),
        ),
        Opacity(
          opacity: 0.4,
          child: Divider(
            height: 20.0,
            color: Colors.brown,
            thickness: 3.0,
          ),
        ),
        GridView.count(
          padding: EdgeInsets.only(top: 20.0,bottom: 50.0),
          shrinkWrap: true,
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              elevation: 2.0,
              shadowColor: Colors.brown,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)
              ),
              child: GridTile(
                header: Text("Major EQ",textAlign: TextAlign.center,style: mbBrownBold(),),
                child: progressView("Major EQ", 35),
              ),
            ),
            Card(
              elevation: 2.0,
              shadowColor: Colors.brown,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)
              ),
              child: GridTile(
                header: Text("Minor EQ",textAlign: TextAlign.center,style: mbBrownBold(),),
                child: progressView("Minor EQ", 55),
              ),
            ),

          ],
        ),

        Opacity(
          opacity: 0.5,
          child: Text(
            "Table",
            textAlign: TextAlign.right,
            style: mbSubHeadingTextStyle(),
          ),
        ),
        Opacity(
          opacity: 0.4,
          child: Divider(
            height: 20.0,
            color: Colors.brown,
            thickness: 3.0,
          ),
        ),
        DataTable(
          columns: [
            DataColumn(label: Text("")),
            DataColumn(label: Text("Calculated",style: mbBrownBold(),)),
            DataColumn(label: Text("Actual",style: mbBrownBold(),)),
          ],
          rows: [
            DataRow(
                cells: [
                  DataCell(Text("Magnitude",style: mbBrownBold(),)),
                  DataCell(Text("20",style: mbTextStyle(),)),
                  DataCell(Text("30.0",style: mbTextStyle(),)),
                ]
            ),
            DataRow(
                cells: [
                  DataCell(Text("Amplitude",style: mbBrownBold(),)),
                  DataCell(Text("50",style: mbTextStyle(),)),
                  DataCell(Text("60",style: mbTextStyle(),)),
                ]
            ),
          ],
        ),

        /*
        (userLocation != null) ? Text("Lat: ${userLocation.latitude}, Long: ${userLocation.longitude}")
            : Text("You didn't give permission to access your location")
        */
      ],
    ),
  );
}