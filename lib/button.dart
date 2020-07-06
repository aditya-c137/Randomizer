import 'package:flutter/material.dart';

class ButtonRandomize extends StatelessWidget {
  final Function randomizerHandler;

  ButtonRandomize(this.randomizerHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      child: RaisedButton(
          padding: EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: Text('Randomize'),
          color: Colors.lightGreen,
          textColor: Colors.white,
          onPressed: randomizerHandler,
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          )),
    );
  }
}
