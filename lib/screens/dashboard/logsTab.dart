import 'package:eq_predictor/constants/mbWidgets.dart';
import 'package:flutter/material.dart';

List logs=[
  "Place 1",
  "Place 2",
  "Place 3",
  "Place 4",
  "Place 5",
  "Place 6",
  "Place 7",
  "Place 8",
  "Place 9",
  "Place 10",
];


logTab(BuildContext context){
  return Padding(
    padding: EdgeInsets.only(top: 20,left: 20.0, right: 20.0,bottom: 20.0),
    child: ListView.builder(
      itemBuilder: (context, index){
        return Card(
          child: ListTile(
            onTap: ()=>{
              showPopUp(context,logs[index])
            },
            title: Text(logs[index],style: TextStyle(fontSize: 18)),
          ),
        );
      },
      itemCount: logs.length,
    ),
  );
}

// Reports Section


showPopUp(BuildContext context, String placeName) {
  AlertDialog popUp = AlertDialog(
    elevation: 5.0,
    backgroundColor: Colors.brown[500],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    title: Text("EQ Info",textAlign: TextAlign.center),
    titleTextStyle: mbDialogHeading(),
    contentPadding: EdgeInsets.all(20.0),
    content: Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)
      ),
      color: Colors.white,
      shadowColor: Colors.brown[900],
      child: Padding(
        padding: EdgeInsets.all(30.0),
        child: Text.rich(
          TextSpan(
              children: [
                TextSpan(
                  text: "This earthquake was originated at ",
                  style: mbTextStyle(),
                ),
                TextSpan(
                  text: placeName,
                  style: mbBoldTextStyle(),
                ),
                TextSpan(
                  text: ". With magnitude of  ",
                  style: mbTextStyle(),
                ),
                TextSpan(
                  text: "20.0 ",
                  style: mbBoldTextStyle(),
                ),
              ]
          ),
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