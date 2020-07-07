import 'package:flutter/material.dart';
import 'dart:math';

import 'taskWidget.dart';
import './button.dart';
import './time.dart';
import './tasks.dart';

void main() {
  runApp(Randomizer());
}

class Randomizer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RandomizerState();
  }
}

class _RandomizerState extends State<Randomizer> {
  var tasks = new TaskObj('empty');

  addTask() {
    tasks.getTasks().remove('empty');
    tasks.getTasks().join(', ');
    tasks.addTask('SIH2020');
    tasks.addTask('Coursera');
    tasks.addTask('Nidarshan');
    tasks.addTask('Spyder');
    tasks.addTask('Robocon');
    tasks.addTask('ArduinoOS');
  }

  var timeToStudy = [
    '1 hr',
    '30 min',
    '45 min',
    '2 hrs',
    '1hr 30min',
  ];

  var _taskIndex = 0;
  var _timeIndex = 0;
  var _random = new Random();

  int _next(int min, int max) => min + _random.nextInt(max - min);
  void _randomEvent() {
    setState(() {
      _taskIndex = _next(0, tasks.getSize());
      _timeIndex = _next(0, 5);
    });
  }

  @override
  Widget build(BuildContext context) {
    print(tasks.getTasks());
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.lightGreen,
        accentColor: Colors.greenAccent,
        brightness: Brightness.dark,
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontSize: 40,
          ),
          bodyText2: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Randomizer'),
        ),
        body: Column(
          children: <Widget>[
            Task(
              tasks.getTasks().elementAt(_taskIndex),
            ),
            TimeToStudy(timeToStudy[_timeIndex]),
            ButtonRandomize(_randomEvent),
            Container(
              width: 150.0,
              child: RaisedButton(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Text('Edit Tasks'),
                color: Colors.lightGreen,
                textColor: Colors.white,
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                onPressed: addTask,
              ),
            )
          ],
        ),
      ),
    );
  }
}
