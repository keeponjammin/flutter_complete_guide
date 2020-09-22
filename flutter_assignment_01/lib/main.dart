import 'package:flutter/material.dart';
import './textControl.dart';
import './textPlacement.dart';
//1. flutter app DONE
//2. app met een appbar, text erin, text in textveld eronder
//3. knop eronder, als klik op knop dan veranderd de tekst.
//NOTE: splot om 3 widget,  app, textcontrol en text

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _startText = 'Start Text';
  final _endText = 'End Text';

  void _updateText() {
    setState(() {
      _startText = _endText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Assignment 01',
          ),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              TextPlacement(containerText: _startText),
              TextControl(
                updateText: _updateText,
                containerText: _endText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
