import 'package:flutter/material.dart';

//container with text. stateless.
class TextPlacement extends StatelessWidget {
  final String containerText;
  TextPlacement({@required this.containerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(8),
      child: Text(
        containerText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
