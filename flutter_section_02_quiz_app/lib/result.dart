import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  const Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'Goed gedaan!';
    if (resultScore <= 6) {
      resultText = 'Kon beter';
    } else if (resultScore <= 10) {
      resultText = 'Ik ben trots op je';
    }
    print(resultScore);
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: const Text('Herstart Quiz!'),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
