import 'package:eq_predictor/constants/mbWidgets.dart';
import 'package:eq_predictor/quiz/mcq_quiz.dart';
import 'package:eq_predictor/quiz/true_false_quiz.dart';
import 'package:eq_predictor/widgets/mbDrawer.dart';
import 'package:flutter/material.dart';

class EPQuizMenu extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new _EPQuizMenuState();
}

class _EPQuizMenuState extends State<EPQuizMenu>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: mbAppBar("EQ Quiz Menu"),
      drawer: MBDrawer(),
      body: Padding(
        padding: EdgeInsets.only(top: 150,),
        child: ListView(
          padding: EdgeInsets.only(left: 10, right:  10),
          children: <Widget>[
            Card(
              color: Colors.brown[100],
              elevation: 5,
              child: ListTile(
                leading: Hero(tag: "quiz_tf", child: Image.asset('assets/images/quiz_tf.png')),
                title: Text("True-False Quiz",style: mbHeadingTextStyle(),),
                subtitle: Text(
                  "You have to choose either true or false option to answer the questions",
                  style: TextStyle(
                      height: 2.0
                  ),
                ),
                contentPadding: EdgeInsets.all(10),
                onTap: () => {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => TrueFalseQuiz()))
                },
              ),
            ),
            SizedBox(height: 20,),
            Text(
              "Or",
              textAlign: TextAlign.center,
              style: mbHeadingTextStyle(),
            ),
            SizedBox(height: 20,),
            Card(
              color: Colors.brown[100],
              elevation: 5,
              child: ListTile(
                leading: Hero(tag: "quiz_mcq", child: Image.asset('assets/images/quiz_mcq.png')),
                title: Text("MCQ Quiz",style: mbHeadingTextStyle(),),
                subtitle: Text(
                  "You have to choose the correct answer out of 4 given options",
                  style: TextStyle(
                      height: 2.0
                  ),
                ),
                contentPadding: EdgeInsets.all(10),
                onTap: () => {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MCQQuiz()))
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}