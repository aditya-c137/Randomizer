import 'package:flutter/material.dart';

class TimeToStudy extends StatelessWidget {
  final String timeText;

  TimeToStudy(this.timeText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: Text(
        timeText,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
