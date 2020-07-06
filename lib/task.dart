import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  final String taskText;

  Task(this.taskText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.only(top: 210),
      child: Text(
        taskText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
