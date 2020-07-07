import 'package:flutter/material.dart';

class ButtonEdit extends StatelessWidget {
  final Function randomizerHandler;

  ButtonEdit(this.randomizerHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        onPressed: randomizerHandler,
      ),
    );
  }
}
