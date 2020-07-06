import 'package:flutter/material.dart';
import 'dart:math';

import './task.dart';
import './button.dart';
import './time.dart';

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
  var _tasks = [
    'SIH2020',
    'Coursera',
    'Nidarshan',
    'Spyder',
    'Robocon',
    'ArduinoOS',
  ];

  var _timeToStudy = [
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
      _taskIndex = _next(0, 6);
      _timeIndex = _next(0, 5);
    });
  }

  @override
  Widget build(BuildContext context) {
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
              _tasks[_taskIndex],
            ),
            TimeToStudy(_timeToStudy[_timeIndex]),
            ButtonRandomize(_randomEvent),
          ],
        ),
      ),
    );
  }
}
