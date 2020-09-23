import 'package:flutter/material.dart';
import './text_Control.dart';
import './text_placement.dart';

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
