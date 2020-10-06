import 'package:flutter/material.dart';

import 'package:eq_predictor/constants/mbWidgets.dart';
import 'package:eq_predictor/constants/questions_list.dart';
import 'package:eq_predictor/quiz/quiz_menu.dart';

class MCQQuiz extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _MCQQuizState();
}

class _MCQQuizState extends State<MCQQuiz>{

  var counter = 0;
  int score = 0;

  @override
  void initState() {
    super.initState();
    counter = 0;
    score = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: mbInvertedAppBar(context,"MCQ Quiz"),
      body: ListView(
        children: <Widget>[
          Hero(
            tag: "quiz_mcq",
            child: Image.asset("assets/images/quiz_mcq.png",height: 300,width: 300,fit: BoxFit.fill,),
          ),

          SizedBox(height: 10,),

          Padding(
            padding: EdgeInsets.all(10),
            child: Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.brown),
                ),
                child: Text(
                  mcqQuestionsList[counter].questionText,
                  textAlign: TextAlign.center,
                  style: mbQuestionStyle(),
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.all(5),
            child: Card(
              elevation: 0,
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.brown),
                ),
                child: Text(
                  "Score : $score",
                  textAlign: TextAlign.center,
                  style: mbTextStyle(),
                ),
              ),
            ),
          ),

          SizedBox(height: 20,),

          Builder(
            builder: (BuildContext ctx){
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  //option A
                  ButtonTheme(
                    splashColor: Colors.brown[300],
                    padding: EdgeInsets.fromLTRB(35.0, 12.0, 35.0, 12.0),
                    minWidth: 120,
                    buttonColor: Colors.brown[400],
                    child: new RaisedButton(
                      elevation: 5.0,
                      textColor: Colors.white,
                      child: new Text("Option A",
                        style: TextStyle(
                          fontSize: 20.0,
                          letterSpacing: 1.0,
                        ),
                      ),
                      onPressed: (){
                        if(counter != (mcqQuestionsList.length - 1)){
                          setState(() {
                            if(mcqQuestionsList[counter].correctOption == "Option A"){
                              score += 1;
                              final snackBar = SnackBar(
                                duration: Duration(milliseconds: 500),
                                content: Text(
                                  "Yes",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green[700],
                                    fontSize: 20,
                                  ),
                                ),
                                backgroundColor: Colors.green[300],
                              );
                              Scaffold.of(ctx).showSnackBar(snackBar);
                            }
                            else{
                              score += 0;
                              final snackBar = SnackBar(
                                duration: Duration(milliseconds: 500),
                                content: Text(
                                  "No",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red[700],
                                    fontSize: 20,
                                  ),
                                ),
                                backgroundColor: Colors.red[300],
                              );
                              Scaffold.of(ctx).showSnackBar(snackBar);
                            }
                            counter += 1;
                          });
                        }
                        else{
                          Navigator.push(context, MaterialPageRoute(builder: (context) => EPQuizMenu()));
                          mbBottomModal(context, score, "quiz_mcq.png");
                        }
                      },
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),

                      color: Colors.brown,
                    ),
                  ),

                  //option B
                  ButtonTheme(
                    splashColor: Colors.brown[300],
                    padding: EdgeInsets.fromLTRB(35.0, 12.0, 35.0, 12.0),
                    minWidth: 120,
                    buttonColor: Colors.brown[400],
                    child: new RaisedButton(
                      elevation: 5.0,
                      textColor: Colors.white,
                      child: new Text("Option B",
                        style: TextStyle(
                          fontSize: 20.0,
                          letterSpacing: 1.0,
                        ),
                      ),
                      onPressed: (){
                        if(counter != (mcqQuestionsList.length - 1)){
                          setState(() {
                            if(mcqQuestionsList[counter].correctOption == "Option B"){
                              score += 1;
                              final snackBar = SnackBar(
                                duration: Duration(milliseconds: 500),
                                content: Text(
                                  "Yes",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green[700],
                                    fontSize: 20,
                                  ),
                                ),
                                backgroundColor: Colors.green[300],
                              );
                              Scaffold.of(ctx).showSnackBar(snackBar);
                            }
                            else{
                              score += 0;
                              final snackBar = SnackBar(
                                duration: Duration(milliseconds: 500),
                                content: Text(
                                  "No",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red[700],
                                    fontSize: 20,
                                  ),
                                ),
                                backgroundColor: Colors.red[300],
                              );
                              Scaffold.of(ctx).showSnackBar(snackBar);
                            }
                            counter += 1;
                          });
                        }
                        else{
                          Navigator.push(context, MaterialPageRoute(builder: (context) => EPQuizMenu()));
                          mbBottomModal(context, score, "quiz_mcq.png");
                        }
                      },
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),

                      color: Colors.brown,
                    ),
                  ),
                ],
              );
            },
          ),
          SizedBox(height: 10,),
          Builder(
            builder: (BuildContext ctx){
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  //option C
                  ButtonTheme(
                    splashColor: Colors.brown[300],
                    padding: EdgeInsets.fromLTRB(35.0, 12.0, 35.0, 12.0),
                    minWidth: 120,
                    buttonColor: Colors.brown[400],
                    child: new RaisedButton(
                      elevation: 5.0,
                      textColor: Colors.white,
                      child: new Text("Option C",
                        style: TextStyle(
                          fontSize: 20.0,
                          letterSpacing: 1.0,
                        ),
                      ),
                      onPressed: (){
                        if(counter != (mcqQuestionsList.length - 1)){
                          setState(() {
                            if(mcqQuestionsList[counter].correctOption == "Option C"){
                              score += 1;
                              final snackBar = SnackBar(
                                duration: Duration(milliseconds: 500),
                                content: Text(
                                  "Yes",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green[700],
                                    fontSize: 20,
                                  ),
                                ),
                                backgroundColor: Colors.green[300],
                              );
                              Scaffold.of(ctx).showSnackBar(snackBar);
                            }
                            else{
                              score += 0;
                              final snackBar = SnackBar(
                                duration: Duration(milliseconds: 500),
                                content: Text(
                                  "No",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red[700],
                                    fontSize: 20,
                                  ),
                                ),
                                backgroundColor: Colors.red[300],
                              );
                              Scaffold.of(ctx).showSnackBar(snackBar);
                            }
                            counter += 1;
                          });
                        }
                        else{
                          Navigator.push(context, MaterialPageRoute(builder: (context) => EPQuizMenu()));
                          mbBottomModal(context, score, "quiz_mcq.png");
                        }
                      },
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),

                      color: Colors.brown,
                    ),
                  ),

                  //option D
                  ButtonTheme(
                    splashColor: Colors.brown[300],
                    padding: EdgeInsets.fromLTRB(35.0, 12.0, 35.0, 12.0),
                    minWidth: 120,
                    buttonColor: Colors.brown[400],
                    child: new RaisedButton(
                      elevation: 5.0,
                      textColor: Colors.white,
                      child: new Text("Option D",
                        style: TextStyle(
                          fontSize: 20.0,
                          letterSpacing: 1.0,
                        ),
                      ),
                      onPressed: (){
                        if(counter != (mcqQuestionsList.length - 1)){
                          setState(() {
                            if(mcqQuestionsList[counter].correctOption == "Option D"){
                              score += 1;
                              final snackBar = SnackBar(
                                duration: Duration(milliseconds: 500),
                                content: Text(
                                  "Yes",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green[700],
                                    fontSize: 20,
                                  ),
                                ),
                                backgroundColor: Colors.green[300],
                              );
                              Scaffold.of(ctx).showSnackBar(snackBar);
                            }
                            else{
                              score += 0;
                              final snackBar = SnackBar(
                                duration: Duration(milliseconds: 500),
                                content: Text(
                                  "No",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red[700],
                                    fontSize: 20,
                                  ),
                                ),
                                backgroundColor: Colors.red[300],
                              );
                              Scaffold.of(ctx).showSnackBar(snackBar);
                            }
                            counter += 1;
                          });
                        }
                        else{
                          Navigator.push(context, MaterialPageRoute(builder: (context) => EPQuizMenu()));
                          mbBottomModal(context, score, "quiz_mcq.png");
                        }
                      },
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),

                      color: Colors.brown,
                    ),
                  ),

                ],
              );
            },
          ),
        ],
      ),
    );
  }

  Widget mbInvertedAppBar(BuildContext context, String title){
    return PreferredSize(
      child: Padding(
        padding: EdgeInsets.only(top: 0.0),
        child: AppBar(
          leading: InkWell(
            child: Icon(Icons.close, size: 40, color: Colors.white,),
            onTap: () => {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => EPQuizMenu()))
            },
          ),
          elevation: 0,
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          iconTheme: new IconThemeData(
            color: Colors.brown,
          ),
          centerTitle: true,
          backgroundColor: Colors.brown,
        ),
      ),
      preferredSize: Size.fromHeight(80.0),
    );
  }
}