import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final String containerText;
  final Function updateText;
  const TextControl({@required this.updateText, @required this.containerText});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.blue,
      textColor: Colors.white,
      child: Text('Click me!'),
      onPressed: updateText,
    );
  }
}
