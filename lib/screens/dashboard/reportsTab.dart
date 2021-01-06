import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:eq_predictor/models/userLocation.dart';
import 'package:eq_predictor/constants/mbWidgets.dart';
import 'package:eq_predictor/models/databaseModel.dart';
import 'package:eq_predictor/widgets/circularGraph.dart';
  

reportsTab(BuildContext context, List<EQData> eqDataList){


  var userLocation = Provider.of<UserLocation>(context);

  var eqlatitude = double.parse(eqDataList.first.latitude);
var eqlongitude = double.parse(eqDataList.first.longitude);  
  return Padding(
    padding: EdgeInsets.only(top: 20,left: 20.0, right: 50.0,bottom: 20.0),
    child: ListView(
      children: <Widget>[
        Opacity(
          opacity: 0.5,
          child: Text(
            "Report",
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
        Text("Earthquake",textAlign: TextAlign.center, style: mbBrownBold()),
        Container(
          padding: EdgeInsets.only(top: 0),
          height: 170,
          width: 170,
          child: progressView("Major EQ", double.parse(eqDataList.first.detection_probabilty)*100),
        ),
   
    // // mag*10
        Opacity(
          opacity: 0.5,
          child: Text(
            "Details",
            textAlign: TextAlign.right,
            style: mbSubHeadingTextStyle(),
          ),
        ),
        Opacity(
          opacity: 0.4,
          child: Divider(
            height: 10.0,
            color: Colors.brown,
            thickness: 3.0,
          ),
        ),
        DataTable(
          columns: [
            DataColumn(label: Text("")),
            DataColumn(label: Text("Calculated",style: mbBrownBold(),)),
            //DataColumn(label: Text("Actual",style: mbBrownBold(),)),
          ],
          rows: [
            DataRow(
                cells: [
                  DataCell(Text("Magnitude",style: mbBrownBold(),)),
                  DataCell(Text("${eqDataList.first.magnitude}",style: mbTextStyle(),)),
                  //DataCell(Text("30.0",style: mbTextStyle(),)),
                ]
            ),
            DataRow(
                cells: [
                  DataCell(Text("Probability",style: mbBrownBold(),)),
                  DataCell(Text("${eqDataList.first.detection_probabilty}",style: mbTextStyle(),)),
                  //DataCell(Text("60",style: mbTextStyle(),)),
                ]
            ),
            DataRow(
                cells: [
                  DataCell(Text("Area",style: mbBrownBold(),)),
                  DataCell(Text("${eqDataList.first.area}",style: mbTextStyle(),)),
                  //DataCell(Text("60",style: mbTextStyle(),)),
                ]
            ),
            DataRow(
                cells: [
                  DataCell(Text("Location",style: mbBrownBold(),)),
                  DataCell(Text("(${eqlatitude.toStringAsFixed(2)} , ${eqlongitude.toStringAsFixed(2)})",style: mbTextStyle(),)),
                  //DataCell(Text("60",style: mbTextStyle(),)),
                ]
            ),
            DataRow(
                cells: [
                  DataCell(Text("Stn. Code",style: mbBrownBold(),)),
                  DataCell(Text("${eqDataList.first.station}",style: mbTextStyle(),)),
                  //DataCell(Text("60",style: mbTextStyle(),)),
                ]
            ),
            DataRow(
                cells: [
                  DataCell(Text("Time",style: mbBrownBold(),)),
                  DataCell(Text("${eqDataList.first.date_time}",style: mbTextStyle(),)),
                  //DataCell(Text("60",style: mbTextStyle(),)),
                ]
            ),
          ],
        ),
         //     GridView.count(
    //       padding: EdgeInsets.only(top: 20.0,bottom: 50.0),
    //       shrinkWrap: true,
    //       crossAxisCount: 2,
    //       children: <Widget>[
    //         Card(
    //           elevation: 2.0,
    //           shadowColor: Colors.brown,
    //           shape: RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(10.0)
    //           ),
    //           child: GridTile(
    //             header: Text("Major EQ",textAlign: TextAlign.center,style: mbBrownBold(),),
    //             child: progressView("Major EQ", double.parse(eqDataList.first.detection_probabilty)*100),
    //           ),
    //         ),
    //         Card(
    //           elevation: 2.0,
    //           shadowColor: Colors.brown,
    //           shape: RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(10.0)
    //           ),
    //           child: GridTile(
    //             header: Text("Minor EQ",textAlign: TextAlign.center,style: mbBrownBold(),),
    //             child: progressView("Minor EQ", double.parse(eqDataList.first.magnitude)*10),
    //           ),
    //         ),
    //       ],
    //     ),
    
        // (userLocation != null) ? Text("Lat: ${userLocation.latitude}, Long: ${userLocation.longitude}")
        //     : Text("You didn't give permission to access your location")
      ],
    ),
  );
}