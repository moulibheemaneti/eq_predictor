import 'package:eq_predictor/models/databaseModel.dart';
import 'package:flutter/material.dart';

import 'package:eq_predictor/constants/mbWidgets.dart';

class LogTab extends StatefulWidget {

  final List<EQData> eqDataList;
  //LogTab(Key key, this.eqDataList) : super(key: key);
  LogTab(this.eqDataList);
  @override
  State<StatefulWidget> createState() => new _LogTabState();
}

class _LogTabState extends State<LogTab> {
 
  
  Future<void> _pullDown() async {
    setState(() {
      print("refreshed");
    });
  }

  @override
  Widget build(BuildContext context) {
    //print("build $eqDataList");
    return RefreshIndicator(
      onRefresh: _pullDown,
      child: Padding(
        padding:EdgeInsets.only(top: 20, left: 20.0, right: 20.0, bottom: 20.0),
        child: widget.eqDataList != null ? ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () => {showPopUp(context, widget.eqDataList[index])},
                title: Text(widget.eqDataList[index].area,
                    style: TextStyle(fontSize: 18)),
              ),
            );
          },
          itemCount: widget.eqDataList.length,
        ): Center(
          child: Text("No data to display", style: mbHeadingTextStyle(),),
        )
      
        ),
    );
  }
}


// Reports Section

showPopUp(BuildContext context, EQData eqData) {
  AlertDialog popUp = AlertDialog(
    elevation: 5.0,
    backgroundColor: Colors.brown[500],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    title: Text("EQ Info", textAlign: TextAlign.center),
    titleTextStyle: mbDialogHeading(),
    contentPadding: EdgeInsets.all(20.0),
    content: Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      color: Colors.white,
      shadowColor: Colors.brown[900],
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: Text.rich(
          TextSpan(children: [
            TextSpan(
              text: "This earthquake was originated at ",
              style: mbTextStyle(),
            ),
            TextSpan(
              text: "(${eqData.latitude}, ${eqData.longitude})",
              style: mbBoldTextStyle(),
            ),
            TextSpan(
              text: ". With magnitude of  ",
              style: mbTextStyle(),
            ),
            TextSpan(
              text: "${eqData.magnitude}",
              style: mbBoldTextStyle(),
            ),
          ]),
        ),
      ),
    ),
  );

  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return popUp;
    },
  );
}
