import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 13) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 17) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 21) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade600),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text(
              'Restart Quiz!',
              style: TextStyle(fontSize: 18),
            ),
            style: TextButton.styleFrom(foregroundColor: Colors.blue.shade800),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
