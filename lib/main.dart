import 'package:flutter/material.dart';
import 'dart:math';

import 'taskWidget.dart';
import 'randomizeButton.dart';
import './time.dart';
import './tasks.dart';
import './editTasksButton.dart';
import './times.dart';

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
  //method block
  var _taskIndex = 0;
  var _timeIndex = 0;
  var _random = new Random();

  int _next(int min, int max) => min + _random.nextInt(max - min);
  void _randomEvent() {
    setState(() {
      _taskIndex = _next(0, tasks.getSize());
      _timeIndex = _next(0, times.getSize());
    });
  }

  var tasks = new TaskObj('empty');

  _addTask() {
    tasks.getTasks().remove('empty');
    tasks.getTasks().join(', ');
    tasks.addTask('SIH2020');
    tasks.addTask('Coursera');
    tasks.addTask('Nidarshan');
    tasks.addTask('Spyder');
    tasks.addTask('Robocon');
    tasks.addTask('ArduinoOS');
  }

  var times = new Times('empty');

  _addTime() {
    times.getTimes().remove('empty');
    times.getTimes().join(', ');
    times.getTimes().add('1 hr');
    times.getTimes().add('30 min');
    times.getTimes().add('45 min');
    times.getTimes().add('2 hrs');
    times.getTimes().add('1 hr 30 min');
  }
  //method block end

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
              tasks.getTasks()[_taskIndex],
            ),
            TimeToStudy(times.getTimes()[_timeIndex]),
            ButtonRandomize(_randomEvent),
            ButtonEdit(() => {
                  _addTask(),
                  _addTime(),
                }),
          ],
        ),
      ),
    );
  }
}
