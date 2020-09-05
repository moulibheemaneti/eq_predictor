import 'dart:math';
import 'package:flutter/material.dart';

import 'package:eq_predictor/constants/mbWidgets.dart';

class CircleGraph extends CustomPainter{

  Color defaultCircleColor;
  Color percentageCompletedColor;
  double percentageCompleted;
  double circleWidth;

  CircleGraph({
    this.defaultCircleColor,
    this.percentageCompletedColor,
    this.percentageCompleted,
    this.circleWidth,
  });

  getPaint(Color color){
    return Paint()
      ..color = color
      ..strokeCap = StrokeCap.butt
      ..style = PaintingStyle.stroke
      ..strokeWidth = circleWidth;
  }
  @override
  void paint(Canvas canvas, Size size) {
    Paint defaultCirclePaint = getPaint(defaultCircleColor);
    Paint progressCirclePaint = getPaint(percentageCompletedColor);

    Offset center = Offset(size.width/2, size.height/2);
    double radius = min(size.width/2, size.height/2)/2;

    canvas.drawCircle(center, radius, defaultCirclePaint);


    double arcAngle = 2 * pi * (percentageCompleted/100);
    canvas.drawArc(
        Rect.fromCircle(center: center,radius: radius),
        -pi/2, arcAngle, false, progressCirclePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

getProgressText(String string,double percentageCompleted){
  return Text(
    percentageCompleted.toString(),
    textAlign: TextAlign.center,
    style: mbBrownBold(),
  );
}

progressView(String string, double percentageCompleted){
  return CustomPaint(
    child: Center(
      child: getProgressText(string,percentageCompleted),
      ),
    foregroundPainter: CircleGraph(
      defaultCircleColor: Colors.grey[400],
      percentageCompletedColor: Colors.brown[700],
      percentageCompleted: percentageCompleted,
      circleWidth: 20
    ),
  );
}